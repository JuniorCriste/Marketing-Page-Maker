unit unitAvancado;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, ExtCtrls;

type

  { Tavancado }

  Tavancado = class(TForm)
    img1: TImage;
    img2: TImage;
    img3: TImage;
    ok: TButton;
    img10: TImage;
    img11: TImage;
    img12: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    descricao2: TMemo;
    FPag: TPanel;
    OPcertificado: TCheckBox;
    OPgarantia: TCheckBox;
    OPseguro: TCheckBox;
    PAGblt: TCheckBox;
    PAGpp: TCheckBox;
    PAGelo: TCheckBox;
    PAGhpc: TCheckBox;
    PAGhpr: TCheckBox;
    PAGame: TCheckBox;
    PAGvis: TCheckBox;
    PAGmas: TCheckBox;
    PAGhot: TCheckBox;
    Panel1: TPanel;
    txt3: TLabel;
    txt2: TLabel;
    OpenMM: TButton;
    Qmod: TFloatSpinEdit;
    txt1: TLabel;
    favicon: TEdit;
    txt4: TLabel;
    txt5: TLabel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure okClick(Sender: TObject);
    procedure QmodChange(Sender: TObject);
  private

  public

  end;

var
  avancado: Tavancado;

implementation
uses
  unitmaker;

{$R *.lfm}

{ Tavancado }

procedure Tavancado.QmodChange(Sender: TObject);
begin
   if Qmod.Value < 1 then
  begin
    OpenMM.Enabled:= false;
    end else
    begin
    OpenMM.Enabled:= true;
  end;
end;

procedure Tavancado.okClick(Sender: TObject);
begin
  maker.Visible:= true;
  avancado.Visible:= false;
end;

procedure Tavancado.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  maker.Visible:= true;
  avancado.Visible:= false;
end;

end.

