using { portfolio as my } from '../db/schema';

service CatalogService {
  entity Securities as projection on my.Securities;
  entity Quotes as projection on my.Quotes;

}
