unit Unit12;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmPesoEspecificoDaAgua }

  TfrmPesoEspecificoDaAgua = class(TForm)
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
  frmPesoEspecificoDaAgua: TfrmPesoEspecificoDaAgua;

implementation

{$R *.lfm}

{ TfrmPesoEspecificoDaAgua }

procedure TfrmPesoEspecificoDaAgua.Button1Click(Sender: TObject);
begin
  frmPesoEspecificoDaAgua.Close;
end;

end.

