unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdiNome: TEdit;
    ListNomes: TListBox;
    BIncluir: TButton;
    BClassificar: TButton;
    BExcluir: TButton;
    BLimpar: TButton;
    BSair: TButton;
    MainMenu1: TMainMenu;
    Ar1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Incluir1: TMenuItem;
    Classificar1: TMenuItem;
    Limpar1: TMenuItem;
    Excluir1: TMenuItem;
    Configuraes1: TMenuItem;
    Cor1: TMenuItem;
    Azul1: TMenuItem;
    Amarelo1: TMenuItem;
    Preto1: TMenuItem;
    Vermelho1: TMenuItem;
    Padro1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Status: TStatusBar;
    Timer1: TTimer;
    procedure BSairClick(Sender: TObject);
    procedure BIncluirClick(Sender: TObject);
    procedure BClassificarClick(Sender: TObject);
    procedure BLimparClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.BSairClick(Sender: TObject);
begin
Close
end;

procedure TForm1.BIncluirClick(Sender: TObject);
begin
Listnomes.Items.add(edinome.text);//Adiciona itens na caixa de listagem
edinome.clear;//limpa o edimone
edinome.setfocus;//leva o cursor para o edinome
end;

procedure TForm1.BClassificarClick(Sender: TObject);
begin
listnomes.sorted:=true;
edinome.setfocus;
end;

procedure TForm1.BLimparClick(Sender: TObject);
begin
listnomes.clear;
edinome.setfocus;
end;

procedure TForm1.BExcluirClick(Sender: TObject);
begin
listnomes.items.delete(listnomes.itemindex);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Status.panels[0].text:=application.hint;
Status.Panels[1].text:=datetostr(date);
Status.Panels[2].text:=timetostr(time);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Showmessage('Bem vindo ao Sistema de Cadastro de Funcionários');
end;

end.
