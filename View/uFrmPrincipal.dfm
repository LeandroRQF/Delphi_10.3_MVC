object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Projeto MVC com conceitos de Orienta'#231#227'o a Objeto'
  ClientHeight = 356
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    723
    356)
  PixelsPerInch = 96
  TextHeight = 13
  object btnTestarConexao: TButton
    Left = 618
    Top = 306
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Testar Conex'#227'o'
    TabOrder = 0
    OnClick = btnTestarConexaoClick
    ExplicitLeft = 608
    ExplicitTop = 296
  end
  object stbPrincipal: TStatusBar
    Left = 0
    Top = 337
    Width = 723
    Height = 19
    Panels = <
      item
        Width = 80
      end
      item
        Width = 50
      end>
    ExplicitLeft = 232
    ExplicitTop = 112
    ExplicitWidth = 0
  end
  object ambPrincipal: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 723
    Height = 25
    ActionManager = acmPrincipal
    Caption = 'ambPrincipal'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
    ExplicitLeft = 288
    ExplicitTop = 176
    ExplicitWidth = 150
    ExplicitHeight = 29
  end
  object acmPrincipal: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Cliente
              end
              item
                Action = Sair
              end>
            Caption = '&Cadastro'
          end>
        ActionBar = ambPrincipal
      end>
    Left = 608
    Top = 80
    StyleName = 'Platform Default'
    object Cliente: TAction
      Category = '&Cadastro'
      Caption = '&Cliente'
      OnExecute = ClienteExecute
    end
    object Sair: TAction
      Category = '&Cadastro'
      Caption = '&Sair'
      OnExecute = SairExecute
    end
  end
end
