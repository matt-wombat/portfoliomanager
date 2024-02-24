using { portfolio as my } from '../db/schema';

service CatalogService {
  entity Securities as projection on my.Securities;
  entity Quotes as projection on my.Quotes;
  entity Depots as projection on my.Depots;
  entity Inventories as projection on my.Inventories;

}
