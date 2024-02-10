using { cuid } from '@sap/cds/common';
namespace portfolio;

entity Securities : cuid {
  ISIN: String(20);
  WKN: String(10);
  Ticker: String(10);
  Name: String(100);
  Currency: String(3);
}

entity Quotes : cuid {
  ISIN: String(20);
  Date: Date;
  Close: Decimal;
}



