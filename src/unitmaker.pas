unit unitmaker;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, Menus, StdCtrls, Buttons, StrUtils;

type

  { TMaker }

  TMaker = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
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
    Qmod: TEdit;
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
    MenuItem17: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    topmenu: TMainMenu;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure selectWallClick(Sender: TObject);
  private

  public

  end;

var
  Maker: TMaker;

implementation
uses LCLIntf, UnitMakerMod, unitwallpaper, unitsMod;




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

  {  ESTILO  }

  maker.codfull.Lines.Add('<style>');
  maker.codfull.Lines.Add(maker.estilo.text);
  maker.codfull.Lines.Add('</style>');

  maker.codfull.Lines.Add('</head>');


  {  CORPO  }
  maker.codfull.Lines.Add('<body>');
  maker.codfull.Lines.Add('<div id="topo">');  {começo do topo}
  maker.codfull.Lines.Add('<div id="titulo"> ' + maker.ncurso.Text + ' </div>');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add( '<iframe width="720" height="405" id="videoyt" src="https://www.youtube.com/embed/' + embedyt +'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('<form method="get" action="' + maker.linkvenda.Text + '"> <button type="submit" class="euquero"> QUERO COMEÇAR JÁ! </button></form>');
  maker.codfull.Lines.Add('</div>');           {fim do topo}
  maker.codfull.Lines.Add('<div id="meio">');  {começo do meio}
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('<center> <div id="descricao"> '+ maker.descricao.Text +' </div> </center>');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('<div id="valor">Apenas por R$' + maker.valor.Text + '! </div>');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('<div id="modulos"> ' + MakerMod.codMods.Text + ' </div>');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('<form method="get" action="' + maker.linkvenda.Text + '"> <button type="submit" class="euquero"> QUERO COMEÇAR JÁ! </button></form>');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('<center><div id="garantia"> O nosso método conta com garantia e satisfação, ou seja, você tem ' + maker.garantia.Text + ' para se decidir, se ainda achar que o treinamento não é para você, basta pedir reembolso e devolverei integralmente seu dinheiro. Sem perguntas e questionamentos. </div> </center>');
  maker.codfull.Lines.Add(' <br />');
  maker.codfull.Lines.Add('</div>');           {fim do meio}
  maker.codfull.Lines.Add('</body> ');
  maker.codfull.Lines.Add('</html>');

  {  EXPORTAÇÃO  }
 full := TStringList.Create;
 full.Add(maker.codfull.Text);
 full.SaveToFile('previsualizacao.htm');
 finally
   full.Free;
 end;
 end;


procedure TMaker.MenuItem1Click(Sender: TObject);
begin

end;

procedure TMaker.selectWallClick(Sender: TObject);
begin
  wallpaper.Show;
  wallpaper.Visible:=true;
  maker.visible:= false
end;

procedure TMaker.MenuItem16Click(Sender: TObject);
var
  full: TStringList;
begin
{
  full := TStringList.Create;
  try
  full.Add('<a href="' + container1.Text + '" target="_blank"> Visitar Site </a>');

  full.SaveToFile('previsualizacao.htm');
  finally
    full.Free;
  end;
  }
  end;

procedure TMaker.Button1Click(Sender: TObject);
begin
  MakerMod.show;
end;


procedure TMaker.Button2Click(Sender: TObject);
begin
  exportar;
  OpenURL('previsualizacao.htm');
end;

procedure TMaker.Button3Click(Sender: TObject);
begin
 exportar;
end;

procedure TMaker.FormShow(Sender: TObject);
begin
 sMod.visible:= false;
end;



end.


