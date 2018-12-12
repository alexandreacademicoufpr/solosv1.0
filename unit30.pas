unit Unit30;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfrmLimite_plasticidade }

  TfrmLimite_plasticidade = class(TForm)
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
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
  private
    { private declarations }
    psolo_seco,pagua,umidade,indice_plasticidade,limite_liquidez:real;
  public
    { public declarations }
  end;

var
  frmLimite_plasticidade: TfrmLimite_plasticidade;

implementation
uses
  unit32;


{$R *.lfm}

{ TfrmLimite_plasticidade }

procedure TfrmLimite_plasticidade.Edit3Change(Sender: TObject);
begin
  try
     pagua:=strtofloat(Edit1.Text);
     psolo_seco:=strtofloat(Edit2.text);
     umidade:=(pagua/psolo_seco)*100;
     Edit3.text:= FormatFloat('##0,00.0000',umidade);
  except
    edit3.text:='';
  end;

  try
   limite_liquidez:=strtofloat(Edit5.text);
   indice_plasticidade:=limite_liquidez-umidade;
   Edit4.Text:=formatfloat('##0,00.0000',indice_plasticidade);

   frmIndice_consistencia.Edit4.Text:=Edit4.Text;
  finally
    Abort;
    edit4.text:='';
    frmIndice_consistencia.Edit4.Text:='';
  end;

end;

procedure TfrmLimite_plasticidade.Button1Click(Sender: TObject);
begin
  frmLimite_plasticidade.Close;
end;

procedure TfrmLimite_plasticidade.Image2Click(Sender: TObject);
begin

end;

procedure TfrmLimite_plasticidade.Label8Click(Sender: TObject);
begin

end;

end.

