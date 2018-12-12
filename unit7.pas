unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmPeso_especifico_aparente_soloSaturado }

  TfrmPeso_especifico_aparente_soloSaturado = class(TForm)
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
    solo_saturado,peso_total,volume_total:real;
  public
    { public declarations }
  end;

var
  frmPeso_especifico_aparente_soloSaturado: TfrmPeso_especifico_aparente_soloSaturado;

implementation
uses
    unit17;

{$R *.lfm}

{ TfrmPeso_especifico_aparente_soloSaturado }

procedure TfrmPeso_especifico_aparente_soloSaturado.ComboBox2Change(
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

procedure TfrmPeso_especifico_aparente_soloSaturado.Button1Click(Sender: TObject
  );
begin
  frmPeso_especifico_aparente_soloSaturado.close;
end;

procedure TfrmPeso_especifico_aparente_soloSaturado.Edit2Change(Sender: TObject
  );
begin
  try
     peso_total:=StrToFloat(Edit2.text);
     volume_total:=strtofloat(Edit3.text);
     solo_saturado:=peso_total/volume_total;

     edit1.text:= floattostr(solo_saturado);
     frmTabelaReumo.TabelaResumo.Cells[1,3]:=Edit1.Text;
     frmTabelaReumo.TabelaResumo.Cells[2,3]:=ComboBox1.Text;

     frmTabelaReumo.TabelaResumo.Cells[1,4]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,4]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,2]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,2]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,5]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,5]:='';


  except
    Edit1.text:='';

    frmTabelaReumo.TabelaResumo.Cells[1,3]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,3]:='';
  end;


end;

procedure TfrmPeso_especifico_aparente_soloSaturado.Image2Click(Sender: TObject
  );
begin

end;

end.

