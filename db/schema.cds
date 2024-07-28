using { cuid, Currency, Country } from '@sap/cds/common';

namespace portfolio;

type ISIN: String(20);
type Ticker: String(10);

entity Stocks {
  key isin: ISIN;
  wkn: String(10);
  ticker: Ticker;
  name: String(30);
  currency: Currency;
  country: Country;
  quotes: Association to many Quotes on quotes.stock = $self;
}

entity Quotes {
  key stock: Association to Stocks;
  key date: Date;
  close: Decimal;
}

entity Depots {
  key id: Integer;
  name: String;
}

entity Inventories {
  key depot_id: Integer;
  key isin: ISIN;
  inventory: Decimal;
  value: Decimal;
}

entity Balancesheets: cuid {
  filing: Association to Filings;
  valuetype: Association to Valuetypes;
  value: Decimal;
}

entity Filings: cuid {
  isin: ISIN;
  ticker: Ticker;
  date: Date;
  balancesheettype: String; // Quarterly, Yearly
}

entity Valuetypes: cuid {
  position: Integer;
  section: String;
  name: String;
}

entity Reportcards: cuid {
  isin: ISIN;
  ticker: Ticker;
  date: Date;
  price: Decimal;
  shares: Decimal; // in 1,000s
  cash: Decimal; // in 1,000s
  debt: Decimal; // in 1,000s
  enterprise_value: Decimal; // in 1,000s
}