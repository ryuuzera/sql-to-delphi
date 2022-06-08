program SQLtoDelphi;

uses
  Vcl.Forms,
  View.Principal in '..\View.Principal.pas' {frmPrincipal},
  Controller.Principal in '..\Controller.Principal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
