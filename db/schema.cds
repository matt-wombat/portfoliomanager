// using { cuid } from '@sap/cds/common';

namespace portfolio;

entity Securities {
  key isin: String;
  wkn: String;
  ticker: String;
  name: String;
  currency: String;
  Quotes: Composition of many Quotes on Quotes.security = $self;
}


entity Quotes {
  key security: Association to Securities;
  key date: Date;
  close: Decimal;
}



