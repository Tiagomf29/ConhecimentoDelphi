object frmExemploRadioGroup: TfrmExemploRadioGroup
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exemplo RadioGroup'
  ClientHeight = 448
  ClientWidth = 677
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 205
    Caption = 'CheckListBox de Objetos (Apenas o Id dentro do objeto )'
    TabOrder = 0
    object rgCores: TRadioGroup
      Left = 3
      Top = 24
      Width = 291
      Height = 130
      Columns = 2
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 24
      Top = 166
      Width = 241
      Height = 25
      Caption = 'Recuperar ID banco de dados do objeto'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 311
    Top = 8
    Width = 338
    Height = 205
    Caption = 
      'CheckListBox de objetos (Objeto com todos os atributos da classe' +
      ' )'
    TabOrder = 1
    object rgCores2: TRadioGroup
      Left = 3
      Top = 24
      Width = 332
      Height = 130
      Columns = 2
      TabOrder = 0
    end
    object Button2: TButton
      Left = 24
      Top = 166
      Width = 289
      Height = 25
      Caption = 'Recuperar Id e sigla banco de dados do objeto'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 219
    Width = 297
    Height = 222
    Caption = 'CheckListBox de objetos (Objetos com tipos Enumerados)'
    TabOrder = 2
    object rgCores3: TRadioGroup
      Left = 3
      Top = 40
      Width = 291
      Height = 129
      Columns = 2
      TabOrder = 0
    end
    object Button3: TButton
      Left = 24
      Top = 184
      Width = 241
      Height = 25
      Caption = 'Valdar dados Tipo Enumerado'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
end
