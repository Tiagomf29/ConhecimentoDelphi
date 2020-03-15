object frmExemploCombobox: TfrmExemploCombobox
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exemplo Combobox'
  ClientHeight = 343
  ClientWidth = 320
  Color = cl3DLight
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
  object gbComboboxObejtos: TGroupBox
    Left = 3
    Top = 8
    Width = 311
    Height = 105
    Caption = 'Combobox Objetos (Apenas o ID dentro do objeto)'
    Color = cl3DLight
    Ctl3D = True
    ParentBackground = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
    object lblCores: TLabel
      Left = 3
      Top = 21
      Width = 28
      Height = 13
      Caption = 'Cores'
    end
    object cbbCores: TComboBox
      Left = 3
      Top = 40
      Width = 307
      Height = 22
      Style = csOwnerDrawFixed
      Color = clYellow
      TabOrder = 0
    end
    object Button1: TButton
      Left = 3
      Top = 68
      Width = 307
      Height = 25
      Caption = 'Recuperar ID banco de dados do objeto'
      TabOrder = 1
      OnClick = Button1Click
    end
    object BitBtn1: TBitBtn
      Left = 280
      Top = 13
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
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 122
    Width = 314
    Height = 105
    Caption = 'Combobox de objetos (Objeto com todos atributos da classe)'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object lblCores2: TLabel
      Left = 3
      Top = 21
      Width = 28
      Height = 13
      Caption = 'Cores'
    end
    object cbbCores2: TComboBox
      Left = 3
      Top = 40
      Width = 307
      Height = 22
      Style = csOwnerDrawFixed
      Color = clYellow
      TabOrder = 0
    end
    object Button2: TButton
      Left = 3
      Top = 68
      Width = 308
      Height = 25
      Caption = 'Recuperar Id e sigla banco de dados do objeto'
      TabOrder = 1
      OnClick = Button2Click
    end
    object BitBtn2: TBitBtn
      Left = 280
      Top = 14
      Width = 22
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFD68200D68200D68200D68200D68200D6
        8200D68200D68200D68200D68200D68200D68200FF00FFFF00FFFF00FFD68200
        FFF7EDFFEDDAFFEBD5FFE9D0FFE7CCFFE5C6FFE3C2FFE0BFFFDFBBFFDEB8FFDD
        B6FFE2C2D68200FF00FFFF00FFD68200FFF2E6FEEAD2FEE7CEFEE5C9FEE3C4FE
        E0BFFEDEBBFEDCB7000000FED9B0000000FFDDB7D68200FF00FFFF00FFD68200
        FFF5EBFFEDD7FFEAD36F81EA3F5FF25F75E9DECBC8FEDFBBFFDDB7000000FED9
        B1FFDEB9D68200FF00FFFF00FFD68200FFF8F0FEEFDCFEECD7FEEAD30033FFBE
        B8D7FEE3C5FEE1C0FEE0BC000000FEDBB5FFE0BCD68200FF00FFFF00FFD68200
        FFFBF5FEF1E2FFEEDCFFECD70033FFBFBBDAFEE5C9FEE3C5FEE1C1000000FEDD
        B8FFE1BFD68200FF00FFFF00FFD68200FFFDFAFFF3E7FEF1E2FFEFDD0033FFBE
        BDDEFFE8CFFFE5C9FEE4C5000000FEDFBCFFE3C4D68200FF00FFFF00FFD68200
        FFFFFEFFF6EBFFF3E7FEF1E20033FFBEBEE3FEEAD4FFE8CFFFE6CA000000FEE1
        C1FFE5C9D68200FF00FFFF00FFD68200FFFFFFDFDFF2FFF6EBFFF3E70033FFBF
        C0E6FEEDD9DED4D9FFE9D0000000FEE4C6FFE7CED68200FF00FFFF00FFD68200
        FFFFFF7F96FACFD2F3FFF5EB0033FFBFC2E9EEE3E05F78F1FFEBD4000000FFE6
        CAFFEAD2D68200FF00FFFF00FFD68200FFFFFF9EB0FA3F64FC3F63FB3F63FA3F
        63F93F62F86F85F1FEEDD9000000FFE8D0FFECD7D68200FF00FFFF00FFD68200
        FFFFFFFFFDFAFFFCF7FFFAF4FEF8F0FFF6ECFFF4E8FEF2E3000000FFEEDA0000
        00FFEFDDD68200FF00FFFF00FFD68200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFCFFFCF7FFF9F3FFF7EDFFF4E8FFF9F2D68200FF00FFFF00FFFF00FF
        D68200D68200D68200D68200D68200D68200D68200D68200D68200D68200D682
        00D68200FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 233
    Width = 311
    Height = 105
    Caption = 'Combobox de objetos (Objetos com tipos Enumerados)'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    object Label1: TLabel
      Left = 3
      Top = 20
      Width = 28
      Height = 13
      Caption = 'Cores'
    end
    object cbbCores3: TComboBox
      Left = 3
      Top = 39
      Width = 307
      Height = 22
      Style = csOwnerDrawFixed
      Color = clYellow
      TabOrder = 0
    end
    object Button3: TButton
      Left = 3
      Top = 67
      Width = 307
      Height = 25
      Caption = 'Valdar dados Tipo Enumerado'
      TabOrder = 1
      OnClick = Button3Click
    end
    object BitBtn3: TBitBtn
      Left = 280
      Top = 13
      Width = 22
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFD68200D68200D68200D68200D68200D6
        8200D68200D68200D68200D68200D68200D68200FF00FFFF00FFFF00FFD68200
        FFF7EDFFEDDAFFEBD5FFE9D0FFE7CCFFE5C6FFE3C2FFE0BFFFDFBBFFDEB8FFDD
        B6FFE2C2D68200FF00FFFF00FFD68200FFF2E6FEEAD2FEE7CEFEE5C9FEE3C4FE
        E0BFFEDEBBFEDCB7000000FED9B0000000FFDDB7D68200FF00FFFF00FFD68200
        FFF5EBFFEDD7FFEAD36F81EA3F5FF25F75E9DECBC8FEDFBBFFDDB7000000FED9
        B1FFDEB9D68200FF00FFFF00FFD68200FFF8F0FEEFDCFEECD7FEEAD30033FFBE
        B8D7FEE3C5FEE1C0FEE0BC000000FEDBB5FFE0BCD68200FF00FFFF00FFD68200
        FFFBF5FEF1E2FFEEDCFFECD70033FFBFBBDAFEE5C9FEE3C5FEE1C1000000FEDD
        B8FFE1BFD68200FF00FFFF00FFD68200FFFDFAFFF3E7FEF1E2FFEFDD0033FFBE
        BDDEFFE8CFFFE5C9FEE4C5000000FEDFBCFFE3C4D68200FF00FFFF00FFD68200
        FFFFFEFFF6EBFFF3E7FEF1E20033FFBEBEE3FEEAD4FFE8CFFFE6CA000000FEE1
        C1FFE5C9D68200FF00FFFF00FFD68200FFFFFFDFDFF2FFF6EBFFF3E70033FFBF
        C0E6FEEDD9DED4D9FFE9D0000000FEE4C6FFE7CED68200FF00FFFF00FFD68200
        FFFFFF7F96FACFD2F3FFF5EB0033FFBFC2E9EEE3E05F78F1FFEBD4000000FFE6
        CAFFEAD2D68200FF00FFFF00FFD68200FFFFFF9EB0FA3F64FC3F63FB3F63FA3F
        63F93F62F86F85F1FEEDD9000000FFE8D0FFECD7D68200FF00FFFF00FFD68200
        FFFFFFFFFDFAFFFCF7FFFAF4FEF8F0FFF6ECFFF4E8FEF2E3000000FFEEDA0000
        00FFEFDDD68200FF00FFFF00FFD68200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFCFFFCF7FFF9F3FFF7EDFFF4E8FFF9F2D68200FF00FFFF00FFFF00FF
        D68200D68200D68200D68200D68200D68200D68200D68200D68200D68200D682
        00D68200FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
end
