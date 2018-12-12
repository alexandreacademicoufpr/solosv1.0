unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmPeso_especifico_aparente_soloSeco }

  TfrmPeso_especifico_aparente_soloSeco = class(TForm)
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
    pps,pess,vt:real;
  public
    { public declarations }
  end;

var
  frmPeso_especifico_aparente_soloSeco: TfrmPeso_especifico_aparente_soloSeco;

implementation
uses
    unit17;

{$R *.lfm}

{ TfrmPeso_especifico_aparente_soloSeco }

procedure TfrmPeso_especifico_aparente_soloSeco.ComboBox2Change(Sender: TObject
  );
begin
  if ComboBox2.Text = 'g' then
  begin
    ComboBox1.Text:='g/cm³';
    ComboBox3.Text:='cm³';

    frmTabelaReumo.TabelaResumo.Cells[1,51]:=Edit1.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,5]:=ComboBox1.Text;

     frmTabelaReumo.TabelaResumo.Cells[1,4]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,4]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,2]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,2]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,3]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,3]:='';
  end;
   if ComboBox2.Text = 'kN' then
  begin
    ComboBox1.Text:='kN/m³';
    ComboBox3.Text:='m³';

    frmTabelaReumo.TabelaResumo.Cells[1,51]:=Edit1.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,5]:=ComboBox1.Text;

     frmTabelaReumo.TabelaResumo.Cells[1,4]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,4]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,2]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,2]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,3]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,3]:='';
  end;
    if ComboBox2.Text = 'Kg' then
  begin
    ComboBox1.Text:='Kg/dm³';
    ComboBox3.Text:='dm³';

    frmTabelaReumo.TabelaResumo.Cells[1,51]:=Edit1.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,5]:=ComboBox1.Text;

     frmTabelaReumo.TabelaResumo.Cells[1,4]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,4]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,2]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,2]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,3]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,3]:='';
  end;
     if ComboBox2.Text = 't' then
  begin
    ComboBox1.Text:='t/m³';
    ComboBox3.Text:='m³';

    frmTabelaReumo.TabelaResumo.Cells[1,51]:=Edit1.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,5]:=ComboBox1.Text;

     frmTabelaReumo.TabelaResumo.Cells[1,4]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,4]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,2]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,2]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,3]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,3]:='';
  end;
end;

procedure TfrmPeso_especifico_aparente_soloSeco.Button1Click(Sender: TObject);
begin
     frmPeso_especifico_aparente_soloSeco.Close;
end;

procedure TfrmPeso_especifico_aparente_soloSeco.Edit2Change(Sender: TObject);
begin
  try
  pps:=strtofloat(Edit2.Text);
  vt:=StrToFloat(Edit3.Text);
  pess:=pps/vt;
  Edit1.Text:=floattostr(pess);


  frmTabelaReumo.TabelaResumo.Cells[1,5]:=Edit1.Text;
  frmTabelaReumo.TabelaResumo.Cells[2,5]:=ComboBox1.Text;

     frmTabelaReumo.TabelaResumo.Cells[1,4]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,4]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,2]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,2]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,3]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,3]:='';


  Except
    Edit1.text:='';


    frmTabelaReumo.TabelaResumo.Cells[1,51]:='';
  frmTabelaReumo.TabelaResumo.Cells[2,5]:='';
  end;
end;

end.

