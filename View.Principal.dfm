object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 253
  Caption = 'frmPrincipal'
  ClientHeight = 529
  ClientWidth = 854
  Color = 6619438
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 850
    Height = 525
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel5'
    Color = 3289650
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = -7
    ExplicitWidth = 865
    ExplicitHeight = 652
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 850
      Height = 33
      Align = alTop
      Anchors = [akLeft, akRight]
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = 789516
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      OnMouseDown = Panel1MouseDown
      ExplicitWidth = 865
      object imgClose: TImage
        Left = 818
        Top = 0
        Width = 32
        Height = 33
        Cursor = crHandPoint
        Align = alRight
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000000C
          0000000C100600000006E580A40000000467414D410000B18F0BFC6105000000
          206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
          98000017709CBA513C000000097048597300000EC300000EC301C76FA8640000
          0002624B47440000AA8D23320000000774494D4507E604080B35108F2EE12300
          00002574455874646174653A63726561746500323032322D30342D3038543131
          3A35333A31362B30303A3030CD3427C90000002574455874646174653A6D6F64
          69667900323032322D30342D30385431313A35333A31362B30303A3030BC699F
          75000000E249444154384F9592410AC23010455B8FA00B45F0226EC423B8513C
          8DD01B684B558287D13348457A932EAC69FE9FA22961DA97C5679299F9493B51
          ED78EDA0A771FD69561C470391BAB68FA32868906FA1828D51B0667D10E44777
          68F6840A97993827D8B8EEA1C2791A32C2B9344E53A8C5E5DF16AC7B30BD7DA2
          6A847840631F2688D11B2AE43934CBA082316A631FCFC87B91C59DEB371E51BB
          C4CDAA5708AA25F407775E558C0E541D5C2F3415A684763E9D3E7548D47F1EB5
          FFD4E160F854705F37C2C6710315FA4F05F30253974E68501A68EB9CB0BE37FF
          46B68FA39C7F0107BB7C6879C2E78A0000000049454E44AE426082}
        OnClick = imgCloseClick
        ExplicitLeft = 712
        ExplicitHeight = 25
      end
      object imgMinimize: TImage
        Left = 754
        Top = 0
        Width = 32
        Height = 33
        Cursor = crHandPoint
        Align = alRight
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
          0000001810040000001AEE29300000000467414D410000B18F0BFC6105000000
          206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
          98000017709CBA513C00000002624B47440000AA8D2332000000097048597300
          0000600000006000F06B42CF0000000774494D4507E604080B3425C086144100
          0000494944415448C763601805A360148C0282801199F3FF9F880803E3BC790C
          FF3939C933EDFB7786FFC9C98C4CAF5FC384985015FCFBC7C0F0E70F654EFEF7
          6FC0826B148C8251305401005FEC0FF6E81D58FA000000257445587464617465
          3A63726561746500323032322D30342D30385431313A35323A33372B30303A30
          30C6A4403E0000002574455874646174653A6D6F6469667900323032322D3034
          2D30385431313A35323A33372B30303A3030B7F9F8820000000049454E44AE42
          6082}
        OnClick = imgMinimizeClick
        ExplicitLeft = 769
        ExplicitTop = -6
      end
      object imgMax: TImage
        Left = 786
        Top = 0
        Width = 32
        Height = 33
        Cursor = crHandPoint
        Align = alRight
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000000C
          0000000C100600000006E580A40000000467414D410000B18F0BFC6105000000
          206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
          98000017709CBA513C000000097048597300000EC300000EC301C76FA8640000
          0002624B47440000AA8D23320000000774494D4507E6040E0E0E25C68F570F00
          00002574455874646174653A63726561746500323032322D30342D3134543134
          3A31343A33372B30303A303046C8E8630000002574455874646174653A6D6F64
          69667900323032322D30342D31345431343A31343A33372B30303A3030379550
          DF0000007A49444154384F63FCFF0F04199B181841307A160318A83C81D0E482
          DBD10CFF4170993A13C4E028498844511184A614141743CD9DC9F81F0C1AA012
          0C0C8C6080E0930AD0CD6382D23403A3161004A3161004D07C101D0DE1023308
          186C3282D0E402BF7310BAE70C132C4B43047A7B2134A5A0E70CC4DCE52F00EE
          4E33F6FE6A4C300000000049454E44AE426082}
        OnClick = imgMaxClick
        ExplicitLeft = 801
        ExplicitTop = -6
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 33
      Width = 850
      Height = 492
      Align = alClient
      Anchors = []
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = 3289650
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      ExplicitWidth = 865
      ExplicitHeight = 619
      object Panel3: TPanel
        Left = 208
        Top = 0
        Width = 642
        Height = 492
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'Panel1'
        Color = 2960685
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        ExplicitWidth = 657
        ExplicitHeight = 619
        object RichEdit: TRichEdit
          AlignWithMargins = True
          Left = 6
          Top = 35
          Width = 630
          Height = 451
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          BorderStyle = bsNone
          Color = 3288877
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          Zoom = 100
          ExplicitLeft = 0
          ExplicitTop = 29
          ExplicitWidth = 657
          ExplicitHeight = 590
        end
        object PN_EVENTOS: TPanel
          Tag = 25
          Left = 616
          Top = 598
          Width = 49
          Height = 41
          Caption = 'PN_EVENTOS'
          TabOrder = 1
          Visible = False
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 642
          Height = 29
          Align = alTop
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Caption = 'Panel4'
          ShowCaption = False
          TabOrder = 2
          ExplicitWidth = 657
          object lbStatus: TLabel
            Left = 9
            Top = 6
            Width = 4
            Height = 16
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 11104377
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label2: TLabel
            Left = 9
            Top = 11
            Width = 148
            Height = 20
            Caption = 'Insira a Cl'#225'usula SQL:'
            Color = 15884544
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 13264128
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object frmPrincipal: TPanel
        Left = 0
        Top = 0
        Width = 202
        Height = 492
        Align = alLeft
        Anchors = [akBottom]
        BevelOuter = bvNone
        Caption = 'frmPrincipal'
        ShowCaption = False
        TabOrder = 1
        ExplicitTop = 6
        object btGeraCodigo: TPanel
          Tag = 10
          AlignWithMargins = True
          Left = 5
          Top = 86
          Width = 192
          Height = 41
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          BevelOuter = bvNone
          Caption = 'SQL to Delphi'
          Color = 15884544
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = btGeraCodigoClick
          ExplicitLeft = -8
          ExplicitTop = 203
          ExplicitWidth = 202
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 202
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            Left = 11
            Top = 16
            Width = 48
            Height = 13
            Caption = 'FDQuery:'
            Color = 15884544
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 13264128
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object ED_FDQuery: TEdit
            Left = 11
            Top = 35
            Width = 178
            Height = 23
            BorderStyle = bsNone
            Color = 3288877
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Panel7: TPanel
            Left = 11
            Top = 60
            Width = 178
            Height = 1
            BevelOuter = bvNone
            Caption = 'Panel7'
            Color = 15884544
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
          end
        end
      end
    end
  end
end
