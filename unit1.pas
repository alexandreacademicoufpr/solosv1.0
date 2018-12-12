unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  unit2,unit18,unit26;

{$R *.lfm}

{ TForm1 }

procedure TForm1.StaticText1Click(Sender: TObject);
begin

 form2.show;
 form2.parent:=form1;

end;

procedure TForm1.StaticText2Click(Sender: TObject);
begin
  frmGranulometri.Show;
  frmGranulometri.Parent:=Form1;
end;

procedure TForm1.StaticText3Click(Sender: TObject);
begin
  frmPlasticidade_consistencia.show;
  frmPlasticidade_consistencia.Parent:=Form1;
end;

end.

