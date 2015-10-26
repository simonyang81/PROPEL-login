/* Remove the ldap uri field */
sp_rename 'baseauthenticationconfiguration.BASE_DOMAIN_NAME', 'BASE_DN';
