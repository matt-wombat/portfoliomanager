using { portfolio as my } from '../db/schema';

annotate my.Securities with @(
  UI: {
    SelectionFields: [ ISIN, WKN, Ticker, Name ],
    LineItem: [
      {Value: ISIN},
      {Value: WKN},
      {Value: Ticker},
      {Value: Name},
      {Value: Currency},
    ]
  }
);



annotate my.Quotes with @(
  UI: {
    LineItem: [
      {Value: Date},
      {Value: Close},
    ]
  }
);