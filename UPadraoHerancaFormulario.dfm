object frmFormularioHerancaPrincipal: TfrmFormularioHerancaPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio padr'#227'o - Heran'#231'a formul'#225'rio'
  ClientHeight = 290
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 243
    Width = 688
    Height = 47
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 232
    ExplicitWidth = 581
  end
  object btnInserir: TBitBtn
    Left = 14
    Top = 250
    Width = 105
    Height = 32
    Caption = '&Inserir'
    TabOrder = 1
    OnClick = btnInserirClick
  end
  object btnSalvar: TBitBtn
    Left = 125
    Top = 250
    Width = 105
    Height = 32
    Caption = '&Salvar'
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnAlterar: TBitBtn
    Left = 236
    Top = 250
    Width = 105
    Height = 32
    Caption = '&Alterar'
    TabOrder = 3
    OnClick = btnAlterarClick
  end
  object btnExcluir: TBitBtn
    Left = 458
    Top = 250
    Width = 105
    Height = 32
    Caption = '&Excluir'
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object btnFechar: TBitBtn
    Left = 569
    Top = 250
    Width = 105
    Height = 32
    Caption = '&Fechar'
    TabOrder = 5
    OnClick = btnFecharClick
  end
  object btnCancelar: TBitBtn
    Left = 347
    Top = 250
    Width = 105
    Height = 32
    Caption = '&Cancelar'
    TabOrder = 6
    OnClick = btnCancelarClick
  end
end
