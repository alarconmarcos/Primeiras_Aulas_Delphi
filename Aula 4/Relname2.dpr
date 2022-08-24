program Relname2;

uses
  Forms,
  Urelname2 in 'Urelname2.pas' {FPrinc};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
