program ITim.BatchGenerator;

uses
  Vcl.Forms,
  ITim.BatchGenerator.Main in 'ITim.BatchGenerator.Main.pas' {BatchGenerator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBatchGenerator, BatchGenerator);
  Application.Run;
end.
