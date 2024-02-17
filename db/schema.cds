using { cuid } from '@sap/cds/common';
namespace portfolio;

entity Securities {
  key ISIN: String;
  WKN: String;
  Ticker: String;
  Name: String;
  Currency: String;
}

entity Quotes {
  key ISIN: String;
  key Date: Date;
  Close: Decimal;
}



