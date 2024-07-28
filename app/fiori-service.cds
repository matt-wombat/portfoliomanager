using { portfolio as my } from '../db/schema';

// For more annotation examples see:
//
// https://cap.cloud.sap/docs/guides/extensibility/customization#extending-ui-annotations

annotate my.Securities with @(
  UI: {
    SelectionFields: [ isin, wkn, ticker, name ],
    HeaderInfo       : {
      TypeName       : 'Security',
      TypeNamePlural : 'Securities',
      Title          : { Value : name}
    },
    Facets           : [
      {$Type: 'UI.ReferenceFacet', Label: 'Main', Target : '@UI.FieldGroup#Main'}
    ],    
    FieldGroup #Main : {Data : [
      {Value : isin},
      {Value : wkn},
      {Value : ticker},
      {Value : name},
      {Value : currency_code}
    ]},
    LineItem: [
      {Value: isin},
      {Value: wkn},
      {Value: ticker},
      {Value: name},
      {Value: currency_code},
      {Value: country_code}
    ]
  }
);

annotate my.Quotes with @(
  UI: {
    LineItem: [
      {Value: isin},
      {Value: date},
      {Value: close},
    ]
  }
);