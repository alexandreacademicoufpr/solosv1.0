unit Unit33;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmGrau_Contracao }

  TfrmGrau_Contracao = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { private declarations }
    grau_contracao,volume_inicial,volume_final:real;
  public
    { public declarations }
  end;

var
  frmGrau_Contracao: TfrmGrau_Contracao;

implementation

{$R *.lfm}

{ TfrmGrau_Contracao }

procedure TfrmGrau_Contracao.Button1Click(Sender: TObject);
begin
  frmGrau_Contracao.close;
end;

procedure TfrmGrau_Contracao.ComboBox2Change(Sender: TObject);
begin

end;

procedure TfrmGrau_Contracao.ComboBox3Change(Sender: TObject);
begin
  ComboBox2.Text:=ComboBox3.Text;
end;

procedure TfrmGrau_Contracao.Edit2Change(Sender: TObject);
begin
  try
     volume_inicial:=strtofloat(Edit2.Text);
     volume_final:=strtofloat(edit3.text);
     grau_contracao:=((volume_inicial-volume_final)/volume_inicial)*100;
     edit1.text:=FormatFloat(',#00.0000',grau_contracao);
  except
    Edit1.Text:='';
  end;
end;

end.

