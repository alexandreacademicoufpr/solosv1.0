unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure StaticText11Click(Sender: TObject);
    procedure StaticText12Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure StaticText5Click(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
    procedure StaticText7Click(Sender: TObject);
    procedure StaticText8Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
 unit3,unit1,unit4,unit5,unit6,unit7,unit8,unit9,unit10,unit11,Unit12,unit13,Unit14;

{$R *.lfm}

{ TForm2 }

procedure TForm2.StaticText1Click(Sender: TObject);
begin
  frmEsquema_Volume_por_Peso.show;
  frmEsquema_Volume_por_Peso.parent:=Form1;
end;

procedure TForm2.StaticText2Click(Sender: TObject);
begin
  frmUmidade.show;
  frmUmidade.parent:=Form1;
end;

procedure TForm2.StaticText3Click(Sender: TObject);
begin
  frmPeso_especifico_aparente_soloNatural.Show;
  frmPeso_especifico_aparente_soloNatural.Parent:=Form1;
end;

procedure TForm2.StaticText4Click(Sender: TObject);
begin
  frmPeso_especifico_aparente_soloSaturado.show;
  frmPeso_especifico_aparente_soloSaturado.parent:=Form1;
end;

procedure TForm2.StaticText5Click(Sender: TObject);
begin
  frmPeso_especifico_aparente_soloSubmerso.Show;
  frmPeso_especifico_aparente_soloSubmerso.Parent:=Form1;
end;

procedure TForm2.StaticText6Click(Sender: TObject);
begin
  frmDensidade_Relativa_dasParticulas.Show;
  frmDensidade_Relativa_dasParticulas.Parent:=Form1;
end;

procedure TForm2.StaticText7Click(Sender: TObject);
begin
  frmPesoEspecificoDaAgua.Show;
  frmPesoEspecificoDaAgua.Parent:=Form1;
end;

procedure TForm2.StaticText8Click(Sender: TObject);
begin
  frmPeso_Especifico_Real.show;
  frmPeso_Especifico_Real.Parent:=Form1;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 frmIndicesFisicos_solo_2.show;
 frmIndicesFisicos_solo_2.Parent:=Form1;
end;

procedure TForm2.StaticText11Click(Sender: TObject);
begin
  frmPeso_especifico_aparente_soloSeco.Show;
  frmPeso_especifico_aparente_soloSeco.Parent:=Form1;
end;

procedure TForm2.StaticText12Click(Sender: TObject);
begin
  frmIndice_vazios.Show;
  frmIndice_vazios.Parent:=Form1;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  form2.close;
end;

end.

