program mpm;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, lazcontrols, runtimetypeinfocontrols, unitsMod, unitmaker,
  unitmakermod, unitwallpaper, unitviewcode, unitAvancado
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Marketing-Page-Maker';
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TsMod, sMod);
  Application.CreateForm(TMaker, Maker);
  Application.CreateForm(TMakerMod, MakerMod);
  Application.CreateForm(Twallpaper, wallpaper);
  Application.CreateForm(Tcodfonte, codfonte);
  Application.CreateForm(Tavancado, avancado);
  Application.Run;
end.

