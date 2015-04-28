program prjCashbillExample;

uses
  Forms,
  Example in 'Example.pas' {frmExample},
  Linkhub in 'Linkhub\Linkhub.pas',
  Popbill in 'Popbill\Popbill.pas',
  PopbillCashbill in 'PopbillCashbill\PopbillCashbill.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmExample, frmExample);
  Application.Run;
end.
