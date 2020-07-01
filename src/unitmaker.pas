unit unitmaker;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, Menus, StdCtrls, Buttons, UnitMakerMod, StrUtils;

type

  { TMaker }

  TMaker = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
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
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private

  public

  end;

var
  Maker: TMaker;

implementation

{$R *.lfm}

{ TMaker }

procedure TMaker.MenuItem1Click(Sender: TObject);
begin

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

procedure TMaker.Button3Click(Sender: TObject);
var
  full: TStringList;
  embedyt: string;
  ini, fin: integer;
begin
 ini:= 1;
 fin:= length(video.Text) - 11;
 embedyt := video.Text;
 delete(embedyt, ini, fin);

 codfull.Clear;
 try
 {  TOPO  }
  codfull.Lines.Add('<html> <meta charset="UTF-8">');
  codfull.Lines.Add('<head>');  
  codfull.Lines.Add('<title>' + ncurso.Text + '</title>');
  codfull.Lines.Add('<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">');


  {  ESTILO  }

  codfull.Lines.Add('<style>');
  codfull.Lines.Add(estilo.text);
  codfull.Lines.Add('</style>');



  codfull.Lines.Add('</head>');
  {  CORPO  }
  codfull.Lines.Add('<body>');
  codfull.Lines.Add('<topo>');
  codfull.Lines.Add('<titulo> ' + ncurso.Text + ' </titulo>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add( '<iframe width="720" height="405" id="videoyt" src="https://www.youtube.com/embed/' + embedyt +'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<valor>Apenas por R$' + valor.Text + '! </valor>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<form method="get" action="' + linkvenda.Text + '"> <button type="submit" class="botao"> Adquira já! </button></form>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<descricao> '+ descricao.Text +' </descricao>'); 
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('</topo>');
  codfull.Lines.Add('<modulos> ' + MakerMod.codMods.Text + ' </modulos>'); 
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<form method="get" action="' + linkvenda.Text + '"> <button type="submit" class="botao"> Adquira já! </button></form>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('<garantia> Garantia de ' + garantia.Text + '! </garantia>');
  codfull.Lines.Add(' <br />');
  codfull.Lines.Add('</body> ');
  codfull.Lines.Add(' ');

  {  EXPORTAÇÃO  }
 full := TStringList.Create;
 full.Add(codfull.Text);
 full.SaveToFile('previsualizacao.htm');
 finally
   full.Free;
 end;
end;

procedure TMaker.FormShow(Sender: TObject);
begin
end;


end.

