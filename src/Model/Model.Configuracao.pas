unit Model.Configuracao;

interface

uses
  System.SysUtils,
  LocalCache4D,
  Model.Interfaces;

type
 TConfiguracao = class(TInterfacedObject, iConfiguracao)
   private
   public
     constructor Create;
     destructor Destroy; override;
     class function New : iConfiguracao;
     function DriverID(aParam:  String): iConfiguracao ; overload;
     function DriverID: String; overload;
     function DataBase(aParam:  String): iConfiguracao ; overload;
     function DataBase: String ; overload;
     function UserName(aParam:  String): iConfiguracao ; overload;
     function UserName: String ; overload;
     function Password(aParam:  String): iConfiguracao ; overload;
     function Password: String ; overload;
     function Port(aParam:  String): iConfiguracao ; overload;
     function Port: String ; overload;
     function Server(aParam:  String): iConfiguracao ; overload;
     function Server: String ; overload;
     function Schema(aParam:  String): iConfiguracao ; overload;
     function Schema: String ; overload;
     function Locking(aParam : String): iConfiguracao ; overload;
     function Locking: String ; overload;
 end;

implementation

{ TConfiguracao }

constructor TConfiguracao.Create;
begin
   if not FileExists('conf.lc4') then
      LocalCache.SaveToStorage('conf.lc4');

   LocalCache
     .LoadDatabase('conf.lc4')
     .Instance('configuracao');

end;

function TConfiguracao.DataBase: String;
begin
   Result := LocalCache.GetItem('DataBase');
end;

function TConfiguracao.DataBase(aParam: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('DataBase',aParam);
end;

destructor TConfiguracao.Destroy;
begin
  LocalCache.SaveToStorage('conf.lc4');
  inherited;
end;

function TConfiguracao.DriverID(aParam: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('DriverID', aParam);
end;

function TConfiguracao.DriverID: String;
begin
  Result := LocalCache.GetItem('DriverID');
end;

function TConfiguracao.Locking(aParam: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Locking', aParam);
end;

function TConfiguracao.Locking: String;
begin
  Result := LocalCache.GetItem('Locking');
end;

class function TConfiguracao.New: iConfiguracao;
begin
  Result := Self.Create;
end;

function TConfiguracao.Password: String;
begin
  Result := LocalCache.GetItem('Password');
end;

function TConfiguracao.Password(aParam: String): iConfiguracao;
begin
   Result := Self;
   LocalCache.SetItem('Password', aParam);
end;

function TConfiguracao.Port: String;
begin
  Result := LocalCache.GetItem('Port');
end;

function TConfiguracao.Port(aParam: String): iConfiguracao;
begin
   Result := Self;
   LocalCache.SetItem('Port', aParam);
end;

function TConfiguracao.Schema: String;
begin
  Result := LocalCache.GetItem('Schema');
end;

function TConfiguracao.Schema(aParam: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Schema', aParam);
end;

function TConfiguracao.Server(aParam: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Server', aParam);
end;

function TConfiguracao.Server: String;
begin
   Result := LocalCache.GetItem('Server');
end;

function TConfiguracao.UserName(aParam: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('UserName', aParam);
end;

function TConfiguracao.UserName: String;
begin
  Result := LocalCache.GetItem('UserName');
end;

end.
