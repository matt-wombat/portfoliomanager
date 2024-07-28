using { portfolio } from '../db/schema';

service CatalogService {
  entity Stocks as projection on portfolio.Stocks;
  entity Quotes as projection on portfolio.Quotes;
  entity Depots as projection on portfolio.Depots;
  entity Inventories as projection on portfolio.Inventories;

}
