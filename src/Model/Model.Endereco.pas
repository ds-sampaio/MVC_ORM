unit Model.Endereco;

interface

uses
  SimpleAttributes;


type
  [Tabela('ENDERECOS')]
  TEndereco = class
    private
    Fid: integer;
    Flogradouro: string;
    Fbairro: string;
    Fcep: string;
    Fnumero: string;
    FidPessoa: integer;
    public
      [Campo('ID'), Pk, AutoInc]
      property id: integer read Fid write Fid;
      [Campo('LOGRADOURO')]
      property logradouro: string read Flogradouro write Flogradouro;
      [Campo('BAIRRO')]
      property bairro: string read Fbairro write Fbairro;
      [Campo('CEP')]
      property cep: string read Fcep write Fcep;
      [Campo('NUMERO')]
      property numero: string read Fnumero write Fnumero;
      [Campo('ID_PESSOA')]
      property idPessoa: integer read FidPessoa write FidPessoa;
  end;

implementation

end.
