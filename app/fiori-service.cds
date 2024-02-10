annotate CatalogService.Securities with @(
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



annotate CatalogService.Quotes with @(
  UI: {
    LineItem: [
      {Value: Date},
      {Value: Close},
    ]
  }
);