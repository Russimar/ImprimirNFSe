object uRelImprimirNFSe: TuRelImprimirNFSe
  Left = 169
  Top = 124
  Width = 1043
  Height = 549
  Caption = 'Relat'#243'rio de Notas de Servi'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1027
    Height = 510
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 109
      Width = 1025
      Height = 400
      Align = alClient
      TabOrder = 1
      object SMDBGrid1: TSMDBGrid
        Left = 1
        Top = 1
        Width = 1023
        Height = 398
        Align = alClient
        DataSource = dsPadrao
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 23
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 14
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CADCLI'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_EMISSAO'
            Title.Alignment = taCenter
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEMP'
            Title.Alignment = taCenter
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISSQN_VALOR'
            Title.Alignment = taCenter
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IRRF_VALOR'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_VALOR'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COFINS_VALOR'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSLL_VALOR'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'XML'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1025
      Height = 108
      Align = alTop
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 342
        Top = 5
        Width = 185
        Height = 97
        Caption = 'Data'
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 22
          Width = 30
          Height = 13
          Caption = 'Inicial:'
        end
        object Label2: TLabel
          Left = 13
          Top = 59
          Width = 25
          Height = 13
          Caption = 'Final:'
        end
        object DateInicial: TDateEdit
          Left = 40
          Top = 14
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object DateFinal: TDateEdit
          Left = 40
          Top = 51
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object BitBtn1: TBitBtn
        Left = 782
        Top = 74
        Width = 129
        Height = 28
        Caption = 'Imprimir'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 2
        Width = 326
        Height = 47
        Caption = 'Empresa'
        TabOrder = 0
        object comboEmpresa: TRxDBLookupCombo
          Left = 8
          Top = 19
          Width = 313
          Height = 21
          DropDownCount = 8
          LookupField = 'CEMP'
          LookupDisplay = 'NOM'
          LookupSource = DMConsNFSe.dsEmpresa
          TabOrder = 0
          OnChange = comboEmpresaChange
        end
      end
      object BitBtn2: TBitBtn
        Left = 782
        Top = 37
        Width = 129
        Height = 28
        Caption = 'Consultar'
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
          0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
          00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
          00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
          F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
          F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
          FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
          0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
          00337777FFFF77FF7733EEEE0000000003337777777777777333}
        NumGlyphs = 2
      end
      object rdgTipo: TRadioGroup
        Left = 539
        Top = 5
        Width = 144
        Height = 97
        Caption = 'Tipo'
        ItemIndex = 0
        Items.Strings = (
          'Todas'
          'Sem Canceladas'
          'Somente Canceladas')
        TabOrder = 4
      end
      object rgpImpressao: TRadioGroup
        Left = 686
        Top = 5
        Width = 93
        Height = 97
        Caption = 'Impress'#227'o'
        ItemIndex = 0
        Items.Strings = (
          'Imprimir'
          'Gerar PDF')
        TabOrder = 5
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 50
        Width = 326
        Height = 52
        Caption = 'Caminho PDF'
        TabOrder = 6
        object CaminhoPDF: TDirectoryEdit
          Left = 8
          Top = 20
          Width = 312
          Height = 21
          NumGlyphs = 1
          TabOrder = 0
        end
      end
    end
  end
  object dsPadrao: TDataSource
    DataSet = DMConsNFSe.cdsConsNFSe
    Left = 784
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 817
    Top = 9
    object SelecionarTodos1: TMenuItem
      Caption = 'Selecionar Todos'
      OnClick = SelecionarTodos1Click
    end
  end
end
