/*
 * Add processing_order column to baseauthenticationconfiguration table and initialize
 */
/*
 * Temporary, see V1_5_0_11 script to configure orders
 */
update BaseAuthenticationConfiguration set processing_order = 0;
alter table BaseAuthenticationConfiguration alter column processing_order bigint not null;
