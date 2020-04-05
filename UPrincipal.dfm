object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 533
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 551
    Height = 97
    Align = alTop
    Caption = 'Pesquisa de componentes'
    TabOrder = 0
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
      Width = 382
      Height = 21
      TabOrder = 0
      OnChange = edtPesquisaChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 551
    Height = 436
    Align = alClient
    Color = clBtnFace
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
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 330
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXEMPLO'
        Width = 100
        Visible = True
      end>
  end
  object qry: TZQuery
    Connection = DM.conexao
    Active = True
    SQL.Strings = (
      
        'select a.id, a.descricao,'#39#39' as exemplo from funcionalidade  a or' +
        'der by a.id')
    Params = <>
    Left = 288
    Top = 8
  end
  object DS: TDataSource
    AutoEdit = False
    DataSet = CDS
    Left = 192
    Top = 8
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP'
    Left = 224
    Top = 8
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
      Size = 200
    end
    object CDSEXEMPLO: TWideStringField
      DisplayLabel = 'Exemplo'
      FieldName = 'EXEMPLO'
      ReadOnly = True
      Size = 0
    end
  end
  object DSP: TDataSetProvider
    DataSet = qry
    Left = 256
    Top = 8
  end
end
