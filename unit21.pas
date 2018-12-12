unit Unit21;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmNBR7181_PENEIRAS_50_2 }

  TfrmNBR7181_PENEIRAS_50_2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
  private
    { private declarations }
    qg,ms,mi:real;
  public
    { public declarations }
  end;

var
  frmNBR7181_PENEIRAS_50_2: TfrmNBR7181_PENEIRAS_50_2;

implementation
uses
  unit1,Unit22;

{$R *.lfm}

{ TfrmNBR7181_PENEIRAS_50_2 }

procedure TfrmNBR7181_PENEIRAS_50_2.Button1Click(Sender: TObject);
begin
frmNBR7181_PENEIRAS_50_2.Close;
end;

procedure TfrmNBR7181_PENEIRAS_50_2.Button2Click(Sender: TObject);
begin
    frmNBR7181_PENEIRAS_50_2_tabela.Show;
  frmNBR7181_PENEIRAS_50_2_tabela.Parent:=Form1;
end;

procedure TfrmNBR7181_PENEIRAS_50_2.ComboBox5Change(Sender: TObject);
begin
  try
  ms:=StrToFloat(Edit5.Text);
  mi:=strtofloat(Edit6.text);
  qg:=((ms-mi)/ms)*100;
  edit4.text:=floattostr(qg);

  if (ComboBox5.Text='Peneira de 50 mm') then
  begin
    frmNBR7181_PENEIRAS_50_2_tabela.StringGrid1.Cells[1,1]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 38 mm') then
  begin
    frmNBR7181_PENEIRAS_50_2_tabela.StringGrid1.Cells[1,2]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 25 mm') then
  begin
    frmNBR7181_PENEIRAS_50_2_tabela.StringGrid1.Cells[1,3]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 19 mm') then
  begin
    frmNBR7181_PENEIRAS_50_2_tabela.StringGrid1.Cells[1,4]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 9,5 mm') then
  begin
    frmNBR7181_PENEIRAS_50_2_tabela.StringGrid1.Cells[1,5]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 4,8 mm') then
  begin
    frmNBR7181_PENEIRAS_50_2_tabela.StringGrid1.Cells[1,6]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 2,8 mm') then
  begin
    frmNBR7181_PENEIRAS_50_2_tabela.StringGrid1.Cells[1,7]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 2 mm') then
  begin
    frmNBR7181_PENEIRAS_50_2_tabela.StringGrid1.Cells[1,8]:=Edit4.Text;
  end;





  except
  edit4.text:='';
  end;
end;

end.

