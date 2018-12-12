unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmEsquema_Volume_por_Peso }

  TfrmEsquema_Volume_por_Peso = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmEsquema_Volume_por_Peso: TfrmEsquema_Volume_por_Peso;

implementation

{$R *.lfm}

{ TfrmEsquema_Volume_por_Peso }

procedure TfrmEsquema_Volume_por_Peso.Button1Click(Sender: TObject);
begin
  frmEsquema_Volume_por_Peso.close;
end;

end.

