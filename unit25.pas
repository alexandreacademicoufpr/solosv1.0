unit Unit25;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls,math;

type

  { Tfrm_diametro_maximo_ParticulasSuspensao }

  Tfrm_diametro_maximo_ParticulasSuspensao = class(TForm)
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
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { private declarations }
    dmp,cvmd,aqp,ts,megs,memd,resultado:real;
  public
    { public declarations }
  end;

var
  frm_diametro_maximo_ParticulasSuspensao: Tfrm_diametro_maximo_ParticulasSuspensao;

implementation

{$R *.lfm}

{ Tfrm_diametro_maximo_ParticulasSuspensao }

procedure Tfrm_diametro_maximo_ParticulasSuspensao.Edit2Change(Sender: TObject);
begin

  try
    cvmd:=strtofloat(edit2.text);
    aqp:=strtofloat(edit3.text);
    ts:=strtofloat(edit4.text);
    megs:=strtofloat(edit5.text);
    memd:=strtofloat(edit6.text);

    resultado:=( ((1800*cvmd)/(megs-memd))*(aqp/ts) );
    dmp:=power(resultado,0.5);

    Edit1.text:=formatfloat('##,##0.00',dmp);

  except
    edit1.text:='';
  end;


end;

procedure Tfrm_diametro_maximo_ParticulasSuspensao.Image2Click(Sender: TObject);
begin

end;

procedure Tfrm_diametro_maximo_ParticulasSuspensao.Button1Click(Sender: TObject
  );
begin
  frm_diametro_maximo_ParticulasSuspensao.Close;
end;

end.

