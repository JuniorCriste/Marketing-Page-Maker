unit unitAvancado;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, ExtCtrls;

type

  { Tavancado }

  Tavancado = class(TForm)
    codigoAvancado: TMemo;
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
    IMGop: TPanel;
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
    procedure OpenMMClick(Sender: TObject);
    procedure QmodChange(Sender: TObject);
  private

  public

  end;

var
  avancado: Tavancado;

implementation
uses
  unitmaker, unitmakerduv;

{$R *.lfm}

{ Tavancado }

procedure exportarAvancado;
begin
  avancado.codigoAvancado.Clear;

  if (avancado.descricao2.Text <> '') and  (avancado.descricao2.Text <> ' ')  then
  begin
  avancado.codigoAvancado.Lines.Add('<div id="descricao2">');
  avancado.codigoAvancado.Lines.Add(avancado.descricao2.Text);
  avancado.codigoAvancado.Lines.Add('<div>');
  end;

  if (avancado.favIcon.Text <> '') and  (avancado.favIcon.Text <> ' ')  then
  begin
  avancado.codigoAvancado.Lines.Add('<link rel="icon" href="' +avancado.favicon.Text+ '" type="image/x-icon"/>');
  end;

   { IMAGENS OPCIONAIS}        
  avancado.codigoAvancado.Lines.Add('<div id="imgop">');

  if avancado.OPgarantia.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="IMGgarantia" src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Principal/garantia.png">');
  end;

  if avancado.OPcertificado.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="IMGcertificado" src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Principal/certificado.png">');
  end;

  if avancado.OPseguro.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="IMGseguro" src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Principal/seguro.png">');
  end;
 avancado.codigoAvancado.Lines.Add('</div>');


   { OPÇÕES DE PAGAMENTO}
  avancado.codigoAvancado.Lines.Add('<div id="fpag">');

  if avancado.PAGblt.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/boleto.png">');
  end;

  if avancado.PAGhpc.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/hipercard.png">');
  end;

  if avancado.PAGvis.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/visa.png">');
  end;

  if avancado.PAGpp.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/paypal.png">');
  end;

  if avancado.PAGhpr.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/hiper.png">');
  end;

  if avancado.PAGmas.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/mastercard.png">');
  end;

  if avancado.PAGelo.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/elo.png">');
  end;

  if avancado.PAGame.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/american.png">');
  end;

  if avancado.PAGhot.Checked = true then
  begin
  avancado.codigoAvancado.Lines.Add
  ('<img id="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/hotpay.png">');
  end;
  avancado.codigoAvancado.Lines.Add('</div>') ;


      { DUVIDAS FREQUENTES}
  avancado.codigoAvancado.Lines.Add('<div id="duvfre">') ;
  avancado.codigoAvancado.Lines.Add(makerDuvidas.codDuvs.Text) ;
  avancado.codigoAvancado.Lines.Add('<div>') ;

end;

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
  exportarAvancado;

  maker.Visible:= true;
  avancado.Visible:= false;
end;

procedure Tavancado.OpenMMClick(Sender: TObject);
begin
  MakerDuvidas.Visible:= true;
  avancado.Visible:= false;
end;

procedure Tavancado.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  maker.Visible:= true;
  avancado.Visible:= false;
end;

end.

