unit uClienteController;

interface

uses uClienteModel, System.SysUtils, FireDAC.Comp.Client;

type
  TClienteController = class

  private
    FClienteModel: TClienteModel;

  public
    constructor Create;
    destructor Destroy; override;

    function Salvar: Boolean;
    function Get: TFDQuery;

    property ClienteModel: TClienteModel read  FClienteModel write FClienteModel;
  end;

implementation

{ TClienteController }

constructor TClienteController.Create;
begin
  FClienteModel := TClienteModel.Create;
end;

destructor TClienteController.Destroy;
begin
  FreeAndNil(FClienteModel);
  inherited;
end;

function TClienteController.Get: TFDQuery;
begin
  Result := FClienteModel.Get;
end;

function TClienteController.Salvar: Boolean;
begin
  Result := FClienteModel.Salvar;
end;

end.
