unit Dao.ConexaoFiredac;

interface

uses
  Data.DB,
  Model.Interfaces,
  System.SysUtils,
  FireDAC.Comp.Client,
  FireDAC.Phys.PGDef,
  FireDAC.Phys.PG,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Def,
  FireDAC.Comp.UI,
  FireDAC.VCLUI.Wait,
  System.Classes;

type
  TConexao = class(TInterfacedObject, iConexao)
     private
       FConfiguracao : iConfiguracao;
       FConnection: TFDConnection;
     public
       constructor Create(Configuracao : iConfiguracao);
       destructor Destroy; override;
       class function New(Configuracao : iConfiguracao) : iConexao;
       function Conneted : TCustomConnection;
  end;

implementation

{ TConexao }

function TConexao.Conneted: TCustomConnection;
begin
  try
    FConnection.Params.DriverId := FConfiguracao.DriverId;
    FConnection.Params.DataBase := FConfiguracao.DataBase;
    FConnection.Params.UserName := FConfiguracao.UserName;
    FConnection.Params.Password := FConfiguracao.Password;
    FConnection.Params.Add('Port=' + FConfiguracao.Port);
    FConnection.Params.Add('Server=' + FConfiguracao.Server);

    if not FConfiguracao.Schema.IsEmpty then
    begin
      FConnection.Params.Add('MetaCurSchema=' + FConfiguracao.Schema);
      FConnection.Params.Add('MetaDefSchema='+ FConfiguracao.Schema);
    end;

    if not FConfiguracao.Locking.IsEmpty then
       FConnection.Params.Add('LockingMode=' + FConfiguracao.Schema);

    FConnection.Connected := True;

    Result := FConnection;
  except
     raise Exception.Create('N�o foi poss�vel conectar ao banco de dados');
  end;
end;

constructor TConexao.Create(Configuracao : iConfiguracao);
begin
  FConnection   := TFDConnection.Create(nil);
  FConfiguracao := Configuracao;
end;

destructor TConexao.Destroy;
begin
  FConnection.DisposeOf;
  inherited;
end;

class function TConexao.New(Configuracao : iConfiguracao) : iConexao;
begin
  Result := Self.Create(Configuracao);
end;

end.
