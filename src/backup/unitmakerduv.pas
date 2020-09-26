unit unitmakerDuv;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TmakerDuvidas }

  TmakerDuvidas = class(TForm)
    cadDuv: TButton;
    codDuvs: TMemo;
    Label1: TLabel;
    resposta: TMemo;
    duvida: TEdit;
    txt1: TLabel;
    txt2: TLabel;
    procedure cadDuvClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  makerDuvidas: TmakerDuvidas;
  countDuvs: integer;

implementation

uses
  unitmaker, unitavancado;

{$R *.lfm}

{ TmakerDuvidas }

procedure TmakerDuvidas.cadDuvClick(Sender: TObject);
begin
  codDuvs.Lines.Add('<div class="duvida"><h2>' + duvida.Text + '</h2>');
  codDuvs.Lines.Add('<div class="resposta">' + resposta.Text + '</div> </div>');
  countDuvs := countDuvs + 1;                              
  txt1.Caption:= 'Título da Dúvida ' + IntToStr(countDuvs);
  txt2.Caption:= 'Resposta da Dúvida ' + IntToStr(countDuvs);
  duvida.Text:='';
  resposta.Clear;
  duvida.SetFocus;
  if countDuvs > avancado.Qmod.Value then
  begin
  avancado.Visible:= true;
  makerDuvidas.Visible:= false;
  end;
end;

procedure TmakerDuvidas.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  avancado.Visible:= true;
  makerDuvidas.Visible:= false;
end;

procedure TmakerDuvidas.FormShow(Sender: TObject);
begin
  countDuvs := 1;
  codDuvs.Clear;
  txt1.Caption:= 'Título da Dúvida ' + IntToStr(countDuvs);
  txt2.Caption:= 'Resposta da Dúvida ' + IntToStr(countDuvs);
end;


end.

