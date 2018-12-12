unit Unit24;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmNBR7181_PENEIRAS_1_2_0_075 }

  TfrmNBR7181_PENEIRAS_1_2_0_075 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox10: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label10: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { private declarations }
    qf,mh,mi,h,n:real;
  public
    { public declarations }
  end;

var
  frmNBR7181_PENEIRAS_1_2_0_075: TfrmNBR7181_PENEIRAS_1_2_0_075;

implementation
uses
  unit1,unit23;

{$R *.lfm}

{ TfrmNBR7181_PENEIRAS_1_2_0_075 }

procedure TfrmNBR7181_PENEIRAS_1_2_0_075.Button1Click(Sender: TObject);
begin
  frmNBR7181_PENEIRAS_1_2_0_075.Close;
end;

procedure TfrmNBR7181_PENEIRAS_1_2_0_075.Button2Click(Sender: TObject);
begin
  frmNBR7181_PENEIRAS_1_2_0_075_TABELA.Show;
  frmNBR7181_PENEIRAS_1_2_0_075_TABELA.Parent:=form1;
end;

procedure TfrmNBR7181_PENEIRAS_1_2_0_075.Edit9Change(Sender: TObject);
begin
  try
   mh:=strtofloat(Edit9.text);
  h:=strtofloat(Edit6.Text);
  mi:=strtofloat(Edit7.Text);
  n:=strtofloat(Edit8.Text);

  qf:=((mh*100-mi*(100+h))/(mh*100))*n;
  edit4.text:=floattostr(qf);

  if (ComboBox5.Text='Peneira de 1,2 mm') then
  begin
    frmNBR7181_PENEIRAS_1_2_0_075_TABELA.StringGrid1.Cells[1,1]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 0,6 mm') then
    begin
      frmNBR7181_PENEIRAS_1_2_0_075_TABELA.StringGrid1.Cells[1,2]:=Edit4.Text;
    end;

  if (ComboBox5.Text='Peneira de 0,42 mm') then
  begin
    frmNBR7181_PENEIRAS_1_2_0_075_TABELA.StringGrid1.Cells[1,3]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 0,30 mm') then
  begin
    frmNBR7181_PENEIRAS_1_2_0_075_TABELA.StringGrid1.Cells[1,4]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 0,15 mm') then
  begin
    frmNBR7181_PENEIRAS_1_2_0_075_TABELA.StringGrid1.Cells[1,5]:=Edit4.Text;
  end;

  if (ComboBox5.Text='Peneira de 0,075 mm') then
  begin
    frmNBR7181_PENEIRAS_1_2_0_075_TABELA.StringGrid1.Cells[1,6]:=Edit4.Text;
  end;


  except
    edit4.text:='';
  end;



end;

procedure TfrmNBR7181_PENEIRAS_1_2_0_075.Image2Click(Sender: TObject);
begin

end;

end.

