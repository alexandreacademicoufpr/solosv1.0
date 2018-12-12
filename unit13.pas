unit Unit13;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmIndice_vazios }

  TfrmIndice_vazios = class(TForm)
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
    ivp,iva,vv,vps:real;
  public
    { public declarations }
  end;

var
  frmIndice_vazios: TfrmIndice_vazios;

implementation
uses
  unit17;

{$R *.lfm}

{ TfrmIndice_vazios }

procedure TfrmIndice_vazios.ComboBox2Change(Sender: TObject);
begin
  try
  ComboBox3.Text:=ComboBox2.Text;
  vv:=strtofloat(Edit2.Text);
  vps:=strtofloat(edit3.text);

  ivp:=(vv/vps)*100;
  iva:=vv/vps;

  Edit4.Text:=FloatToStr(ivp);
  Edit1.Text:=floattostr(iva);

  frmTabelaReumo.TabelaResumo.Cells[1,8]:=Edit4.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,8]:=ComboBox4.Text;

  except
    Edit4.Text:='';
    Edit1.Text:='';

    frmTabelaReumo.TabelaResumo.Cells[1,8]:='';
  frmTabelaReumo.TabelaResumo.Cells[2,8]:='';
  end;


end;

procedure TfrmIndice_vazios.Button1Click(Sender: TObject);
begin
  frmIndice_vazios.Close;
end;

end.

