unit uSistemaController;

interface

uses uConexao, System.SysUtils, uEmpresaModel,
     FireDAC.DApt.Intf, FireDAC.DApt;

type
  TSistemaController = class

  private
    FConexao     : TConexao;
    FEmpresaModel: TEmpresaModel;

    class var FInstancia: TSistemaController;

  public
    Constructor Create;
    Destructor Destroy; Override;

    procedure CarregarEmpresa(ACodigoEmpresa: Integer);

    class function GetInstancia: TSistemaController;

    property Conexao: TConexao read FConexao write FConexao;
    property EmpresaModel: TEmpresaModel read FEmpresaModel write FEmpresaModel;

  end;

implementation

{ TSistemaController }

procedure TSistemaController.CarregarEmpresa(ACodigoEmpresa: Integer);
begin
  FEmpresaModel.Carregar(ACodigoEmpresa);
end;

constructor TSistemaController.Create;
begin
  FConexao      := TConexao.Create;
  FEmpresaModel := TEmpresaModel.Create();
end;

destructor TSistemaController.Destroy;
begin
  FreeAndNil(FEmpresaModel);
  FreeAndNil(FConexao);

  inherited;
end;

class function TSistemaController.GetInstancia: TSistemaController;
begin
  if not Assigned(Self.FInstancia) then
  begin
    Self.FInstancia := TSistemaController.Create();
  end;

  Result := Self.FInstancia;
end;

end.
