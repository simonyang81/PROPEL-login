/*
 * Add type column to organization table.
 */
alter table ORGANIZATIONS add column type varchar(255);
update ORGANIZATIONS set type = 'PROVIDER' where name like '%PROVIDER' or name like '%rovider';
update ORGANIZATIONS set type = 'CONSUMER' where type is null;

/*
 * Groups require a reference to an organization.
 */
alter table GROUPS add column organization varchar(32);

/*
 * Roles need to have the organization type to distinguish between different classes of roles. This column needs to
 * be populated in seeded data.
 */
alter table ROLES add column type varchar(255);

update ROLES set type = 'CONSUMER' where name = 'SERVICE_CONSUMER';
update ROLES set type = 'PROVIDER' where name = 'CONSUMER_SERVICE_ADMINISTRATOR';
update ROLES set type = 'PROVIDER' where name = 'SERVICE_BUSINESS_MANAGER';
update ROLES set type = 'PROVIDER' where name = 'SERVICE_DESIGNER';
update ROLES set type = 'PROVIDER' where name = 'CSA_ADMIN';
update ROLES set type = 'PROVIDER' where name = 'RESOURCE_SUPPLY_MANAGER';
update ROLES set type = 'PROVIDER' where name = 'SERVICE_OPERATIONS_MANAGER';
update ROLES set type = 'CONSUMER' where type is null;

/*
 * The consumer organization administrator role is a new role for CSA 4.2; Propel 1.1 can take advantage of this
 * role for the IdM Admin UI and MPP.
 */
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
  VALUES ('90ce361047ead1830147ead18f2a0007',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Consumer Organization Administrator','CONSUMER_ORGANIZATION_ADMINISTRATOR','CONSUMER');

/*
 * Reflect change in organization FK column name
 */
 alter table BaseAuthenticationConfiguration drop foreign key FK692AA3ADD36FD973;
 alter table BaseAuthenticationConfiguration change column organizations_fk organization varchar(32);
 alter table BaseAuthenticationConfiguration add constraint FK692AA3ADD36FD973 foreign key (organization) references ORGANIZATIONS(uuid);

alter table METADATA drop foreign key FK13D36B2FD36FD973;
alter table METADATA change column organizations_fk organization varchar(32);
alter table METADATA add constraint FK13D36B2FD36FD973 foreign key (organization) references ORGANIZATIONS(uuid);
