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
  private

  public

  end;

var
  makerDuvidas: TmakerDuvidas;
  countDuv: integer;

implementation

uses
  unitmaker;

{$R *.lfm}

{ TmakerDuvidas }

procedure TmakerDuvidas.cadDuvClick(Sender: TObject);
begin
  codDuvs.Lines.Add('<div class="pergunta"><h2>' + duvida.Text + '</h2>');
  codDuvs.Lines.Add('<div class="resposta">' + resposta.Text);
end;


end.

