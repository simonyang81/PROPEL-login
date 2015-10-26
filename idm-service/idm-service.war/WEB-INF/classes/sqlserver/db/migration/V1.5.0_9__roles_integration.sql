/*
 * Add type column to organization table.
 */
update organizations set type = 'PROVIDER' where name like '%PROVIDER' or name like '%rovider';
update organizations set type = 'CONSUMER' where type is null;

/*
 * Groups require a reference to an organization.
 */
alter table groups add organization varchar(32);

/*
 * Roles need to have the organization type to distinguish between different classes of roles. This column needs to
 * be populated in seeded data.
 */

update roles set type = 'CONSUMER' where name = 'SERVICE_CONSUMER';
update roles set type = 'PROVIDER' where name = 'CONSUMER_SERVICE_ADMINISTRATOR';
update roles set type = 'PROVIDER' where name = 'SERVICE_BUSINESS_MANAGER';
update roles set type = 'PROVIDER' where name = 'SERVICE_DESIGNER';
update roles set type = 'PROVIDER' where name = 'CSA_ADMIN';
update roles set type = 'PROVIDER' where name = 'RESOURCE_SUPPLY_MANAGER';
update roles set type = 'PROVIDER' where name = 'SERVICE_OPERATIONS_MANAGER';
update roles set type = 'CONSUMER' where type is null;

/*
 * The consumer organization administrator role is a new role for CSA 4.2; Propel 1.1 can take advantage of this
 * role for the IdM Admin UI and MPP.
 */
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, type)
  VALUES ('90ce361047ead1830147ead18f2a0007',CURRENT_TIMESTAMP,null,0,0,1,CURRENT_TIMESTAMP,1,'Consumer Organization Administrator','CONSUMER_ORGANIZATION_ADMINISTRATOR','CONSUMER');

/*
 * Reflect change in organization FK column name
 */
exec sp_rename 'baseauthenticationconfiguration.organizations_fk', 'organization';
exec sp_rename 'metadata.organizations_fk', 'organization';

alter table BaseAuthenticationConfiguration add processing_order BIGINT;
