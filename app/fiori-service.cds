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