unit fGMapMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, XPMan, ComCtrls, MSHTML;

type
  TfrmGMapMain = class(TForm)
    WebBrowser1: TWebBrowser;
    PanelHeader: TPanel;
    ButtonGotoLocation: TButton;
    XPManifest1: TXPManifest;
    MemoAddress: TMemo;
    ButtonGotoAddress: TButton;
    LabelLatitude: TLabel;
    LabelLongitude: TLabel;
    Longitude: TEdit;
    Latitude: TEdit;
    CheckBoxTraffic: TCheckBox;
    CheckBoxBicycling: TCheckBox;
    CheckBoxStreeView: TCheckBox;
    ButtonClearMarkers: TButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonGotoAddressClick(Sender: TObject);
    procedure ButtonGotoLocationClick(Sender: TObject);
    procedure CheckBoxTrafficClick(Sender: TObject);
    procedure CheckBoxBicyclingClick(Sender: TObject);
    procedure CheckBoxStreeViewClick(Sender: TObject);
    procedure ButtonClearMarkersClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    HTMLWindow2: IHTMLWindow2;
  public
    procedure GotoAddress(Address: String);
    { Public declarations }
  end;

implementation

uses
  ActiveX;

{$R *.dfm}

const
  HTMLStr: AnsiString = '<html> ' + '<head> ' + '<meta name="viewport" content="initial-scale=1.0, user-scalable=yes" /> ' +
    '<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script> ' + '<script type="text/javascript"> ' + '' + '' + '  var geocoder; ' +
    '  var map;  ' + '  var trafficLayer;' + '  var bikeLayer;' + '  var markersArray = [];' + '' + '' + '  function initialize() { ' + '    geocoder = new google.maps.Geocoder();'
    + '    var latlng = new google.maps.LatLng(0.0,0.0); ' + '    var myOptions = { ' + '      zoom: 13, ' + '      center: latlng, ' +
    '      mapTypeId: google.maps.MapTypeId.ROADMAP ' + '    }; ' + '    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions); ' +
    '    trafficLayer = new google.maps.TrafficLayer();' + '    bikeLayer = new google.maps.BicyclingLayer();' + '    map.set("streetViewControl", false);' + '  } ' + '' + '' +
    '  function codeAddress(address) { ' + '    if (geocoder) {' + '      geocoder.geocode( { address: address}, function(results, status) { ' +
    '        if (status == google.maps.GeocoderStatus.OK) {' + '          map.setCenter(results[0].geometry.location);' +
    '          PutMarker(results[0].geometry.location.lat(), results[0].geometry.location.lng(), results[0].geometry.location.lat()+","+results[0].geometry.location.lng());' +
    '        } else {' + '          alert("Geocode was not successful for the following reason: " + status);' + '        }' + '      });' + '    }' + '  }' + '' + '' +
    '  function GotoLatLng(Lat, Lang) { ' + '   var latlng = new google.maps.LatLng(Lat,Lang);' + '   map.setCenter(latlng);' + '   PutMarker(Lat, Lang, Lat+","+Lang);' + '  }' +
    '' + '' + 'function ClearMarkers() {  ' + '  if (markersArray) {        ' + '    for (i in markersArray) {  ' + '      markersArray[i].setMap(null); ' + '    } ' + '  } ' +
    '}  ' + '' + '  function PutMarker(Lat, Lang, Msg) { ' + '   var latlng = new google.maps.LatLng(Lat,Lang);' + '   var marker = new google.maps.Marker({' +
    '      position: latlng, ' + '      map: map,' + '      title: Msg+" ("+Lat+","+Lang+")"' + '  });' + ' markersArray.push(marker); ' + '  }' + '' + '' +
    '  function TrafficOn()   { trafficLayer.setMap(map); }' + '' + '  function TrafficOff()  { trafficLayer.setMap(null); }' + '' + '' +
    '  function BicyclingOn() { bikeLayer.setMap(map); }' + '' + '  function BicyclingOff(){ bikeLayer.setMap(null);}' + '' +
    '  function StreetViewOn() { map.set("streetViewControl", true); }' + '' + '  function StreetViewOff() { map.set("streetViewControl", false); }' + '' + '' + '</script> ' +
    '</head> ' + '<body onload="initialize()"> ' + '  <div id="map_canvas" style="width:100%; height:100%"></div> ' + '</body> ' + '</html> ';

procedure TfrmGMapMain.FormCreate(Sender: TObject);
var
  aStream: TMemoryStream;
begin
  WebBrowser1.Navigate('about:blank');
  if Assigned(WebBrowser1.Document) then
    begin
      aStream := TMemoryStream.Create;
      try
        aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr));
        // aStream.Write(HTMLStr[1], Length(HTMLStr));
        aStream.Seek(0, soFromBeginning);
        (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(aStream));
      finally
        aStream.Free;
      end;
      HTMLWindow2 := (WebBrowser1.Document as IHTMLDocument2).parentWindow;
    end;
  HTMLWindow2.offscreenBuffering := True;
end;

procedure TfrmGMapMain.GotoAddress(Address: String);
begin
  MemoAddress.Lines.Clear;
  MemoAddress.Lines.Add(Address);
  ButtonGotoAddressClick(Self);
  Self.ShowModal;
end;

procedure TfrmGMapMain.ButtonGotoLocationClick(Sender: TObject);
begin
  HTMLWindow2.execScript(Format('GotoLatLng(%s,%s)', [Latitude.Text, Longitude.Text]), 'JavaScript');
end;

procedure TfrmGMapMain.Button1Click(Sender: TObject);
const
  CGID_WebBrowser: TGUID = '{ED016940-BD5B-11cf-BA4E-00C04FD70816}';
  HTMLID_VIEWSOURCE = 2;
var
  CmdTarget: IOleCommandTarget;
  vaIn, vaOut: OleVariant;
  PtrGUID: PGUID;
begin
  New(PtrGUID);
  PtrGUID^ := CGID_WebBrowser;
  if WebBrowser1.Document <> nil then
    try
      WebBrowser1.Document.QueryInterface(IOleCommandTarget, CmdTarget);
      if CmdTarget <> nil then
        try
          CmdTarget.Exec(PtrGUID, HTMLID_VIEWSOURCE, 0, vaIn, vaOut);
        finally
          CmdTarget._Release;
        end;
    except
    end;
  Dispose(PtrGUID);
end;

procedure TfrmGMapMain.ButtonClearMarkersClick(Sender: TObject);
begin
  HTMLWindow2.execScript('ClearMarkers()', 'JavaScript')
end;

procedure TfrmGMapMain.ButtonGotoAddressClick(Sender: TObject);
var
  Address: string;
begin
  Address                        := MemoAddress.Lines.Text;
  Address                        := StringReplace(StringReplace(Trim(Address), #13, ' ', [rfReplaceAll]), #10, ' ', [rfReplaceAll]);
  HTMLWindow2.offscreenBuffering := True;
  HTMLWindow2.execScript(Format('codeAddress(%s)', [QuotedStr(Address)]), 'JavaScript');
end;

procedure TfrmGMapMain.CheckBoxStreeViewClick(Sender: TObject);
begin
  if CheckBoxStreeView.Checked then
    HTMLWindow2.execScript('StreetViewOn()', 'JavaScript')
  else
    HTMLWindow2.execScript('StreetViewOff()', 'JavaScript');

end;

procedure TfrmGMapMain.CheckBoxBicyclingClick(Sender: TObject);
begin
  if CheckBoxBicycling.Checked then
    HTMLWindow2.execScript('BicyclingOn()', 'JavaScript')
  else
    HTMLWindow2.execScript('BicyclingOff()', 'JavaScript');
end;

procedure TfrmGMapMain.CheckBoxTrafficClick(Sender: TObject);
begin
  if CheckBoxTraffic.Checked then
    HTMLWindow2.execScript('TrafficOn()', 'JavaScript')
  else
    HTMLWindow2.execScript('TrafficOff()', 'JavaScript');
end;

end.
