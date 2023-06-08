unit controller.interfaces;

interface

uses
  controller.dto.interfaces, Model.Interfaces;

type
  iController = interface
    function Cliente : iCliente;
    function Pessoa : iPessoa;
    function Produto : iProduto;
    function Configuracao : iConfiguracao;
    function Endereco : iEndereco;
  end;

implementation

end.
