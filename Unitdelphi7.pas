unit Unitdelphi7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel6: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Memo1: TMemo;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    btnEtiqueta: TBitBtn;
    ComboBox1: TComboBox;
    btnCopia: TButton;
    editCaminho: TEdit;
    procedure btnCopiaClick(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

 uses
   PngImage,  HTTPApp,  WinInet, Clipbrd;

{$R *.dfm}
  type
   TQrImage_ErrCorrLevel = (L, M, Q, H);


const

  UrlGoogleQrCode = 'http://chart.apis.google.com/chart?chs=%dx%d&cht=qr&chld=%s&chl=%s';
  QrImgCorrStr: array [TQrImage_ErrCorrLevel] of string = ('L', 'M', 'Q', 'H');



procedure WinInet_HttpGet(const Url: string; Stream: TStream);
const
  BuffSize = 1024 * 1024;
var
  hInter: HINTERNET;
  UrlHandle: HINTERNET;
  BytesRead: DWORD;
  Buffer: Pointer;
begin
  hInter := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if Assigned(hInter) then
  begin
    Stream.Seek(0, 0);
    GetMem(Buffer, BuffSize);
    try
      UrlHandle := InternetOpenUrl(hInter, PChar(Url), nil, 0, INTERNET_FLAG_RELOAD, 0);
      if Assigned(UrlHandle) then
      begin
        repeat
          InternetReadFile(UrlHandle, Buffer, BuffSize, BytesRead);
          if BytesRead > 0 then
            Stream.WriteBuffer(Buffer^, BytesRead);
        until BytesRead = 0;
        InternetCloseHandle(UrlHandle);
      end;
    finally
      FreeMem(Buffer);
    end;
    InternetCloseHandle(hInter);
  end
end;


procedure GetQrCode(Width, Height: Word; Correction_Level: TQrImage_ErrCorrLevel; const Data: string; StreamImage: TMemoryStream);
Var
  EncodedURL: string;
begin
  EncodedURL := Format(UrlGoogleQrCode,
    [Width, Height, QrImgCorrStr[Correction_Level], HTTPEncode(Data)]);
  WinInet_HttpGet(EncodedURL, StreamImage);
end;


procedure TForm1.btnCopiaClick(Sender: TObject);
begin
  Image1.Picture.SavetoFile(editCaminho.Text);
  ShowMessage('Imagem salva em : ' + editCaminho.Text);
end;

procedure TForm1.btnEtiquetaClick(Sender: TObject);
var
  ImageStream: TMemoryStream;
  PngImage: TPngImage;
begin
  Image1.Picture := nil;
  ImageStream := TMemoryStream.Create;
  PngImage := TPngImage.Create;
  try
    try
      GetQrCode(StrToInt(Trim(MaskEdit1.Text)), StrToInt(Trim(MaskEdit2.Text)),
        TQrImage_ErrCorrLevel(ComboBox1.ItemIndex), Memo1.Lines.Text,
        ImageStream);
      if ImageStream.Size > 0 then
      begin
        ImageStream.Position := 0;
        PngImage.LoadFromStream(ImageStream);
        Image1.Picture.Assign(PngImage);
      end;

    except
      on E: exception do
        ShowMessage(E.Message);
    end;

  finally
    ImageStream.Free;
    PngImage.Free;

end;

end;

end.
