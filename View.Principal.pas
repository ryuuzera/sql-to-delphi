unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel5: TPanel;
    Panel1: TPanel;
    imgClose: TImage;
    imgMinimize: TImage;
    imgMax: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    RichEdit: TRichEdit;
    PN_EVENTOS: TPanel;
    Panel4: TPanel;
    lbStatus: TLabel;
    frmPrincipal: TPanel;
    btGeraCodigo: TPanel;
    Panel6: TPanel;
    ED_FDQuery: TEdit;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgMinimizeClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure imgMaxClick(Sender: TObject);
    procedure btGeraCodigoClick(Sender: TObject);
  private
    { Private declarations }
    function GetBorderSpace: Integer;
    function IsBorderless: Boolean;
    procedure WMNCCalcSize(var Msg: TWMNCCalcSize); message WM_NCCALCSIZE;
    procedure WM_NCHitTest(var Msg: TWMNCHitTest);
    { Private declarations }
  protected
    procedure Paint; override;
    procedure Resize; override;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses Controller.Principal;

function TfrmPrincipal.IsBorderless: Boolean;
begin
  Result := BorderStyle in [bsNone, bsToolWindow, bsSizeToolWin];
end;

procedure TfrmPrincipal.btGeraCodigoClick(Sender: TObject);
begin
  if SameText(ED_FDquery.Text, '') then
  begin
    MessageDlg('Insira um nome do Componente FDQuery!', mtInformation, [mbOK], 0);
    ED_FDQuery.SetFocus;
    Abort;
  end;
  RichEdit.Text := GeraCodigo(ED_FDQuery.Text, RichEdit.Lines);
end;

function TfrmPrincipal.GetBorderSpace: Integer;
begin
  case BorderStyle of
    bsSingle:
      Result := GetSystemMetrics(SM_CYFIXEDFRAME);
    bsDialog, bsToolWindow:
      Result := GetSystemMetrics(SM_CYDLGFRAME);
    bsSizeable, bsSizeToolWin:
      Result := GetSystemMetrics(SM_CYSIZEFRAME) +
                  GetSystemMetrics(SM_CXPADDEDBORDER);
    else
      Result := 0;
  end;
end;

procedure TfrmPrincipal.imgCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.imgMaxClick(Sender: TObject);
begin
  if WindowState <> wsMaximized then
    WindowState := wsMaximized
  else
    WindowState := wsNormal;
end;

procedure TfrmPrincipal.imgMinimizeClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmPrincipal.Paint;
begin
  inherited;
  if (WindowState = wsNormal) and (not IsBorderless) then
  begin
    Canvas.Pen.Color := clBlack;
    Canvas.MoveTo(0, 0);
    Canvas.LineTo(Width, 0);
  end;
end;

{$R *.dfm}

procedure TfrmPrincipal.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmPrincipal.Resize;
begin
  inherited;
  if (WindowState = wsNormal) and (not IsBorderless) then
    Padding.Top := 1
  else
    Padding.Top := 0;
end;

procedure TfrmPrincipal.WMNCCalcSize(var Msg: TWMNCCalcSize);
var
  CaptionBarHeight: Integer;
begin
  inherited;
  if BorderStyle = bsNone then exit;
  CaptionBarHeight := GetSystemMetrics(SM_CYCAPTION);
  if WindowState = wsNormal then
    Inc(CaptionBarHeight, GetBorderSpace);
  Dec(Msg.CalcSize_Params.rgrc[0].Top, CaptionBarHeight);
end;

procedure TfrmPrincipal.WM_NCHitTest(var Msg: TWMNCHitTest);
var
  ResizeSpace: Integer;
begin
  inherited;
  ResizeSpace := GetBorderSpace;
  if (WindowState = wsNormal) and
    (BorderStyle in [bsSizeable, bsSizeToolWin]) and
    (Msg.YPos - BoundsRect.Top <= ResizeSpace) then
  begin
    if Msg.XPos - BoundsRect.Left <= 2 * ResizeSpace then
      Msg.Result := HTTOPLEFT
    else if BoundsRect.Right - Msg.XPos <= 2 * ResizeSpace then
      Msg.Result := HTTOPRIGHT
    else
      Msg.Result := HTTOP;
  end;
end;

end.
