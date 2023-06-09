unit Model.Interfaces;

interface

uses
  Data.DB;

type
  iConexao = interface
    ['{314E0443-ADC7-443B-A177-C6322C5577FB}']
    function Conneted : TCustomConnection;
  end;

  iConfiguracao = interface
    ['{5E57D949-1A26-42C9-9946-A8BC0936A281}']
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

  iResource = interface
    ['{7CA2B2CF-2BE9-4747-826B-C65AC9D1FD01}']
    function Conexao : iConexao;
    function Configuracao : iConfiguracao;
  end;

implementation

end.
