unit Unit23;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Grids;

type

  { TfrmNBR7181_PENEIRAS_1_2_0_075_TABELA }

  TfrmNBR7181_PENEIRAS_1_2_0_075_TABELA = class(TForm)
    Button1: TButton;
    Image2: TImage;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmNBR7181_PENEIRAS_1_2_0_075_TABELA: TfrmNBR7181_PENEIRAS_1_2_0_075_TABELA;

implementation

{$R *.lfm}

{ TfrmNBR7181_PENEIRAS_1_2_0_075_TABELA }

procedure TfrmNBR7181_PENEIRAS_1_2_0_075_TABELA.Button1Click(Sender: TObject);
begin
  frmNBR7181_PENEIRAS_1_2_0_075_TABELA.Close;
end;

procedure TfrmNBR7181_PENEIRAS_1_2_0_075_TABELA.Image2Click(Sender: TObject);
begin

end;

end.

