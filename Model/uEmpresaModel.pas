unit uEmpresaModel;

interface

uses System.SysUtils;

type
  TEmpresaModel = class

  private
    FDescricao: string;
    FCodigo: Integer;

    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: string);

  public
    procedure Carregar(ACodigo: Integer);

    property Codigo: Integer read FCodigo write SetCodigo;
    property Descricao: string read FDescricao write SetDescricao;

  end;

implementation

uses uEmpresaDao;

{ TEmpresa }

procedure TEmpresaModel.Carregar;
var vEmpresaDao: TEmpresaDao;
begin
  vEmpresaDao := TEmpresaDao.Create;

  try
    vEmpresaDao.carregar(Self, ACodigo);
  finally
    FreeAndNil(vEmpresaDao);
  end;
end;

procedure TEmpresaModel.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TEmpresaModel.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
