unit UImagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Imagem: TImage;
    BEsquerda: TButton;
    BAcima: TButton;
    BDireita: TButton;
    BAbaixo: TButton;
    procedure BAcimaClick(Sender: TObject);
    procedure BAbaixoClick(Sender: TObject);
    procedure BDireitaClick(Sender: TObject);
    procedure BEsquerdaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.BAcimaClick(Sender: TObject);
begin
Imagem.Top:=Imagem.top-10;
end;

procedure TForm1.BAbaixoClick(Sender: TObject);
begin
Imagem.Top:=Imagem.top+10;
end;

procedure TForm1.BDireitaClick(Sender: TObject);
begin
Imagem.left:=Imagem.left+10;
end;

procedure TForm1.BEsquerdaClick(Sender: TObject);
begin
Imagem.left:=Imagem.left-10;
end;

end.
