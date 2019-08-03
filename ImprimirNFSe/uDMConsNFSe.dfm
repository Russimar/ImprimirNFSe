object DMConsNFSe: TDMConsNFSe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 317
  Top = 180
  Height = 310
  Width = 372
  object sdsConsNFSe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select NFE.NUMERO, NFE.COD_CADCLI, NFE.DATA_EMISSAO, NFE.CEMP, N' +
      'FE.SERIE, NFE.VALOR_TOTAL, NFE.ISSQN_VALOR,'#13#10'       NFE.IRRF_VAL' +
      'OR, NFE.PIS_VALOR, NFE.COFINS_VALOR, NFE.CSLL_VALOR, NFEC.XML, N' +
      'FEC.CODIGOVERIFICACAO'#13#10'from FAT_NF_SERVICO NFE'#13#10'inner join CAD_C' +
      'OLABORADOR C on C.COD_CADCOLABORADOR = NFE.COD_CADCLI'#13#10'inner joi' +
      'n CAD_PESSOA P on C.CODIGO_PESSOA = P.CODIGO_PESSOA'#13#10'inner join ' +
      'FAT_NF_SERVICO_COMUNICACAO NFEC on NFE.COD_FATNFSERVICO = NFEC.C' +
      'OD_FATNFSERVICO'#13#10'where NFE.DATA_EMISSAO between :DATAINICIAL and' +
      ' :DATAFINAL and'#13#10'      NFE.CEMP = :EMPRESA and'#13#10'      NFEC.tipo ' +
      '= '#39'1'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = DMConection.Connection
    Left = 40
    Top = 48
  end
  object dspConsNFSe: TDataSetProvider
    DataSet = sdsConsNFSe
    Left = 96
    Top = 48
  end
  object cdsConsNFSe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsNFSe'
    Left = 144
    Top = 48
    object cdsConsNFSeNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero Nota'
      FieldName = 'NUMERO'
      Required = True
    end
    object cdsConsNFSeCOD_CADCLI: TIntegerField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'COD_CADCLI'
      Required = True
    end
    object cdsConsNFSeDATA_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object cdsConsNFSeCEMP: TStringField
      DisplayLabel = 'Cod.Empresa'
      FieldName = 'CEMP'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsConsNFSeSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Required = True
      Size = 5
    end
    object cdsConsNFSeVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsNFSeISSQN_VALOR: TFMTBCDField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'ISSQN_VALOR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsNFSeIRRF_VALOR: TFMTBCDField
      DisplayLabel = 'Valor IRRF'
      FieldName = 'IRRF_VALOR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsNFSePIS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor PIS'
      FieldName = 'PIS_VALOR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsNFSeCOFINS_VALOR: TFMTBCDField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'COFINS_VALOR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsNFSeCSLL_VALOR: TFMTBCDField
      DisplayLabel = 'Valor CSSL'
      FieldName = 'CSLL_VALOR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsNFSeXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsNFSeCODIGOVERIFICACAO: TStringField
      FieldName = 'CODIGOVERIFICACAO'
    end
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select COD_CADEMPRESA, NOME, CEMP, LOGOTIPO from CAD_EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMConection.Connection
    Left = 40
    Top = 104
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 96
    Top = 104
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 144
    Top = 104
    object cdsEmpresaCOD_CADEMPRESA: TIntegerField
      FieldName = 'COD_CADEMPRESA'
      Required = True
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsEmpresaCEMP: TStringField
      FieldName = 'CEMP'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 192
    Top = 104
  end
  object ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL
    PathPDF = '.\'
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFSe = ACBrNFSe1
    Cancelada = False
    Provedor = proNenhum
    TamanhoFonte = 6
    FormatarNumeroDocumentoNFSe = True
    PrintDialog = True
    Left = 112
    Top = 204
  end
  object ACBrNFSe1: TACBrNFSe
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = True
    Configuracoes.Geral.Emitente.DadosSenhaParams = <>
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.EmissaoPathNFSe = True
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFSE = ACBrNFSeDANFSeRL1
    Left = 40
    Top = 204
  end
end
