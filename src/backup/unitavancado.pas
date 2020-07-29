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
    CancelAndBack: TButton;
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
    procedure CancelAndBackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure OpenMMClick(Sender: TObject);
    procedure QmodChange(Sender: TObject);
  private

  public

  end;

var
  avancado: Tavancado;
  apl1: integer;

implementation
uses
  unitmaker, unitmakerduv;

{$R *.lfm}

{ Tavancado }

procedure exportarAvancado;
var
  addBotao: integer;
begin
  avancado.codigoAvancado.Clear;
  addBotao:= 0;
   { IMAGENS OPCIONAIS}
  avancado.codigoAvancado.Lines.Add('<center>');
  avancado.codigoAvancado.Lines.Add('<div id="imgop">');

  if avancado.OPcertificado.Checked = true then
  begin           
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<br /><img id="IMGcertificado" src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Principal/certificado.png">');
  end;

  if avancado.OPseguro.Checked = true then
  begin                
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<br /><img id="IMGseguro" src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Principal/seguro.png">');
  end;
 avancado.codigoAvancado.Lines.Add('</div>');


   { OPÇÕES DE PAGAMENTO}
  avancado.codigoAvancado.Lines.Add('<div id="fpag">');

  if avancado.PAGblt.Checked = true then
  begin                                
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/boleto.png">');
  end;

  if avancado.PAGhpc.Checked = true then
  begin                                   
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/hipercard.png">');
  end;

  if avancado.PAGvis.Checked = true then
  begin                       
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/visa.png">');
  end;

  if avancado.PAGpp.Checked = true then
  begin          
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/paypal.png">');
  end;

  if avancado.PAGhpr.Checked = true then
  begin             
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/hiper.png">');
  end;

  if avancado.PAGmas.Checked = true then
  begin    
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/mastercard.png">');
  end;

  if avancado.PAGelo.Checked = true then
  begin        
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/elo.png">');
  end;

  if avancado.PAGame.Checked = true then
  begin         
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/american.png">');
  end;

  if avancado.PAGhot.Checked = true then
  begin           
  addBotao := addBotao + 1;
  avancado.codigoAvancado.Lines.Add
  ('<img src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Formas%20de%20Pagamento/hotpay.png">');
  end;
  avancado.codigoAvancado.Lines.Add('</div>') ;
  
      { TEXTO EXTRA}
  if (avancado.descricao2.Text <> '') and  (avancado.descricao2.Text <> ' ')  then
  begin
  avancado.codigoAvancado.Lines.Add('<div id="descricao2">');
  avancado.codigoAvancado.Lines.Add(avancado.descricao2.Text);
  avancado.codigoAvancado.Lines.Add('</div>');
  end;

  if (avancado.Qmod.Value > 0) or (addBotao > 0) then
  begin
   avancado.codigoAvancado.Lines.Add('<br /><center><form method="get" action="' + maker.linkvenda.Text + '"> <button type="submit" class="euquero">'+ maker.txtbotao.Text +'</button></form><br /></center>');
  end;


      { DUVIDAS FREQUENTES}
  if avancado.Qmod.Value > 0 then
  begin                    
  avancado.codigoAvancado.Lines.Add('<h2>Dúvidas Frequentes</h2><br />') ;
  avancado.codigoAvancado.Lines.Add('<div id="duvfre">') ;
  avancado.codigoAvancado.Lines.Add(makerDuvidas.codDuvs.Text) ;
  avancado.codigoAvancado.Lines.Add('</div>') ;
  end;

  avancado.codigoAvancado.Lines.Add('</center>');
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
  apl1 := Qmod.Value;

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
  { exportarAvancado; }
  maker.Visible:= true;
  avancado.Visible:= false;
  if apl1 = 0 then
  begin
  Qmod.Value:= 0;
  end;
end;

procedure Tavancado.CancelAndBackClick(Sender: TObject);
begin
  avancado.Close;
end;

procedure Tavancado.FormShow(Sender: TObject);
begin
   if Qmod.Value < 1 then
  begin
    OpenMM.Enabled:= false;
    end else
    begin
    OpenMM.Enabled:= true;
  end;
end;

end.

