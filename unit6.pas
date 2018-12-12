unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfrmPeso_especifico_aparente_soloNatural }

  TfrmPeso_especifico_aparente_soloNatural = class(TForm)
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
    procedure Image2Click(Sender: TObject);
  private
    { private declarations }
    pesn,pt,vt:real;
  public
    { public declarations }
  end;

var
  frmPeso_especifico_aparente_soloNatural: TfrmPeso_especifico_aparente_soloNatural;

implementation
uses
    unit17;

{$R *.lfm}

{ TfrmPeso_especifico_aparente_soloNatural }

procedure TfrmPeso_especifico_aparente_soloNatural.Image2Click(Sender: TObject);
begin
  frmPeso_especifico_aparente_soloNatural.Close;
end;

procedure TfrmPeso_especifico_aparente_soloNatural.Button1Click(Sender: TObject
  );
begin
  frmPeso_especifico_aparente_soloNatural.close;
end;

procedure TfrmPeso_especifico_aparente_soloNatural.ComboBox2Change(
  Sender: TObject);
begin
  if ComboBox2.Text = 'g' then
  begin
    ComboBox1.Text:='g/cm³';
    ComboBox3.Text:='cm³';
  end;
   if ComboBox2.Text = 'kN' then
  begin
    ComboBox1.Text:='kN/m³';
    ComboBox3.Text:='m³';
  end;
    if ComboBox2.Text = 'Kg' then
  begin
    ComboBox1.Text:='Kg/dm³';
    ComboBox3.Text:='dm³';
  end;
     if ComboBox2.Text = 't' then
  begin
    ComboBox1.Text:='t/m³';
    ComboBox3.Text:='m³';
  end;


end;

procedure TfrmPeso_especifico_aparente_soloNatural.Edit2Change(Sender: TObject);
begin
  try
  pt:=strtofloat(Edit2.Text);
  vt:=StrToFloat(Edit3.Text);
  pesn:=pt/vt;
  Edit1.Text:=floattostr(pesn);

  frmTabelaReumo.TabelaResumo.Cells[1,2]:=Edit1.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,2]:=ComboBox1.Text;

     frmTabelaReumo.TabelaResumo.Cells[1,4]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,4]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,3]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,3]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,5]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,5]:='';


  Except
    Edit1.text:='';

    frmTabelaReumo.TabelaResumo.Cells[1,2]:='';
    frmTabelaReumo.TabelaResumo.Cells[2,2]:='';
  end;





end;

end.

