unit Unit26;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmPlasticidade_consistencia }

  TfrmPlasticidade_consistencia = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmPlasticidade_consistencia: TfrmPlasticidade_consistencia;

implementation
uses
  unit27,unit28,unit29,unit30,unit31,unit32,unit33,unit34;

{$R *.lfm}

{ TfrmPlasticidade_consistencia }

procedure TfrmPlasticidade_consistencia.Button1Click(Sender: TObject);
begin
  frmPlasticidade_consistencia.Close;
end;

procedure TfrmPlasticidade_consistencia.Label1Click(Sender: TObject);
begin
  frmplasticidade.Show;
  frmplasticidade.Parent:=frmPlasticidade_consistencia;
end;

procedure TfrmPlasticidade_consistencia.Label2Click(Sender: TObject);
begin
  frmLimite_consistencia.Show;
  frmLimite_consistencia.Parent:=frmPlasticidade_consistencia;
end;

procedure TfrmPlasticidade_consistencia.Label3Click(Sender: TObject);
begin
  frmLimite_liquidez.Show;
  frmLimite_liquidez.Parent:=frmPlasticidade_consistencia;
end;

procedure TfrmPlasticidade_consistencia.Label4Click(Sender: TObject);
begin
  frmLimite_plasticidade.show;
  frmLimite_plasticidade.Parent:=frmPlasticidade_consistencia;
end;

procedure TfrmPlasticidade_consistencia.Label5Click(Sender: TObject);
begin
  frmGrafico_plasticidade.Show;
  frmGrafico_plasticidade.Parent:=frmPlasticidade_consistencia;
end;

procedure TfrmPlasticidade_consistencia.Label6Click(Sender: TObject);
begin
  frmIndice_consistencia.Show;
  frmIndice_consistencia.Parent:=frmPlasticidade_consistencia;
end;

procedure TfrmPlasticidade_consistencia.Label7Click(Sender: TObject);
begin
  frmLimite_contracao.Show;
  frmLimite_contracao.Parent:=frmPlasticidade_consistencia;
end;

procedure TfrmPlasticidade_consistencia.Label8Click(Sender: TObject);
begin
  frmGrau_Contracao.Show;
  frmGrau_Contracao.Parent:=frmPlasticidade_consistencia;
end;

end.

