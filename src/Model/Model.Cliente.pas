unit Model.Cliente;

interface

uses
  System.SysUtils,
  System.Classes,
  SimpleAttributes;

//entidade de mapeamento
type
  [Tabela('CLIENTE')]
  TCliente = class
    private
    Fid: integer;
    Ftipo: string;
    FcpfCnpj: String;
    FidPessoa : Integer;
    public
      [Campo('ID'), Pk, AutoInc]
      property id: integer read Fid write Fid;
      [Campo('IDPESSOA')]
      property idPessoa: integer read FidPessoa write FidPessoa;
      [Campo('TIPO')]
      property tipo: string read Ftipo write Ftipo;
      [Campo('CPF_CNPJ')]
      property cpfCnpj: String read FcpfCnpj write FcpfCnpj;

  end;

implementation

end.
