unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  BI.FMX.Grid, FMXTee.Engine, FMXTee.Procs, FMXTee.Chart, BI.FMX.Chart,
  FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation, FMXTee.Tools,
  BI.FMX.DataControl;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    BIChart1: TBIChart;
    BIGrid1: TBIGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses BI.Web; //BI.Web.Net;


procedure TForm1.Button1Click(Sender: TObject);
//const
// &format=.html5   <--- maybe not a good idea
//  URL='http://steema.cat:15015/?data=SQLite_demo|%22Order%20Details%22&summary=sum(Quantity);Shippers.ShipperID';
begin
//  TBIHttp.Engine:=TBIHttpClient;
  BIChart1.Data:=TBIWebClient.FromURL(Edit1.Text);
  BIGrid1.Data:=TBIWebClient.FromURL(Edit2.Text);
end;


end.
