unit Unit15;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmGrau_Saturacao }

  TfrmGrau_Saturacao = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { private declarations }
    s,va,vv:real;
  public
    { public declarations }
  end;

var
  frmGrau_Saturacao: TfrmGrau_Saturacao;

implementation
uses
  unit17;

{$R *.lfm}

{ TfrmGrau_Saturacao }

procedure TfrmGrau_Saturacao.ComboBox2Change(Sender: TObject);
begin
  try
     ComboBox3.Text:=ComboBox2.Text;
     vv:=strtofloat(edit2.text);
     va:=strtofloat(edit3.text);
     s:=(va/vv)*100;

     edit1.text:=floattostr(s);

     frmTabelaReumo.TabelaResumo.Cells[1,10]:=Edit1.Text;
     frmTabelaReumo.TabelaResumo.Cells[2,10]:=ComboBox1.Text;

  except
    Edit1.Text:='';

    frmTabelaReumo.TabelaResumo.Cells[1,10]:='';
  frmTabelaReumo.TabelaResumo.Cells[2,10]:='';
  end;
end;

procedure TfrmGrau_Saturacao.Button1Click(Sender: TObject);
begin
  frmGrau_Saturacao.Close;
end;

end.

