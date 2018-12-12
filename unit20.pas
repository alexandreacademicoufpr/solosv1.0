unit Unit20;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmPeneiramentoNBR7181_MassaTotal_AmostraSeca }

  TfrmPeneiramentoNBR7181_MassaTotal_AmostraSeca = class(TForm)
    Button1: TButton;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
  private
    { private declarations }
    mt,mg,ms,h:real;
  public
    { public declarations }
  end;

var
  frmPeneiramentoNBR7181_MassaTotal_AmostraSeca: TfrmPeneiramentoNBR7181_MassaTotal_AmostraSeca;

implementation

{$R *.lfm}

{ TfrmPeneiramentoNBR7181_MassaTotal_AmostraSeca }

procedure TfrmPeneiramentoNBR7181_MassaTotal_AmostraSeca.Button1Click(
  Sender: TObject);
begin
  frmPeneiramentoNBR7181_MassaTotal_AmostraSeca.Close;
end;

procedure TfrmPeneiramentoNBR7181_MassaTotal_AmostraSeca.Edit5Change(
  Sender: TObject);
begin

  try
  mt:=StrToFloat(Edit5.Text);
  mg:=strtofloat(Edit6.Text);
  h:=strtofloat(edit7.Text);

  ms:=(((mt-mg)/(100+h))*100)+mg;
  Edit4.Text:=floattostr(ms);
  except
    Edit4.Text:='';
  end;



end;

end.

