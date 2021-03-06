unit unitmaker;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, CheckBoxThemed, RTTICtrls, Forms, Controls,
  Graphics, Dialogs, ComCtrls, ExtCtrls, Menus, StdCtrls, Buttons, Spin,
  StrUtils;

type

  { TMaker }

  TMaker = class(TForm)
    publi: TLabel;
    maisr: TButton;
    corbot: TButton;
    cortxt: TButton;
    cores: TColorDialog;
    criadocom: TCheckBoxThemed;
    MenuItem18: TMenuItem;
    modAnim: TCheckBoxThemed;
    DemoCorTxt: TPanel;
    adv1: TImage;
    modStyle1: TMemo;
    modStyle2: TMemo;
    salvador: TSaveDialog;
    txtbt: TLabel;
    txtbt2: TLabel;
    txtbotao: TEdit;
    OpenMM: TButton;
    viewnav: TButton;
    export: TButton;
    zero: TButton;
    DemoCorBut: TPanel;
    Qmod: TFloatSpinEdit;
    Label10: TLabel;
    autoria: TEdit;
    PosIMG: TEdit;
    PreIMG: TEdit;
    selectWall: TButton;
    estilo: TMemo;
    ncurso: TEdit;
    valor: TEdit;
    video: TEdit;
    garantia: TEdit;
    codfull: TMemo;
    p1: TImage;
    p2: TImage;
    p3: TImage;
    linkvenda: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    descricao: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    topmenu: TMainMenu;
    StatusBar1: TStatusBar;
    procedure adv1Click(Sender: TObject);
    procedure autoriaChange(Sender: TObject);
    procedure corbotClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure zeroClick(Sender: TObject);
    procedure corbotaoClick(Sender: TObject);
    procedure cortxtClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure maisrClick(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure OpenMMClick(Sender: TObject);
    procedure viewnavClick(Sender: TObject);
    procedure exportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure PosIMGChange(Sender: TObject);
    procedure PreIMGChange(Sender: TObject);
    procedure QmodChange(Sender: TObject);
    procedure selectWallClick(Sender: TObject);
    procedure valorKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Maker: TMaker;
  WallpaperAdress : string;
  coratual: longInt;
  coratualS: string;
  coratualTxt: string;
  coratualBot: string;
  caminho: string;
implementation
uses LCLIntf, UnitMakerMod, unitwallpaper, unitsMod, unitviewcode, unitavancado;




{$R *.lfm}

{ TMaker }

procedure exportar;
 var
  full: TStringList;
  embedyt: string;
  ini, fin: integer;

begin
 ini:= 1;
 fin:= length(maker.video.Text) - 11;
 embedyt := maker.video.Text;
 delete(embedyt, ini, fin);

 maker.codfull.Clear;
 try
 {  TOPO  }
  maker.codfull.Lines.Add('<html>');
  maker.codfull.Lines.Add('<head>');
  maker.codfull.Lines.Add('<meta charset="UTF-8">');
  maker.codfull.Lines.Add('<title>' + maker.ncurso.Text + '</title>');
   {fontes}
  maker.codfull.Lines.Add('<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">');
  maker.codfull.Lines.Add('<link href="https://fonts.googleapis.com/css?family=Montserrat|Staatliches&display=swap" rel="stylesheet">');
  maker.codfull.Lines.Add('<link href="https://fonts.googleapis.com/css?family=Work+Sans:200&display=swap" rel="stylesheet">');

  if (avancado.favIcon.Text <> '') and  (avancado.favIcon.Text <> ' ')  then
  begin
  maker.codfull.Lines.Add('<link rel="icon" href="' +avancado.favicon.Text+ '" type="image/x-icon"/>');
  end;

  {  ESTILO  }

  maker.codfull.Lines.Add('<style>');

  maker.codfull.Lines.Add('body{ ');                        
  maker.codfull.Lines.Add('overflow-x: hidden;');
  maker.codfull.Lines.Add('background-repeat: no-repeat;');
  maker.codfull.Lines.Add('background-attachment: fixed;');
  maker.codfull.Lines.Add('background-color: #0d0d0d;'); 
  maker.codfull.Lines.Add('background-size: 100%;');
  maker.codfull.Lines.Add('margin: 0; padding: 0;');
  maker.codfull.Lines.Add( WallpaperAdress);

  maker.codfull.Lines.Add(maker.estilo.text);
  maker.codfull.Lines.Add('.euquero, .euquerotp { background-color: ' + coratualBot + ';');
  maker.codfull.Lines.Add('color: ' + coratualTxt + '; }');

  if maker.ModAnim.Checked = true then
  begin
    maker.codFull.Lines.add(maker.modStyle1.Text);
    end
    else
    begin
    maker.codFull.Lines.add(maker.modStyle2.Text);
  end;


  maker.codfull.Lines.Add('</style>');

  maker.codfull.Lines.Add('</head>');


  {  CORPO  }
  maker.codfull.Lines.Add('<body>');
  maker.codfull.Lines.Add('<div id="topo">');  {começo do topo}
  maker.codfull.Lines.Add('<div id="titulo"> ' + maker.ncurso.Text + ' </div>');
  maker.codfull.Lines.Add(' <br />');
  if (maker.video.Text <> '') and  (maker.video.Text <> ' ')  then
  begin
  maker.codfull.Lines.Add( '<iframe width="720" height="405" id="videoyt" src="https://www.youtube.com/embed/' + embedyt +'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
  maker.codfull.Lines.Add('<br /> <br />');
  maker.codfull.Lines.Add('<form method="get" action="' + maker.linkvenda.Text + '"> <button type="submit" class="euquerotp">'+ maker.txtbotao.Text +'</button></form>');
  end else
  begin
  maker.codfull.Lines.Add(' <style> #titulo{ margin-top: 80; margin-bottom: 70; } </style>');
  end;
  maker.codfull.Lines.Add('</div>');           {fim do topo}
  maker.codfull.Lines.Add('<center><div id="meio">');  {começo do meio}
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('<center> <div id="descricao"> '+ maker.descricao.Text +' </div> </center>');
  maker.codfull.Lines.Add(' <br />');        
  if (maker.valor.Text <> '') and  (maker.valor.Text <> ' ')  then
  begin
  maker.codfull.Lines.Add('<div id="valor">Apenas por <br><b>R$' + maker.valor.Text + '</b>! </div>');

  end else
  begin
  maker.codfull.Lines.Add('<div id="valor"><b>Aproveite, grátis!</b></div>');

  end;
  maker.codfull.Lines.Add('<div id="modulos"> ' + MakerMod.codMods.Text + ' </div>');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('<form method="get" action="' + maker.linkvenda.Text + '"> <button type="submit" class="euquero">'+ maker.txtbotao.Text +'</button></form>');

  if avancado.OPgarantia.Checked = true then
  begin
  maker.codfull.Lines.Add
  ('<br /><center><img id="IMGgarantia" src="https://raw.githubusercontent.com/JuniorCriste/storage/master/MPM/Pagina/Principal/garantia.png">');
  end;
  maker.codfull.Lines.Add(' </ center>');

  if (maker.garantia.Text <> '') and  (maker.garantia.Text <> ' ')  then
  begin
  maker.codfull.Lines.Add('<center><div id="garantia"> O nosso método conta com garantia e satisfação, ou seja, você tem ' + maker.garantia.Text + ' para se decidir, se ainda achar que o treinamento não é para você, basta pedir reembolso e devolverei integralmente seu dinheiro. Sem perguntas e questionamentos. </div> </center>');
  maker.codfull.Lines.Add(' <br />');
  end;

  maker.codfull.Lines.Add('<center>' + avancado.codigoAvancado.Text + '</center>');

  maker.codfull.Lines.Add('</div></center>');           {fim do meio}
  maker.codfull.Lines.Add('<center><div id="atr">');
  maker.codfull.Lines.Add(' Todos os direitos reservados a ' + maker.autoria.text + '.');
  if maker.criadocom.Checked = true then
  begin
  maker.codfull.Lines.Add('<br />');
  maker.codfull.Lines.Add('Criado com <a href="https://informaticode.store/.../MPM" target="_blank">Marketing Page Maker</a>');
  end;         
  maker.codfull.Lines.Add('</div></center>');
  maker.codfull.Lines.Add('</body> ');
  maker.codfull.Lines.Add('</html>');

  {  EXPORTAÇÃO  }
 full := TStringList.Create;
 full.Add(maker.codfull.Text);
 full.SaveToFile(caminho);
 finally
   full.Free;
 end;
 end;

function PegaCor : string;
begin
 coratual := ColorToRGB(maker.cores.Color);

 coratualS:= '#'+ IntToHex(Red(coratual), 2)+
 IntToHex(Green(coratual), 2)+
 IntToHex(Blue(coratual), 2) ;

 result:= coratualS;
  end;



procedure TMaker.MenuItem1Click(Sender: TObject);
begin

end;

procedure TMaker.PosIMGChange(Sender: TObject);
begin

end;

procedure TMaker.PreIMGChange(Sender: TObject);
begin

end;

procedure TMaker.QmodChange(Sender: TObject);
begin
  if Qmod.Value < 1 then
  begin
    OpenMM.Enabled:= false;
    end else
    begin
    OpenMM.Enabled:= true;
  end;
end;


procedure TMaker.selectWallClick(Sender: TObject);
begin
  wallpaper.Show;
  wallpaper.Visible:=true;
  maker.visible:= false
end;

procedure TMaker.valorKeyPress(Sender: TObject; var Key: char);
begin
  if  not ( Key in ['0'..'9', Chr(8), Chr(46),  Chr(44)] ) then
  begin
  Key := #0
  end;

end;

procedure TMaker.MenuItem16Click(Sender: TObject);
begin
 export.Click;
end;

procedure TMaker.OpenMMClick(Sender: TObject);
begin
  MakerMod.show;
  MakerMod.Visible:= true;
  maker.Visible:=false;
end;

procedure TMaker.autoriaChange(Sender: TObject);
begin

end;

procedure TMaker.adv1Click(Sender: TObject);
begin
  OpenURL('https://informaticode.store/.../Curso-de-Marketing-crie-Seu-Curso');
end;

procedure TMaker.corbotClick(Sender: TObject);
begin
try
 cores.Execute;
 finally
   begin
   DemoCorBut.Color:= cores.Color;
   pegacor;
   CorAtualBot := corAtualS;

   end;
 end;
end;

procedure TMaker.MenuItem2Click(Sender: TObject);
begin
  export.Click;
end;

procedure TMaker.MenuItem3Click(Sender: TObject);
begin
  zero.Click;
end;

procedure TMaker.MenuItem4Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TMaker.zeroClick(Sender: TObject);
begin
  ncurso.Clear;
  descricao.Clear;
  valor.Clear;
  garantia.Clear;
  video.Clear;
  txtbotao.Clear;
  linkvenda.Clear;
  autoria.Clear;
end;

procedure TMaker.corbotaoClick(Sender: TObject);
begin

end;

procedure TMaker.cortxtClick(Sender: TObject);
begin
try
 cores.Execute;
 finally
   begin
   DemoCorTxt.Color:= cores.Color;
   pegacor;
   CorAtualTxt := corAtualS;

   end;
 end;
 end;

procedure TMaker.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  application.Terminate;
end;

procedure TMaker.maisrClick(Sender: TObject);
begin
  avancado.Visible:= true;
  maker.Visible:= false;
end;

procedure TMaker.MenuItem10Click(Sender: TObject);
begin
  showmessage('Marketing Page Maker Versão 0.01 | Edição Especial - "CEGONHA"');
end;

procedure TMaker.MenuItem11Click(Sender: TObject);
begin
  OpenURL('https://informaticode.store/.../MPM');
end;

procedure TMaker.MenuItem12Click(Sender: TObject);
begin
  OpenURL('https://instagram.com/informaticode/');
end;

procedure TMaker.MenuItem14Click(Sender: TObject);
begin
  viewnav.Click;
end;

procedure TMaker.MenuItem18Click(Sender: TObject);
begin
  OpenURL('https://informaticode.store/.../MPM#video');
end;

procedure TMaker.MenuItem6Click(Sender: TObject);
begin
  OpenURL('https://www.informaticode.com.br/p/sobre.html');
end;

procedure TMaker.MenuItem7Click(Sender: TObject);
begin
  OpenURL('https://www.informaticode.com.br/p/junior-criste.html');
end;

procedure TMaker.MenuItem8Click(Sender: TObject);
begin
  OpenURL('https://informaticode.store/.../MPM#about');
end;

procedure TMaker.viewnavClick(Sender: TObject);
begin
  WallpaperAdress := PreIMG.text + NameIMG + PosIMG.text;
  caminho:= 'pre665.htm';
  exportar;
  OpenURL('pre665.htm');
end;

procedure TMaker.exportClick(Sender: TObject);
begin               
 WallpaperAdress := PreIMG.text + NameIMG + PosIMG.text;
 try
  salvador.Execute
 finally
  caminho:= salvador.FileName + '.htm';
  exportar;
  showmessage('SUA PÁGINA FOI SALVA EM' + caminho + '!')
 end;

end;


procedure TMaker.FormCreate(Sender: TObject);
begin
 sMod.visible:= false;
 CorAtualTxt:= '#2F3030';
 CorAtualBot:= '#1DA573';

end;


procedure TMaker.FormShow(Sender: TObject);
begin
 sMod.visible:= false;
  if Qmod.Value < 1 then
  begin
    OpenMM.Enabled:= false;
    end else
    begin
    OpenMM.Enabled:= true;
  end;
end;

procedure TMaker.MenuItem15Click(Sender: TObject);
begin
 codfonte.AllCode.Clear;

 WallpaperAdress := PreIMG.text + NameIMG + PosIMG.text;
 caminho:= 'pre665.htm';
 exportar;

 codfonte.AllCode.Lines.LoadFromFile('pre665.htm');
 codfonte.Show;
end;



end.


