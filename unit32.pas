unit Unit32;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Grids;

type

  { TfrmIndice_consistencia }

  TfrmIndice_consistencia = class(TForm)
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
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { private declarations }
    indice_plasticidade,indice_consistencia,limite_liquidez,umidade:real;
  public
    { public declarations }
  end;

var
  frmIndice_consistencia: TfrmIndice_consistencia;

implementation


{$R *.lfm}

{ TfrmIndice_consistencia }

procedure TfrmIndice_consistencia.Button1Click(Sender: TObject);
begin
  frmIndice_consistencia.Close;
end;

procedure TfrmIndice_consistencia.Edit2Change(Sender: TObject);
begin

end;

procedure TfrmIndice_consistencia.Edit3Change(Sender: TObject);
begin
  try
   limite_liquidez:=strtofloat(Edit2.Text);
   umidade:=strtofloat(Edit3.Text);
   indice_plasticidade:=StrToFloat(Edit4.Text);

   indice_consistencia:=(limite_liquidez-umidade)/(indice_plasticidade);
   Edit1.Text:=FormatFloat(',#00.0000',indice_consistencia);
  except
    Edit1.Text:='';
  end;
end;

procedure TfrmIndice_consistencia.Image2Click(Sender: TObject);
begin

end;

end.

