program prj_ImprimirNFSe;

uses
  Forms,
  uRelNotasServico in 'uRelNotasServico.pas' {uRelImprimirNFSe},
  uDMConection in 'uDMConection.pas' {DMConection: TDataModule},
  uDMConsNFSe in 'uDMConsNFSe.pas' {DMConsNFSe: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMConection, DMConection);
  Application.CreateForm(TuRelImprimirNFSe, uRelImprimirNFSe);
  Application.Run;
end.
