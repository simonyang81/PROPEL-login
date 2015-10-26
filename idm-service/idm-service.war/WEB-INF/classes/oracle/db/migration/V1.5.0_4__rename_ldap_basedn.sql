/* Remove the ldap uri field */
alter table BaseAuthConfiguration rename column BASE_DOMAIN_NAME to BASE_DN;
