unit Unit18;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfrmGranulometri }

  TfrmGranulometri = class(TForm)
    Button1: TButton;
    Image1: TImage;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmGranulometri: TfrmGranulometri;

implementation
uses
  unit1,unit19;

{$R *.lfm}

{ TfrmGranulometri }

procedure TfrmGranulometri.Image2Click(Sender: TObject);
begin

end;

procedure TfrmGranulometri.StaticText1Click(Sender: TObject);
begin
  frmPeneiramentoNBR7181.Show;
  frmPeneiramentoNBR7181.Parent:=Form1;
end;

procedure TfrmGranulometri.Button1Click(Sender: TObject);
begin
  frmGranulometri.Close;
end;

end.

