unit Unit11;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmDensidade_Relativa_dasParticulas }

  TfrmDensidade_Relativa_dasParticulas = class(TForm)
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
    procedure Edit2Change(Sender: TObject);
  private
    { private declarations }
    yg,sigma:real;
  public
    { public declarations }
  end;

var
  frmDensidade_Relativa_dasParticulas: TfrmDensidade_Relativa_dasParticulas;

implementation
uses
  unit17;

{$R *.lfm}

{ TfrmDensidade_Relativa_dasParticulas }

procedure TfrmDensidade_Relativa_dasParticulas.Edit2Change(Sender: TObject);
begin
  try
  yg:=strtofloat(edit2.text);
  sigma:=yg;
  edit1.text:=floattostr(sigma);

  frmTabelaReumo.TabelaResumo.Cells[1,7]:=Edit1.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,7]:=ComboBox1.Text;
  except
    edit1.text:='';

    frmTabelaReumo.TabelaResumo.Cells[1,7]:='';
  frmTabelaReumo.TabelaResumo.Cells[2,7]:='';
  end;




end;

procedure TfrmDensidade_Relativa_dasParticulas.Button1Click(Sender: TObject);
begin
  frmDensidade_Relativa_dasParticulas.Close;
end;

end.

