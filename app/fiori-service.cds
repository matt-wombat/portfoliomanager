using { portfolio as my } from '../db/schema';

annotate my.Securities with @(
  UI: {
    SelectionFields: [ isin, wkn, ticker, name ],
    LineItem: [
      {Value: isin},
      {Value: wkn},
      {Value: ticker},
      {Value: name},
      {Value: currency},
    ]
  }
);



annotate my.Quotes with @(
  UI: {
    LineItem: [
      {Value: date},
      {Value: close},
    ]
  }
);