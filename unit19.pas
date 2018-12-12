unit Unit19;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfrmPeneiramentoNBR7181 }

  TfrmPeneiramentoNBR7181 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmPeneiramentoNBR7181: TfrmPeneiramentoNBR7181;

implementation
uses
  unit1,Unit20,unit21,unit24,unit25;

{$R *.lfm}

{ TfrmPeneiramentoNBR7181 }

procedure TfrmPeneiramentoNBR7181.Button1Click(Sender: TObject);
begin
  frmPeneiramentoNBR7181.Close;
end;

procedure TfrmPeneiramentoNBR7181.Image2Click(Sender: TObject);
begin

end;

procedure TfrmPeneiramentoNBR7181.Label1Click(Sender: TObject);
begin
  frmPeneiramentoNBR7181_MassaTotal_AmostraSeca.Show;
  frmPeneiramentoNBR7181_MassaTotal_AmostraSeca.Parent:=Form1;
end;

procedure TfrmPeneiramentoNBR7181.Label2Click(Sender: TObject);
begin
  frmNBR7181_PENEIRAS_50_2.Show;
  frmNBR7181_PENEIRAS_50_2.Parent:=Form1;
end;

procedure TfrmPeneiramentoNBR7181.Label3Click(Sender: TObject);
begin
  frmNBR7181_PENEIRAS_1_2_0_075.Show;
  frmNBR7181_PENEIRAS_1_2_0_075.Parent:=Form1;
end;

procedure TfrmPeneiramentoNBR7181.Label4Click(Sender: TObject);
begin
  frm_diametro_maximo_ParticulasSuspensao.Show;
  frm_diametro_maximo_ParticulasSuspensao.Parent:=Form1;

end;

end.

