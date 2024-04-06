using { cuid, Currency, Country } from '@sap/cds/common';

namespace portfolio;

entity Securities {
  key isin: String(20);
  wkn: String(10);
  ticker: String(10);
  name: String(30);
  currency: Currency;
  country: Country;
  // Quotes: Composition of many Quotes on Quotes.security = $self;
}

entity Quotes {
  key isin: String;
  key date: Date;
  close: Decimal;
}

entity Depots {
  key id: Integer;
  name: String;
}

entity Inventories {
  key depot_id: Integer;
  key isin: String;
  inventory: Decimal;
  value: Decimal;
}

