unit Unit14;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmPorosidade }

  TfrmPorosidade = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { private declarations }
    vv,vt,pp,pa:real;
  public
    { public declarations }
  end;

var
  frmPorosidade: TfrmPorosidade;

implementation
uses
  unit17;

{$R *.lfm}

{ TfrmPorosidade }

procedure TfrmPorosidade.ComboBox2Change(Sender: TObject);
begin
  try
  ComboBox3.Text:=ComboBox2.Text;
  vv:=strtofloat(Edit2.Text);
  vt:=strtofloat(edit3.text);

  pp:=(vv/vt)*100;
  pa:=vv/vt;

  Edit4.Text:=FloatToStr(pp);
  Edit1.Text:=floattostr(pa);

  frmTabelaReumo.TabelaResumo.Cells[1,9]:=Edit4.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,9]:=ComboBox4.Text;

  except
    Edit4.Text:='';
    Edit1.Text:='';

    frmTabelaReumo.TabelaResumo.Cells[1,9]:='';
  frmTabelaReumo.TabelaResumo.Cells[2,9]:='';
  end;
end;

procedure TfrmPorosidade.Button1Click(Sender: TObject);
begin
  frmPorosidade.Close;
end;

end.

