unit Unit28;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmLimite_consistencia }

  TfrmLimite_consistencia = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
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
  frmLimite_consistencia: TfrmLimite_consistencia;

implementation

{$R *.lfm}

{ TfrmLimite_consistencia }

procedure TfrmLimite_consistencia.Button1Click(Sender: TObject);
begin
  frmLimite_consistencia.Close;
end;

end.

