/**
 * Create a configurable "common_name", defaulting to "cn" (from code)
 */
alter table baseauthconfiguration add column common_name varchar(1024);
update baseauthconfiguration set common_name = 'cn';
