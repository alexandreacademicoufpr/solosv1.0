unit Unit34;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfrmLimite_contracao }

  TfrmLimite_contracao = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { private declarations }
    lc,piau,pas,via,vas,mea:real;
  public
    { public declarations }
  end;

var
  frmLimite_contracao: TfrmLimite_contracao;

implementation

{$R *.lfm}

{ TfrmLimite_contracao }

procedure TfrmLimite_contracao.FormCreate(Sender: TObject);
begin

end;

procedure TfrmLimite_contracao.Image3Click(Sender: TObject);
begin

end;

procedure TfrmLimite_contracao.Label5Click(Sender: TObject);
begin

end;

procedure TfrmLimite_contracao.Label6Click(Sender: TObject);
begin

end;

procedure TfrmLimite_contracao.Button1Click(Sender: TObject);
begin
  frmLimite_contracao.Close;
end;

procedure TfrmLimite_contracao.ComboBox2Change(Sender: TObject);
begin

end;

procedure TfrmLimite_contracao.Edit2Change(Sender: TObject);
begin
  try
  piau:=strtofloat(edit2.text);
  pas:=StrToFloat(Edit3.Text);
  via:=StrToFloat(Edit4.Text);
  vas:=StrToFloat(Edit5.Text);
  mea:=StrToFloat(Edit6.Text);

  lc:=((piau-pas)-(via-vas)*mea)/pas;

  Edit1.Text:=FormatFloat('#00.00,0000',lc);
  except
    Edit1.Text:='';
  end;




end;

end.

