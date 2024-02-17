// using { cuid } from '@sap/cds/common';

namespace portfolio;

entity Securities {
  key isin: String;
  wkn: String;
  ticker: String;
  name: String;
  currency: String;
}


entity Quotes {
  key isin: String;
  key date: Date;
  close: Decimal;
}



