unit unitmakermod;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons;

type

  { TMakerMod }

  TMakerMod = class(TForm)
    addatv: TImage;
    addcertificado: TImage;
    addbonus: TImage;
    cadMod: TButton;
    codMods: TMemo;
    addaula: TImage;
    txt1: TLabel;
    modname: TEdit;
    Label1: TLabel;
    txt2: TLabel;
    modau: TMemo;
    procedure addatvClick(Sender: TObject);
    procedure addaulaClick(Sender: TObject);
    procedure addbonusClick(Sender: TObject);
    procedure addcertificadoClick(Sender: TObject);
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
var
  linhas, countLinhas: integer;
begin            
  countMod := countMod + 1;

  linhas:= modau.lines.Count - 1;
  codMods.Lines.Add('<div class="modbox"> Módulo ' + IntToStr(countMod - 1) + ' <h2>' + modname.Text + '</h2>');
  codMods.Lines.Add('<p class="aulas">');
  for countLinhas:= 0 to linhas do
  begin
  codMods.Lines.Add('<br />  <b>' + modau.Lines[countLinhas] + '</b>');
  end;
  codMods.Lines.Add('</div>');

  txt1.Caption:= 'Nome do Módulo ' + IntToStr(countMod);
  txt2.Caption:= 'Aulas do Módulo ' + IntToStr(countMod);

  if countMod > StrToInt(Maker.Qmod.Text) then
  begin
    Maker.Visible:=true;
    MakerMod.Close;
  end;

  modname.Text:= 'Nome do Módulo';
  modau.Lines.Clear;
  modau.Lines.Add('Aula 00');
  modau.Lines.Add('Aula 01');
  modau.Lines.Add('Aula 02');
  modau.Lines.Add('Aula 03');
  modau.Lines.Add('Aula ...');

end;

procedure TMakerMod.addaulaClick(Sender: TObject);
begin
  modau.SelText:= '<aula/> ';
end;

procedure TMakerMod.addbonusClick(Sender: TObject);
begin
  modau.SelText:= '<bonus/> ';
end;

procedure TMakerMod.addcertificadoClick(Sender: TObject);
begin
  modau.SelText:= '<certificado/> ';
end;

procedure TMakerMod.addatvClick(Sender: TObject);
begin
  modau.SelText:= '<exercicio/> ';
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

