/*
 * Add processing_order column to baseauthenticationconfiguration table and initialize
 */
alter table BaseAuthConfiguration add processing_order Number(19);
/*
 * Temporary, see V1_5_0_11 script to configure orders
 */
update BaseAuthConfiguration set processing_order = 0;
alter table BaseAuthConfiguration modify processing_order not null;
