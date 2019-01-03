object FrmCliente: TFrmCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Cliente'
  ClientHeight = 317
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 11
    Top = 35
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblNome: TLabel
    Left = 17
    Top = 62
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object edtCodigo: TEdit
    Left = 54
    Top = 32
    Width = 69
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 54
    Top = 59
    Width = 491
    Height = 21
    MaxLength = 80
    TabOrder = 1
  end
  object grdCliente: TDBGrid
    Left = 8
    Top = 119
    Width = 537
    Height = 186
    DataSource = dsCliente
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyUp = grdClienteKeyUp
    OnMouseUp = grdClienteMouseUp
  end
  object btnIncluir: TButton
    Left = 308
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 3
    OnClick = btnIncluirClick
  end
  object btnAlterar: TButton
    Left = 389
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 4
    OnClick = btnAlterarClick
  end
  object btnExcluir: TButton
    Left = 470
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btnExcluirClick
  end
  object btnNovo: TButton
    Left = 227
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object fdmTableCliente: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 464
    Top = 8
    object fdmTableClienteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object fdmTableClienteNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 80
      FieldName = 'NOME'
    end
  end
  object dsCliente: TDataSource
    DataSet = fdmTableCliente
    Left = 504
    Top = 8
  end
end
