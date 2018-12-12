unit Unit10;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmPeso_Especifico_Real }

  TfrmPeso_Especifico_Real = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { private declarations }
    y,ps,vs:real;
  public
    { public declarations }
  end;

var
  frmPeso_Especifico_Real: TfrmPeso_Especifico_Real;

implementation
uses
  unit17;

{$R *.lfm}

{ TfrmPeso_Especifico_Real }

procedure TfrmPeso_Especifico_Real.Button1Click(Sender: TObject);
begin
  frmPeso_Especifico_Real.Close;
end;

procedure TfrmPeso_Especifico_Real.ComboBox2Change(Sender: TObject);
begin
   if ComboBox2.Text = 'g' then
  begin
    ComboBox1.Text:='g/cm³';
    ComboBox3.Text:='cm³';

    frmTabelaReumo.TabelaResumo.Cells[1,6]:=Edit1.Text;
     frmTabelaReumo.TabelaResumo.Cells[2,6]:=ComboBox1.Text;
  end;
   if ComboBox2.Text = 'kN' then
  begin
    ComboBox1.Text:='kN/m³';
    ComboBox3.Text:='m³';

    frmTabelaReumo.TabelaResumo.Cells[1,6]:=Edit1.Text;
     frmTabelaReumo.TabelaResumo.Cells[2,6]:=ComboBox1.Text;
  end;
    if ComboBox2.Text = 'Kg' then
  begin
    ComboBox1.Text:='Kg/dm³';
    ComboBox3.Text:='dm³';

    frmTabelaReumo.TabelaResumo.Cells[1,6]:=Edit1.Text;
     frmTabelaReumo.TabelaResumo.Cells[2,6]:=ComboBox1.Text;
  end;
     if ComboBox2.Text = 't' then
  begin
    ComboBox1.Text:='t/m³';
    ComboBox3.Text:='m³';

    frmTabelaReumo.TabelaResumo.Cells[1,6]:=Edit1.Text;
     frmTabelaReumo.TabelaResumo.Cells[2,6]:=ComboBox1.Text;
  end;
end;

procedure TfrmPeso_Especifico_Real.Edit2Change(Sender: TObject);
begin

  try
     ps:=strtofloat(Edit2.text);
     vs:=strtofloat(edit3.text);
     y:=ps/vs;
     edit1.text:=floattostr(y);

     frmTabelaReumo.TabelaResumo.Cells[1,6]:=Edit1.Text;
     frmTabelaReumo.TabelaResumo.Cells[2,6]:=ComboBox1.Text;

  except
    edit1.text:='';

    frmTabelaReumo.TabelaResumo.Cells[1,6]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,6]:='';
  end;


end;

end.

