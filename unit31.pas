unit Unit31;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmGrafico_plasticidade }

  TfrmGrafico_plasticidade = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmGrafico_plasticidade: TfrmGrafico_plasticidade;

implementation

{$R *.lfm}

{ TfrmGrafico_plasticidade }

procedure TfrmGrafico_plasticidade.FormCreate(Sender: TObject);
begin

end;

procedure TfrmGrafico_plasticidade.Image2Click(Sender: TObject);
begin

end;

procedure TfrmGrafico_plasticidade.Button1Click(Sender: TObject);
begin
  frmGrafico_plasticidade.Close;
end;

end.

