/*
 * Add processing_order column to BaseAuthenticationConfiguration table and initialize
 */
alter table BaseAuthenticationConfiguration add column processing_order int8;
/*
 * Temporary, see V1_5_0_11 script to configure orders
 */
update BaseAuthenticationConfiguration set processing_order = 0;
alter table BaseAuthenticationConfiguration change processing_order processing_order int8 not null;
