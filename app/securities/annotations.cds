using CatalogService as service from '../../srv/cat-service';
using from '../fiori-service';



annotate service.Securities with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Main}',
            Target : '@UI.FieldGroup#Main',
        },
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>Security}',
        TypeNamePlural : '{i18n>Securities}',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
    }
);
annotate service.Securities with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : isin,
        },
        {
            $Type : 'UI.DataField',
            Value : wkn,
        },
        {
            $Type : 'UI.DataField',
            Value : ticker,
        },
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : currency,
        },
    ]
);
