unit Unit16;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmRelacoes_entreIndices }

  TfrmRelacoes_entreIndices = class(TForm)
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
  frmRelacoes_entreIndices: TfrmRelacoes_entreIndices;

implementation

{$R *.lfm}

{ TfrmRelacoes_entreIndices }

procedure TfrmRelacoes_entreIndices.Button1Click(Sender: TObject);
begin
  frmRelacoes_entreIndices.Close;
end;

end.

