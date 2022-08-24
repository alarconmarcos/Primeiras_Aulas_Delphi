unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormulario = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formulario: TFormulario;

implementation

{$R *.DFM}

procedure TFormulario.Button1Click(Sender: TObject);
begin
formulario.Color:=clblue;
formulario.caption:='Agora a cor é azul';
end;

procedure TFormulario.Button2Click(Sender: TObject);
begin
formulario.Color:=clblack;
formulario.Caption:='Agora a cor é preto';
end;

end.
