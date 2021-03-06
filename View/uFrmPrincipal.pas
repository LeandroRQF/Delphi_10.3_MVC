unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uSistemaController,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, uFrmCliente;

  type
  TFrmPrincipal = class(TForm)
    btnTestarConexao: TButton;
    stbPrincipal: TStatusBar;
    acmPrincipal: TActionManager;
    Cliente: TAction;
    ambPrincipal: TActionMainMenuBar;
    Sair: TAction;
    procedure btnTestarConexaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ClienteExecute(Sender: TObject);
    procedure SairExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uConexao;

procedure TFrmPrincipal.btnTestarConexaoClick(Sender: TObject);
var vConexao: TConexao;
begin
  vConexao := TConexao.Create;
  vConexao.GetConn.Connected := True;

  try
    if vConexao.GetConn.Connected then
      ShowMessage('Conectado');
  finally
    FreeAndNil(vConexao);
  end;
end;

procedure TFrmPrincipal.ClienteExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCliente, FrmCliente);

  try
    FrmCliente.ShowModal;
  finally
    FrmCliente.Release;
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  TSistemaController.GetInstancia();
  TSistemaController.GetInstancia().CarregarEmpresa(1);

  stbPrincipal.Panels[0].Text := 'Vers�o: 1.0';

  stbPrincipal.Panels[1].Text := 'Empresa: ' +
                                 FormatFloat('0000', TSistemaController.GetInstancia().EmpresaModel.Codigo) + ' - ' +
                                                     TSistemaController.GetInstancia().EmpresaModel.Descricao;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  TSistemaController.GetInstancia().Destroy();
end;

procedure TFrmPrincipal.SairExecute(Sender: TObject);
begin
  Close;
end;

//Exibe inst�ncias no projeto que n�o foram encerradas
initialization
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

end.
