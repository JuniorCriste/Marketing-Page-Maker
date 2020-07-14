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
  countDuvs := countDuvs + 1;
  codDuvs.Lines.Add('<div class="duvida"><h2>' + duvida.Text + '</h2>');
  codDuvs.Lines.Add('<div class="resposta">' + resposta.Text + '</div> </div>');
  if countDuvs = avancado.Qmod.Value then
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
  codDuvs.Lines.Clear;
  txt1.Caption:= 'Título da Dúvida ' + IntToStr(countDuv);
  txt2.Caption:= 'Resposta da Dúvida ' + IntToStr(countDuv);
end;


end.

