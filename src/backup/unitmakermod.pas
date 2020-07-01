unit unitmakermod;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TMakerMod }

  TMakerMod = class(TForm)
    cadMod: TButton;
    codMods: TMemo;
    txt1: TLabel;
    modname: TEdit;
    Label1: TLabel;
    txt2: TLabel;
    modau: TMemo;
    procedure cadModClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  MakerMod: TMakerMod;
  countMod: integer;


implementation
uses unitmaker;

{$R *.lfm}

{ TMakerMod }

procedure TMakerMod.cadModClick(Sender: TObject);
begin
  countMod := countMod + 1;
  codMods.Lines.Add('<modulo> <tmodulo>' + modname.Text + '</tmodulo>');
  codMods.Lines.Add(modau.Text);
  codMods.Lines.Add('</modulo>');
  codMods.Lines.Add('   ');

  txt1.Caption:= 'Nome do Módulo ' + IntToStr(countMod);
  txt2.Caption:= 'Aulas do Módulo ' + IntToStr(countMod);

  if countMod > StrToInt(Maker.Qmod.Text) then
  begin
    MakerMod.Close;
  end;

end;

procedure TMakerMod.FormCreate(Sender: TObject);
begin

end;

procedure TMakerMod.FormShow(Sender: TObject);
begin
  countMod := 1;
  codMods.Lines.Clear;
  txt1.Caption:= 'Nome do Módulo ' + IntToStr(countMod);
  txt2.Caption:= 'Aulas do Módulo ' + IntToStr(countMod);
end;

end.

