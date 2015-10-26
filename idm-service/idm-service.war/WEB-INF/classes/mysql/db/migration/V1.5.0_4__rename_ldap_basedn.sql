/* Remove the ldap uri field */
alter table BaseAuthenticationConfiguration change BASE_DOMAIN_NAME BASE_DN varchar(1024);