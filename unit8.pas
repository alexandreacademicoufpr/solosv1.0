unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmPeso_especifico_aparente_soloSubmerso }

  TfrmPeso_especifico_aparente_soloSubmerso = class(TForm)
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
    procedure Edit2Change(Sender: TObject);
  private
    { private declarations }
    solo_saturado,solo_submerso,agua:real;
  public
    { public declarations }
  end;

var
  frmPeso_especifico_aparente_soloSubmerso: TfrmPeso_especifico_aparente_soloSubmerso;

implementation
uses
    unit17;

{$R *.lfm}

{ TfrmPeso_especifico_aparente_soloSubmerso }

procedure TfrmPeso_especifico_aparente_soloSubmerso.Button1Click(Sender: TObject
  );
begin
  frmPeso_especifico_aparente_soloSubmerso.Close;
end;

procedure TfrmPeso_especifico_aparente_soloSubmerso.Edit2Change(Sender: TObject
  );
begin

  try
    agua:=1;
    solo_saturado:=strtofloat(Edit2.Text);
    solo_submerso:= solo_saturado-agua;
    Edit1.Text:=floattostr(solo_submerso);

    frmTabelaReumo.TabelaResumo.Cells[1,4]:=Edit1.Text;
    frmTabelaReumo.TabelaResumo.Cells[2,4]:=ComboBox1.Text;

     frmTabelaReumo.TabelaResumo.Cells[1,3]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,3]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,2]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,2]:='';

     frmTabelaReumo.TabelaResumo.Cells[1,5]:='';
     frmTabelaReumo.TabelaResumo.Cells[2,5]:='';
  except
    Edit1.text:='';

    frmTabelaReumo.TabelaResumo.Cells[1,4]:='';
    frmTabelaReumo.TabelaResumo.Cells[2,4]:='';
  end;


end;

end.

