using { portfolio } from '../db/schema';

annotate CatalogService.Stocks with @odata.draft.enabled;

service CatalogService {
  entity Stocks as projection on portfolio.Stocks;
  entity Quotes as projection on portfolio.Quotes;
  entity Depots as projection on portfolio.Depots;
  entity Inventories as projection on portfolio.Inventories;
  entity Companies as projection on portfolio.Companies;
  entity Tickers as projection on portfolio.Tickers;

}

