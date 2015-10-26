/*
 * Add processing_order column to baseauthenticationconfiguration table and initialize
 */
alter table baseauthenticationconfiguration add column processing_order int8;
/*
 * Temporary, see V1_5_0_11 script to configure orders
 */
update baseauthenticationconfiguration set processing_order = 0;
alter table baseauthenticationconfiguration alter column processing_order set not null;
