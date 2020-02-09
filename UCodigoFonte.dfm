object frmCodigoFonte: TfrmCodigoFonte
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'C'#243'digo fonte'
  ClientHeight = 560
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
  object richedit: TDBRichEdit
    Left = 0
    Top = 0
    Width = 826
    Height = 560
    Align = alClient
    DataField = 'CODIGO_FONTE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    ExplicitTop = 40
    ExplicitHeight = 520
  end
end
