program Cores;

uses
  Forms,
  Unit1 in '..\Unit1.pas' {Formulario};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormulario, Formulario);
  Application.Run;
end.
