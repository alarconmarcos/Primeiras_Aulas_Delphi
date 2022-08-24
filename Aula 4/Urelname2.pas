unit Urelname2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus, Buttons, ExtCtrls, ComCtrls;

type
  TFPrinc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    LBLista: TListBox;
    Label3: TLabel;
    Ednome: TEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    MMInserir: TMenuItem;
    MMExcluir: TMenuItem;
    MMClassificar: TMenuItem;
    MMLimpar: TMenuItem;
    Manuteno1: TMenuItem;
    Cores1: TMenuItem;
    Preto1: TMenuItem;
    Verde1: TMenuItem;
    Azul1: TMenuItem;
    Padro1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Panel1: TPanel;
    SBInserir: TSpeedButton;
    SBClassificar: TSpeedButton;
    SBLimpar: TSpeedButton;
    SBExcluir: TSpeedButton;
    SBSair: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    PopupMenu1: TPopupMenu;
    PMInserir: TMenuItem;
    PMExcluir: TMenuItem;
    PMClassificar: TMenuItem;
    PMLimpar: TMenuItem;
    N1: TMenuItem;
    Sobre2: TMenuItem;
    Sair2: TMenuItem;
    Sair3: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Sair1Click(Sender: TObject);
    procedure Preto1Click(Sender: TObject);
    procedure Verde1Click(Sender: TObject);
    procedure Azul1Click(Sender: TObject);
    procedure Padro1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBSairClick(Sender: TObject);
    procedure SBLimparClick(Sender: TObject);
    procedure SBClassificarClick(Sender: TObject);
    procedure SBExcluirClick(Sender: TObject);
    procedure SBInserirClick(Sender: TObject);
    procedure EdnomeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;

implementation

{$R *.DFM}

procedure TFPrinc.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPrinc.Preto1Click(Sender: TObject);
begin
  FPrinc.color:=clblack
end;

procedure TFPrinc.Verde1Click(Sender: TObject);
begin
  FPrinc.color:=ClGreen  
end;

procedure TFPrinc.Azul1Click(Sender: TObject);
begin
  FPrinc.color:=ClBlue
end;

procedure TFPrinc.Padro1Click(Sender: TObject);
begin
  FPrinc.color:=ClSilver
end;

procedure TFPrinc.Sair2Click(Sender: TObject);
begin
  close;
end;

procedure TFPrinc.Timer1Timer(Sender: TObject);
begin
  statusbar1.panels[0].text:=application.hint;
  statusbar1.Panels[1].text:=datetostr(date);
  statusbar1.panels[2].text:=timetostr(time);
end;

procedure TFPrinc.FormShow(Sender: TObject);
begin
  messagedlg('Olá, bem vindo ao nosso Programa!',mtconfirmation,[mbok],0);
end;

procedure TFPrinc.SBSairClick(Sender: TObject);
begin
  if messagedlg('Deseja Realmente Sair do Programa?',mtconfirmation,[mbyes,mbno],0) =  mryes then
  close//Dará a mensagem se deseja sair se sim sairá, se não, não sairá.
end;

procedure TFPrinc.SBLimparClick(Sender: TObject);
begin
  if messagedlg('Deseja realmente limpar os nomes cadastrados?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    lblista.clear;
    ednome.clear;
    lblista.sorted:=false;
    ednome.setfocus
  end;

end;

procedure TFPrinc.SBClassificarClick(Sender: TObject);
begin
  lblista.sorted:=true;
  ednome.setfocus;
end;

procedure TFPrinc.SBExcluirClick(Sender: TObject);
begin
  if messagedlg('Deseja Excluir o Nome Selecionado?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    lblista.items.delete(lblista.itemindex);
    ednome.setfocus
  end;
end;

procedure TFPrinc.SBInserirClick(Sender: TObject);
begin
  if ednome.text <> '' then
  begin
    lblista.items.add(ednome.text);
    ednome.clear;
    ednome.setfocus;
  end;
end;

procedure TFPrinc.EdnomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9']then
    begin
      key:=#0;
    end;

  if key = #13 then
    begin
      if ednome.text <> '' then
        begin
          lblista.items.add(ednome.text);
          ednome.clear;
          ednome.setfocus;
        end;
    end;
end;

end.
