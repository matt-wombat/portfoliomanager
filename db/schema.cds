using { cuid, Currency, Country } from '@sap/cds/common';

namespace portfolio;

type ISIN: String(20);
type Ticker: String(10);
type Name: String(50);

entity Companies {
  key company: String(30);
  name: Name;

}

entity Exchanges {
  key mic: String(10);
  name: Name;
  country: Country;
}

entity Stocks {
  key isin: ISIN;
  wkn: String(10);
  tickers: Association to many Tickers on tickers.stock = $self;
}

entity Tickers {
  key code: Ticker;
  stock: Association to Stocks;
  exchange: Association to Exchanges;
  currency: Currency;
  quotes: Association to many Quotes on quotes.ticker = $self;
}

entity Quotes {
  key ticker: Association to Tickers;
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