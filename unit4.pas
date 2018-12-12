unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmIndicesFisicos_solo_2 }

  TfrmIndicesFisicos_solo_2 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmIndicesFisicos_solo_2: TfrmIndicesFisicos_solo_2;

implementation
uses
  unit1,unit2,Unit14,Unit15,unit16,unit17;

{$R *.lfm}

{ TfrmIndicesFisicos_solo_2 }

procedure TfrmIndicesFisicos_solo_2.Button1Click(Sender: TObject);
begin
  frmIndicesFisicos_solo_2.close;
end;

procedure TfrmIndicesFisicos_solo_2.StaticText1Click(Sender: TObject);
begin
  frmPorosidade.Show;
  frmPorosidade.Parent:=form1;
end;

procedure TfrmIndicesFisicos_solo_2.StaticText2Click(Sender: TObject);
begin
  frmGrau_Saturacao.Show;
  frmGrau_Saturacao.Parent:=Form1;
end;

procedure TfrmIndicesFisicos_solo_2.StaticText3Click(Sender: TObject);
begin
  frmRelacoes_entreIndices.Show;
  frmRelacoes_entreIndices.Parent:=Form1;

end;

procedure TfrmIndicesFisicos_solo_2.StaticText4Click(Sender: TObject);
begin
  frmTabelaReumo.Show;
  frmTabelaReumo.Parent:=Form1;
end;

end.

