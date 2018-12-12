unit Unit29;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,math,
  StdCtrls, Grids;

type

  { TfrmLimite_liquidez }

  TfrmLimite_liquidez = class(TForm)
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
    procedure Edit2Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    limite_liquidez,umidade,numero_golpes:real;
  end;

var
  frmLimite_liquidez: TfrmLimite_liquidez;

implementation
uses
  unit30,unit32;

{$R *.lfm}

{ TfrmLimite_liquidez }

procedure TfrmLimite_liquidez.Button1Click(Sender: TObject);
begin
  frmLimite_liquidez.Close;
end;

procedure TfrmLimite_liquidez.Edit2Change(Sender: TObject);
begin
  try
  umidade:=strtofloat(Edit2.Text);
  numero_golpes:=StrToFloat(Edit3.text);
  limite_liquidez:=umidade/(1.419-0.3*log10(numero_golpes));
  Edit1.Text:=formatfloat('##0,00.0000',limite_liquidez);

  frmLimite_plasticidade.Edit5.Text:=Edit1.Text;

  frmIndice_consistencia.Edit2.Text:=Edit1.Text;
  except
    Edit1.Text:='';

    frmLimite_plasticidade.Edit5.Text:='';

    frmIndice_consistencia.Edit2.Text:='';
  end;


end;

procedure TfrmLimite_liquidez.Image2Click(Sender: TObject);
begin

end;

end.

