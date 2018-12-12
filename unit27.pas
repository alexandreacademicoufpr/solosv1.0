unit Unit27;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { Tfrmplasticidade }

  Tfrmplasticidade = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmplasticidade: Tfrmplasticidade;

implementation

{$R *.lfm}

{ Tfrmplasticidade }

procedure Tfrmplasticidade.Button1Click(Sender: TObject);
begin
  frmplasticidade.Close;
end;

end.

