unit Unit22;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Grids;

type

  { TfrmNBR7181_PENEIRAS_50_2_tabela }

  TfrmNBR7181_PENEIRAS_50_2_tabela = class(TForm)
    Button1: TButton;
    Image2: TImage;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmNBR7181_PENEIRAS_50_2_tabela: TfrmNBR7181_PENEIRAS_50_2_tabela;

implementation

{$R *.lfm}

{ TfrmNBR7181_PENEIRAS_50_2_tabela }

procedure TfrmNBR7181_PENEIRAS_50_2_tabela.Button1Click(Sender: TObject);
begin
  frmNBR7181_PENEIRAS_50_2_tabela.Close;
end;

end.

