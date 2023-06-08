program MVC_ORM;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {Form1},
  Model.Configuracao in 'Model\Model.Configuracao.pas',
  Model.Interfaces in 'Model\Model.Interfaces.pas',
  Dao.ConexaoFiredac in 'Dao\Dao.ConexaoFiredac.pas',
  Dao.Interfaces.CRUD in 'Dao\Dao.Interfaces.CRUD.pas',
  Dao.CRUDSimpleORM in 'Dao\Dao.CRUDSimpleORM.pas',
  Dao.resource.factory in 'Dao\resource\Dao.resource.factory.pas',
  Model.Cliente in 'Model\Model.Cliente.pas',
  Model.Endereco in 'Model\Model.Endereco.pas',
  Model.Produto in 'Model\Model.Produto.pas',
  Model.Pedido in 'Model\Model.Pedido.pas',
  Model.ItensPedido in 'Model\Model.ItensPedido.pas',
  Model.Pessoa in 'Model\Model.Pessoa.pas',
  controller.dto.interfaces in 'controller\dto\controller.dto.interfaces.pas',
  controller.dto.cliente in 'controller\dto\controller.dto.cliente.pas',
  controller.dto.pessoa in 'controller\dto\controller.dto.pessoa.pas',
  controller.interfaces in 'controller\controller.interfaces.pas',
  controller.controller in 'controller\controller.controller.pas',
  View.Configuracao in 'View\View.Configuracao.pas' {frmConfiguracao},
  View.Produto in 'View\View.Produto.pas' {frmProduto},
  controller.dto.produto in 'controller\dto\controller.dto.produto.pas',
  View.Cliente in 'View\View.Cliente.pas' {frmCliente},
  controller.dto.endereco in 'controller\dto\controller.dto.endereco.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
