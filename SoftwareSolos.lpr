program SoftwareSolos;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17, Unit18, Unit19,
  Unit20, Unit21, Unit22, Unit23, Unit24, Unit25, Unit26, Unit27, Unit28,
  Unit29, Unit30, Unit31, Unit32, Unit33, Unit34
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmEsquema_Volume_por_Peso, frmEsquema_Volume_por_Peso
    );
  Application.CreateForm(TfrmIndicesFisicos_solo_2, frmIndicesFisicos_solo_2);
  Application.CreateForm(TfrmUmidade, frmUmidade);
  Application.CreateForm(TfrmPeso_especifico_aparente_soloNatural, 
    frmPeso_especifico_aparente_soloNatural);
  Application.CreateForm(TfrmPeso_especifico_aparente_soloSaturado, 
    frmPeso_especifico_aparente_soloSaturado);
  Application.CreateForm(TfrmPeso_especifico_aparente_soloSubmerso, 
    frmPeso_especifico_aparente_soloSubmerso);
  Application.CreateForm(TfrmPeso_especifico_aparente_soloSeco, 
    frmPeso_especifico_aparente_soloSeco);
  Application.CreateForm(TfrmPeso_Especifico_Real, frmPeso_Especifico_Real);
  Application.CreateForm(TfrmDensidade_Relativa_dasParticulas,
    frmDensidade_Relativa_dasParticulas);
  Application.CreateForm(TfrmPesoEspecificoDaAgua, frmPesoEspecificoDaAgua);
  Application.CreateForm(TfrmIndice_vazios, frmIndice_vazios);
  Application.CreateForm(TfrmPorosidade, frmPorosidade);
  Application.CreateForm(TfrmGrau_Saturacao, frmGrau_Saturacao);
  Application.CreateForm(TfrmRelacoes_entreIndices, frmRelacoes_entreIndices);
  Application.CreateForm(TfrmTabelaReumo, frmTabelaReumo);
  Application.CreateForm(TfrmGranulometri, frmGranulometri);
  Application.CreateForm(TfrmPeneiramentoNBR7181, frmPeneiramentoNBR7181);
  Application.CreateForm(TfrmPeneiramentoNBR7181_MassaTotal_AmostraSeca,
    frmPeneiramentoNBR7181_MassaTotal_AmostraSeca);
  Application.CreateForm(TfrmNBR7181_PENEIRAS_50_2, frmNBR7181_PENEIRAS_50_2);
  Application.CreateForm(TfrmNBR7181_PENEIRAS_50_2_tabela,
    frmNBR7181_PENEIRAS_50_2_tabela);
  Application.CreateForm(TfrmNBR7181_PENEIRAS_1_2_0_075_TABELA,
    frmNBR7181_PENEIRAS_1_2_0_075_TABELA);
  Application.CreateForm(TfrmNBR7181_PENEIRAS_1_2_0_075,
    frmNBR7181_PENEIRAS_1_2_0_075);
  Application.CreateForm(Tfrm_diametro_maximo_ParticulasSuspensao,
    frm_diametro_maximo_ParticulasSuspensao);
  Application.CreateForm(TfrmPlasticidade_consistencia,
    frmPlasticidade_consistencia);
  Application.CreateForm(Tfrmplasticidade, frmplasticidade);
  Application.CreateForm(TfrmLimite_consistencia, frmLimite_consistencia);
  Application.CreateForm(TfrmLimite_liquidez, frmLimite_liquidez);
  Application.CreateForm(TfrmLimite_plasticidade, frmLimite_plasticidade);
  Application.CreateForm(TfrmGrafico_plasticidade, frmGrafico_plasticidade);
  Application.CreateForm(TfrmIndice_consistencia, frmIndice_consistencia);
  Application.CreateForm(TfrmGrau_Contracao, frmGrau_Contracao);
  Application.CreateForm(TfrmLimite_contracao, frmLimite_contracao);
  Application.Run;
end.

