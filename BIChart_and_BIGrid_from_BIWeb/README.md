BIChart_and_BIGrid_from_BIWeb (TeeBI sample populating BIChart and BIGrid from BIWeb URL)
=========

This sample is a quick demo that shows how to populate a BIChart and BIGrid components from BIWeb Server by using the FromURL property.

![screenshot](https://github.com/PepJorge/TeeBI-Samples/blob/master/BIChart_and_BIGrid_from_BIWeb/Screenshots/TeeBI_FromURL1.png "TeeBI from URL")

To "get" a TDataItem from a BIWeb server, very easy:

const
  URL='http://steema.cat:15015/?data=SQLite_demo|%22Order%20Details%22&summary=sum(Quantity);Shippers.ShipperID';

BIChart1.Data:=TBIWebClient.FromURL(URL);

BIGrid1.Data:=BIChart1.Data;

The url is just an example. 
For a full list of what can be requested to a BIWeb, here is a list:

http://rawgit.com/Steema/BI/master/demos/online/remote_web/index.htm

Another way to access a BIWeb that also works at design-time is by using a TDataDefinition component.
This component is installed at Delphi palette (under "TeeBI" or "TeeBI Providers" tab)

Drop a TDataDefinition, set its Kind property to "Web", double-click it to show the editor, and fill the server edit box:  steema.com
Then you can dropdown the combobox to select the desired data, for example "Animals"

And then, any BIGrid or BIChart or BIQuery or whatever component can at design-time be connected to DataDefinition1, either by setting the Provider property or by opening the "Data"  property editor dialog, and selecting it at the component's tree

Custom "URL" like the above example to be used in the DataDefinition editor. The DataManager editor "Web" tab accepts either a simple data from the combobox, or an URL at a new edit box.

This url can contain a server or not, this is detected and fixed, and the url possible "format=xxx" tag is removed before calling the server:

ie, examples that are accepted in the URL edit box:

http://steema.cat:15015/?data=SQLite_demo|Products&format=.htm&summary=sum(UnitsInStock);

data=SQLite_demo|Products&format=.htm&summary=sum(UnitsInStock);

data=SQLite_demo|Products&summary=sum(UnitsInStock)
