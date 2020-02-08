object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 533
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 826
    Height = 97
    Align = alTop
    Caption = 'Pesquisa de componentes'
    TabOrder = 0
    ExplicitWidth = 816
    object lblDescricao: TLabel
      Left = 3
      Top = 40
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object edtPesquisa: TEdit
      Left = 3
      Top = 59
      Width = 502
      Height = 21
      TabOrder = 0
      OnChange = edtPesquisaChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 826
    Height = 436
    Align = alClient
    Color = cl3DLight
    DataSource = DS
    GradientStartColor = clSilver
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object qry: TZQuery
    Connection = DM.conexao
    Active = True
    SQL.Strings = (
      'select * from funcionalidade')
    Params = <>
    Left = 648
    Top = 16
  end
  object DS: TDataSource
    AutoEdit = False
    DataSet = CDS
    Left = 544
    Top = 16
  end
  object CDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP'
    Left = 576
    Top = 16
    object CDSID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Required = True
    end
    object CDSDESCRICAO: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object CDSCODIGOFONTE: TBlobField
      DisplayLabel = 'C'#243'digo Fonte'
      FieldName = 'CODIGOFONTE'
      Required = True
    end
  end
  object DSP: TDataSetProvider
    DataSet = qry
    Left = 616
    Top = 16
  end
end
