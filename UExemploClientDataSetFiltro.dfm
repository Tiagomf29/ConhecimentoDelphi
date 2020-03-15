object frmExemploClientDataSetFiltro: TfrmExemploClientDataSetFiltro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exemplo ClientDataSet com filtro'
  ClientHeight = 416
  ClientWidth = 429
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
    Top = 335
    Width = 429
    Height = 81
    Align = alBottom
    Caption = 'Pesquisa'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 26
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object edtPesquisaNome: TEdit
      Left = 8
      Top = 45
      Width = 241
      Height = 21
      TabOrder = 0
      OnChange = edtPesquisaNomeChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 96
    Width = 429
    Height = 239
    Align = alBottom
    DataSource = DTS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 429
    Height = 95
    Align = alTop
    Caption = 'Cadastrar'
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object edtNome: TEdit
      Left = 8
      Top = 51
      Width = 257
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 271
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 352
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = Button2Click
    end
    object BitBtn2: TBitBtn
      Left = 403
      Top = 9
      Width = 22
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFCA6800CA6800CA6800CA6800CA6800CA
        6800CA6800CA6800CA6800CA6800CA6800CA6800FF00FFFF00FFFF00FFCA6800
        FFF4E7FFE7CFFFE5C9FFE2C2FFE0BDFFDDB6FFDAB1FFD7ADFFD5A9FFD4A5FFD3
        A3FFD9B1CA6800FF00FFFF00FFCA6800FFEEDEFEE3C5FEE0C0FEDDBAFEDAB4FE
        D7ADFED4A9FED1A4000000FECE9C000000FFD3A4CA6800FF00FFFF00FFCA6800
        FFF2E5FFE7CBFFE3C63F52CE0D29D32E44CCD4BCB8FED5A9FFD3A4000000FECE
        9DFFD4A6CA6800FF00FFFF00FFCA6800FFF6EBFEEAD1FEE6CBFEE3C60000E1A4
        9DC3FEDAB5FED8AFFED7AA000000FED0A1FFD7AACA6800FF00FFFF00FFCA6800
        FFFAF2FEEDD9FFE9D1FFE6CB0000E1A5A1C7FEDDBAFEDAB5FED8B0000000FED3
        A5FFD8ADCA6800FF00FFFF00FFCA6800FFFCF8FFEFE0FEEDD9FFEAD30000E1A4
        A3CCFFE1C1FFDDBAFEDCB5000000FED5AAFFDAB4CA6800FF00FFFF00FFCA6800
        FFFFFEFFF3E5FFEFE0FEEDD90000E1A3A3D1FEE3C7FFE1C1FFDEBB000000FED8
        B0FFDDBACA6800FF00FFFF00FFCA6800FFFFFFD5D5EEFFF3E5FFEFE00000E1AD
        AFDEFEE7CED4C7CEFFE2C2000000FEDCB6FFE0C0CA6800FF00FFFF00FFCA6800
        FFFFFF4B64DEB3B7E1F9ECDF0000E1ADB1E2E2D3D02740D0FFE5C7000000FFDE
        BBFFE3C5CA6800FF00FFFF00FFCA6800FFFFFF7186E20A2BDD0A2ADC0A2ADA0A
        2AD90A29D83950D2FEE7CE000000FFE1C2FFE6CBCA6800FF00FFFF00FFCA6800
        FFFFFFF7F4F0F7F3ECF8F1E9F7EFE4F9EDE0FAEBDCF9E9D5000000FFE9CF0000
        00FFEAD3CA6800FF00FFFF00FFCA6800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFBFFFBF4FFF7EFFFF4E7FFF0E1FFF7EECA6800FF00FFFF00FFFF00FF
        CA6800CA6800CA6800CA6800CA6800CA6800CA6800CA6800CA6800CA6800CA68
        00CA6800FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object CDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 136
    Data = {
      330000009619E0BD0100000018000000010000000000030000003300044E6F6D
      6501004900000001000557494454480200020014000000}
    object CDSNome: TStringField
      FieldName = 'Nome'
    end
  end
  object DTS: TDataSource
    AutoEdit = False
    DataSet = CDS
    Left = 384
    Top = 152
  end
end
