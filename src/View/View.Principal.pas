unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  View.Configuracao, View.Produto, View.Cliente;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 LConfiguracao : TfrmConfiguracao;
begin
  LConfiguracao := TfrmConfiguracao.Create(nil);
  try
    LConfiguracao.ShowModal;
  finally
    LConfiguracao.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  LProduto : TfrmProduto;
begin
  LProduto := TfrmProduto.Create(nil);
  try
    LProduto.ShowModal;
  finally
    LProduto.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  LCliente : TfrmCliente;
begin
  LCliente := TfrmCliente.Create(nil);
  try
    LCliente.ShowModal;
  finally
    LCliente.Free;
  end;

end;

end.
