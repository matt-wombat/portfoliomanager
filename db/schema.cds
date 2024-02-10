using { cuid } from '@sap/cds/common';
namespace portfolio;

entity Securities {
  key ISIN: String(20);
  WKN: String(10);
  Ticker: String(10);
  Name: String(100);
  Currency: String(3);
}

entity Quotes {
  key ISIN: String(20);
  key Date: Date;
  Close: Decimal;
}



