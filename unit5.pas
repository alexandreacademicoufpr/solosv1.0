unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmUmidade }

  TfrmUmidade = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { private declarations }
    umidade,pan, pas:real;

  public
    { public declarations }
  end;

var
  frmUmidade: TfrmUmidade;

implementation
  uses
    unit17;

{$R *.lfm}

{ TfrmUmidade }

procedure TfrmUmidade.Button1Click(Sender: TObject);
begin
  frmUmidade.close;
end;

procedure TfrmUmidade.ComboBox2Change(Sender: TObject);
begin
  ComboBox3.Text:=ComboBox2.Text;
  comboBox4.Text:=ComboBox2.Text;
  comboBox5.Text:=ComboBox2.Text;
end;

procedure TfrmUmidade.Edit2Change(Sender: TObject);
begin

  try
  pan:=strtofloat(edit2.text);
  pas:=strtofloat(edit3.text);
  umidade:=(pan/pas)*100;
  Edit1.Text:=floattostr(umidade);

  edit4.text:=edit2.text;
  edit5.text:= edit3.text;

  frmTabelaReumo.TabelaResumo.Cells[1,1]:=Edit1.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,1]:=ComboBox1.Text;

  Except
    edit1.text:='';
    edit4.text:='';
    edit5.text:='';

  frmTabelaReumo.TabelaResumo.Cells[1,1]:='';
  frmTabelaReumo.TabelaResumo.Cells[2,1]:='';
  end;


end;

end.

