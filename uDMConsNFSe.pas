unit uDMConsNFSe;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, ACBrDFe,
  ACBrNFSe, ACBrBase, ACBrDFeReport, ACBrNFSeDANFSeClass,
  ACBrNFSeDANFSeRLClass, Forms;

type
  TDMConsNFSe = class(TDataModule)
    sdsConsNFSe: TSQLDataSet;
    dspConsNFSe: TDataSetProvider;
    cdsConsNFSe: TClientDataSet;
    cdsConsNFSeNUMERO: TIntegerField;
    cdsConsNFSeCOD_CADCLI: TIntegerField;
    cdsConsNFSeDATA_EMISSAO: TDateField;
    cdsConsNFSeCEMP: TStringField;
    cdsConsNFSeSERIE: TStringField;
    cdsConsNFSeVALOR_TOTAL: TFMTBCDField;
    cdsConsNFSeISSQN_VALOR: TFMTBCDField;
    cdsConsNFSeIRRF_VALOR: TFMTBCDField;
    cdsConsNFSePIS_VALOR: TFMTBCDField;
    cdsConsNFSeCOFINS_VALOR: TFMTBCDField;
    cdsConsNFSeCSLL_VALOR: TFMTBCDField;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    cdsConsNFSeXML: TMemoField;
    ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL;
    ACBrNFSe1: TACBrNFSe;
    cdsConsNFSeCODIGOVERIFICACAO: TStringField;
    cdsConsNFSeCOMPETENCIA: TDateField;
    cdsConsNFSeSITUACAO: TStringField;
    cdsEmpresaCEMP: TStringField;
    cdsEmpresaNOM: TStringField;
    cdsEmpresaFANT: TStringField;
    cdsEmpresaLGR: TStringField;
    cdsEmpresaENDE: TStringField;
    cdsEmpresaCID: TStringField;
    cdsEmpresaBAI: TStringField;
    cdsEmpresaEST: TStringField;
    cdsEmpresaNR: TStringField;
    cdsEmpresaCEND: TStringField;
    cdsEmpresaPFON1: TStringField;
    cdsEmpresaNFON1: TStringField;
    cdsEmpresaNDOC: TStringField;
    cdsEmpresaLOGOTIPO: TBlobField;
    cdsEmpresaIMUN: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    Caminho : String;
    { Private declarations }
  public
    ctNFSe : String;
    procedure imprimirNFSe(Tipo, Caminho : String);
    { Public declarations }
  end;

var
  DMConsNFSe: TDMConsNFSe;

implementation

uses
  uDMConection;

{$R *.dfm}

{ TDMConsNFSe }

procedure TDMConsNFSe.imprimirNFSe(Tipo, Caminho : String);
var
 stStreamNFSe, vLogo: TStringStream;
begin
  ACBrNFSe1.NotasFiscais.Clear;
  stStreamNFSe := TStringStream.Create(cdsConsNFSeXML.AsString);
  ACBrNFSe1.NotasFiscais.LoadFromStream(stStreamNFSe);
//  vLogo := TStringStream.Create('');
//  try
//    cdsEmpresaLOGOTIPO.SaveToFile(Caminho +cdsEmpresaCEMP.AsString+'.bmp');
//    vLogo.WriteString(cdsEmpresaLOGOTIPO.AsString);
////    ACBrNFSe1.DANFSE.Logo := vLogo.DataString;
//    ACBrNFSe1.DANFSE.Logo := Caminho+cdsEmpresaCEMP.AsString+'.bmp';
//  finally
//    FreeAndNil(vLogo);
//  end;

  ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := cdsConsNFSeCODIGOVERIFICACAO.AsString;
  ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero := cdsConsNFSeNUMERO.AsString;
  ACBrNFSe1.NotasFiscais.Items[0].NFSe.Competencia := DateToStr(cdsConsNFSeCOMPETENCIA.AsDateTime);
  ACBrNFSe1.DANFSE.Endereco := cdsEmpresaLGR.AsString + ' ' + cdsEmpresaENDE.AsString + ' No: '+ cdsEmpresaNR.AsString;
  ACBrNFSe1.DANFSE.UF := cdsEmpresaEST.AsString;
  ACBrNFSe1.DANFSE.RazaoSocial := cdsEmpresaNOM.AsString;
  ACBrNFSe1.DANFSE.Complemento := cdsEmpresaCEND.AsString;
  ACBrNFSe1.DANFSE.Fone := cdsEmpresaPFON1.AsString + ' ' + cdsEmpresaNFON1.AsString;
  ACBrNFSe1.DANFSE.InscMunicipal := cdsEmpresaIMUN.AsString;
  ACBrNFSe1.DANFSE.Municipio := cdsEmpresaCID.AsString;
  if Tipo = 'IMP' then
    ACBrNFSe1.NotasFiscais.Imprimir
  else
  begin
    ACBrNFSeDANFSeRL1.PathPDF := Caminho;
    ACBrNFSe1.NotasFiscais.ImprimirPDF;
  end;
end;

procedure TDMConsNFSe.DataModuleCreate(Sender: TObject);
begin
  ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio := StrToInt(DMConection.CodigoMunicipio);
  ctNFSe := sdsConsNFSe.CommandText;
  Caminho := ExtractFilePath(Application.ExeName);
end;

end.
