object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Qr Code - C'#243'digo de Barras'
  ClientHeight = 360
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 360
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 0
    ExplicitLeft = 104
    ExplicitTop = -16
    ExplicitWidth = 842
    ExplicitHeight = 473
    object Label32: TLabel
      Left = 232
      Top = 479
      Width = 90
      Height = 13
      Caption = 'Nome da Empresa:'
    end
    object Label33: TLabel
      Left = 232
      Top = 498
      Width = 76
      Height = 13
      Caption = 'N'#250'mero do Lote'
    end
    object Label34: TLabel
      Left = 232
      Top = 517
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label35: TLabel
      Left = 126
      Top = 479
      Width = 90
      Height = 13
      Caption = 'Nome da Empresa:'
    end
    object Label36: TLabel
      Left = 126
      Top = 498
      Width = 76
      Height = 13
      Caption = 'N'#250'mero do Lote'
    end
    object Label37: TLabel
      Left = 126
      Top = 517
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label38: TLabel
      Left = 335
      Top = 479
      Width = 90
      Height = 13
      Caption = 'Nome da Empresa:'
    end
    object Label39: TLabel
      Left = 335
      Top = 498
      Width = 76
      Height = 13
      Caption = 'N'#250'mero do Lote'
    end
    object Label40: TLabel
      Left = 335
      Top = 517
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label41: TLabel
      Left = 448
      Top = 479
      Width = 90
      Height = 13
      Caption = 'Nome da Empresa:'
    end
    object Label42: TLabel
      Left = 448
      Top = 498
      Width = 76
      Height = 13
      Caption = 'N'#250'mero do Lote'
    end
    object Label43: TLabel
      Left = 448
      Top = 517
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label44: TLabel
      Left = 16
      Top = 479
      Width = 90
      Height = 13
      Caption = 'Nome da Empresa:'
    end
    object Label45: TLabel
      Left = 16
      Top = 498
      Width = 76
      Height = 13
      Caption = 'N'#250'mero do Lote'
    end
    object Label46: TLabel
      Left = 16
      Top = 517
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Image1: TImage
      Left = 16
      Top = 24
      Width = 321
      Height = 321
    end
    object Label1: TLabel
      Left = 351
      Top = 22
      Width = 113
      Height = 13
      Caption = 'Mensagem do QRCode:'
    end
    object Label2: TLabel
      Left = 349
      Top = 212
      Width = 106
      Height = 13
      Caption = 'Tamanho da Etiqueta:'
    end
    object Label3: TLabel
      Left = 351
      Top = 258
      Width = 127
      Height = 13
      Caption = 'N'#237'vel de Corre'#231#227'o de erro:'
    end
    object Label4: TLabel
      Left = 521
      Top = 212
      Width = 101
      Height = 13
      Caption = 'Caminho da Imagem:'
    end
    object Panel1: TPanel
      Left = 345
      Top = 37
      Width = 327
      Height = 164
      TabOrder = 0
      object Memo1: TMemo
        Left = 12
        Top = 16
        Width = 302
        Height = 132
        Color = clInfoBk
        Lines.Strings = (
          'http://www.devmedia.com.br/articles/listcomp.asp?'
          'txtsearch=movimenta%E7%E3o')
        TabOrder = 0
      end
    end
    object MaskEdit1: TMaskEdit
      Left = 348
      Top = 231
      Width = 72
      Height = 21
      EditMask = '!999;1'
      MaxLength = 3
      TabOrder = 1
      Text = '300'
    end
    object MaskEdit2: TMaskEdit
      Left = 445
      Top = 231
      Width = 70
      Height = 21
      EditMask = '!999;1'
      MaxLength = 3
      TabOrder = 2
      Text = '300'
    end
    object btnEtiqueta: TBitBtn
      Left = 351
      Top = 304
      Width = 114
      Height = 25
      Caption = 'Gera Etiqueta'
      TabOrder = 3
      OnClick = btnEtiquetaClick
    end
    object ComboBox1: TComboBox
      Left = 351
      Top = 277
      Width = 321
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = ' L - [padr'#227'o] Permite a recupera'#231#227'o de at'#233' 7% de perda de dados'
      Items.Strings = (
        ' L - [padr'#227'o] Permite a recupera'#231#227'o de at'#233' 7% de perda de dados'
        ' M - Permite a recupera'#231#227'o de at'#233' 15% de perda de dados'
        ' Q - Permite a recupera'#231#227'o de at'#233' 25% de perda de dados'
        ' H - Permite a recupera'#231#227'o de at'#233' 30% a perda de dados'
        '')
    end
    object Button1: TButton
      Left = 471
      Top = 304
      Width = 121
      Height = 25
      Caption = 'Copia da Imagem'
      TabOrder = 5
      OnClick = Button1Click
    end
    object editCaminho: TEdit
      Left = 521
      Top = 231
      Width = 151
      Height = 21
      TabOrder = 6
      Text = 'C:\nome.jpg'
    end
  end
end
