program UpDownMain;

uses
  Forms,
  UpDown in 'UpDown.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
