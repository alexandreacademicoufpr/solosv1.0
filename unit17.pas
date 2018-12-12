unit Unit17;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Grids;

type

  { TfrmTabelaReumo }

  TfrmTabelaReumo = class(TForm)
    Button1: TButton;
    imagem: TImage;
    StaticText5: TStaticText;
    TabelaResumo: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure imagemClick(Sender: TObject);
    procedure TabelaResumoClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmTabelaReumo: TfrmTabelaReumo;

implementation

{$R *.lfm}

{ TfrmTabelaReumo }

procedure TfrmTabelaReumo.imagemClick(Sender: TObject);
begin
  TabelaResumo.CopyToClipboard();
end;

procedure TfrmTabelaReumo.TabelaResumoClick(Sender: TObject);
begin

end;

procedure TfrmTabelaReumo.Button1Click(Sender: TObject);
begin
  frmTabelaReumo.Close;
end;

end.

