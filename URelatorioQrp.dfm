object frmRelQrp: TfrmRelQrp
  Left = 0
  Top = 0
  Caption = 'Relatorio Quick Report'
  ClientHeight = 512
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qrpImpressao: TQRPQuickrep
    Left = 4
    Top = 0
    Width = 794
    Height = 1123
    DataSet = frmRelatorios.CDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    LabelSettings.FirstLabel = 0
    LabelSettings.LabelCount = 0
    PrepareAutomatically = False
    object qrbndDetailBand1: TQRBand
      Left = 38
      Top = 169
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object qrpdbtxtNOME: TQRPDBText
        Left = 8
        Top = 6
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          15.875000000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmRelatorios.CDS
        DataField = 'NOME'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
    end
    object qrbndPageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 131
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        346.604166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object qrpshp1: TQRPShape
        Left = 0
        Top = 0
        Width = 716
        Height = 129
        Size.Values = (
          341.312500000000000000
          0.000000000000000000
          0.000000000000000000
          1894.416666666667000000)
        XLColumn = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object qrplbl1: TQRPLabel
        Left = 180
        Top = 48
        Width = 357
        Height = 43
        Size.Values = (
          113.770833333333300000
          476.250000000000000000
          127.000000000000000000
          944.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Realt'#243'rio Quick report'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        Degree = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 28
      end
      object qrpxpr1: TQRPExpr
        Left = 8
        Top = 16
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          42.333333333333330000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'DATE+'#39' '#39'+TIME'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        Degree = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
      object qrpxpr2: TQRPExpr
        Left = 656
        Top = 16
        Width = 94
        Height = 17
        Size.Values = (
          44.979166666666670000
          1735.666666666667000000
          42.333333333333330000
          248.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'PAGENUMBER'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        Degree = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
      object qrplbl2: TQRPLabel
        Left = 605
        Top = 16
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          1600.729166666667000000
          42.333333333333330000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#225'gina:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        Degree = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
    end
  end
end
