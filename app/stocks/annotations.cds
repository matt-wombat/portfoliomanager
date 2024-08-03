using CatalogService as service from '../../srv/cat-service';

annotate service.Stocks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : isin,
            Label : '{i18n>isin}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Ticker}',
            Value : ticker,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Wkn}',
            Value : wkn,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate service.Stocks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>isin}',
                Value : isin,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Wkn}',
                Value : wkn,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Ticker}',
                Value : ticker,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Name}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Value : country_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
