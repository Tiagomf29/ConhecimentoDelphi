unit URelatorioQrp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, Vcl.StdCtrls,
  QRCtrls, grimgctrl, qrpctrls, Data.DB, Datasnap.DBClient, qrpBaseCtrls;

type
  TfrmRelQrp = class(TForm)
    qrpImpressao: TQRPQuickrep;
    qrbndDetailBand1: TQRBand;
    qrpdbtxtNOME: TQRPDBText;
    qrbndPageHeaderBand1: TQRBand;
    qrpshp1: TQRPShape;
    qrplbl1: TQRPLabel;
    qrpxpr1: TQRPExpr;
    qrpxpr2: TQRPExpr;
    qrplbl2: TQRPLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelQrp: TfrmRelQrp;

implementation
uses
 URelatorios;

{$R *.dfm}

end.
