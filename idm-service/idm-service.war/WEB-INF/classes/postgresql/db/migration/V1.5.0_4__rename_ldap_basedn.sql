/* Remove the ldap uri field */
alter table baseauthenticationconfiguration rename column BASE_DOMAIN_NAME to BASE_DN;
