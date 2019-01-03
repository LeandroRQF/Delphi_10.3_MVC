unit uEmpresaDao;

interface

uses uEmpresaModel, FireDAC.Comp.Client, uSistemaController, System.SysUtils;

type
  TEmpresaDao = class
    procedure carregar(AEmpresaModel: TEmpresaModel; ACodigo: Integer);

  end;

implementation

{ TEmpresaDao }

procedure TEmpresaDao.carregar(AEmpresaModel: TEmpresaModel; ACodigo: Integer);
var vQuery: TFDQuery;
begin
  vQuery := TSistemaController.GetInstancia.Conexao.CriarQuery;

  try
    vQuery.Open('SELECT EMPRESA.CODIGO, EMPRESA.DESCRICAO FROM EMPRESA WHERE EMPRESA.CODIGO = :CODIGO', [ACodigo]);

    try
      AEmpresaModel.Codigo    := vQuery.FieldByName('CODIGO').Value;
      AEmpresaModel.Descricao := vQuery.FieldByName('DESCRICAO').AsString;
    finally
      vQuery.Close;
    end;

  finally
    FreeAndNil(vQuery);
  end;
end;

end.
