/*
 * Initial Schema creation script for Identity Management database.
 */

/* Create the table for BaseAuthenticationConfiguration objects */
CREATE TABLE BaseAuthenticationConfiguration (
  DTYPE varchar(32) not null,
  UUID varchar(32) not null unique,
  CREATED_DATE datetime,
  DELETED varchar(32),
  IS_DISABLED bit,
  IS_OUT_OF_SYNC bit,
  LOCKED bit,
  MODIFIED_DATE datetime,
  VERSION_NUMBER BIGINT,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  HOSTNAME varchar(1024),
  DOMAIN_NAME varchar(1024),
  PORT varchar(255),
  PROTOCOL varchar(255),
  SERVICE_PATH varchar(1024),
  TRANSPORT_PASSWORD varchar(1024),
  TRANSPORT_PROJECT varchar(1024),
  TRANSPORT_USERNAME varchar(1024),
  BASE_DOMAIN_NAME varchar(1024),
  GROUP_MEMBERSHIP varchar(1024),
  MANAGER_ID_VALUE varchar(1024),
  MANAGER_ID varchar(1024),
  PASSWORD varchar(1024),
  SEARCH_SUBTREE bit,
  SSL_SET bit,
  URI varchar(1024),
  USER_EMAIL_ADDRESS varchar(1024),
  USER_ID varchar(1024),
  USERNAME varchar(1024),
  USER_SEARCH_BASE varchar(1024),
  USER_SEARCH_FILTER varchar(1024),
  ORGANIZATIONS_FK varchar(32),
  primary key (UUID)
);

/* Create the table for Metadata objects */
CREATE TABLE METADATA (
  [KEY] varchar(32) not null,
  UUID varchar(32) not null,
  CREATED_DATE datetime,
  DELETED varchar(32),
  IS_DISABLED bit,
  IS_OUT_OF_SYNC bit,
  LOCKED bit,
  MODIFIED_DATE datetime,
  VERSION_NUMBER bigint,
  [PUBLIC] bit,
  VALUE varchar(max),
  ORGANIZATIONS_FK varchar(32),
  primary key ([KEY], UUID)
);

/* Create the table for Organization objects */
CREATE TABLE ORGANIZATIONS (
  UUID varchar(32) not null,
  CREATED_DATE datetime,
  DELETED varchar(32),
  IS_DISABLED bit,
  IS_OUT_OF_SYNC bit,
  LOCKED bit,
  MODIFIED_DATE datetime,
  VERSION_NUMBER bigint,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  DESCRIPTION varchar(2048),
  ICON_URL varchar(1024),
  primary key (UUID)
);

/* Create table for Trust objects */
CREATE TABLE Trust (
  UUID varchar(32) not null,
  CREATED_DATE datetime,
  DELETED varchar(32),
  IS_DISABLED bit,
  IS_OUT_OF_SYNC bit,
  LOCKED bit,
  MODIFIED_DATE datetime,
  VERSION_NUMBER bigint,
  Expiration datetime,
  TrusteeOrg varchar(1024),
  TrusteeUsername varchar(1024),
  TrustorOrg varchar(1024),
  TrustorUsername varchar(1024),
  primary key (UUID)
);

/* Create table for Role objects */
CREATE TABLE ROLES (
  UUID varchar(32) not null unique,
  CREATED_DATE datetime,
  DELETED varchar(32),
  IS_DISABLED bit,
  IS_OUT_OF_SYNC bit,
  LOCKED bit,
  MODIFIED_DATE datetime,
  VERSION_NUMBER bigint,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  primary key (UUID)
);

/* Create table for Group objects */
CREATE TABLE GROUPS (
  UUID varchar(32) not null unique,
  CREATED_DATE datetime,
  DELETED varchar(32),
  IS_DISABLED bit,
  IS_OUT_OF_SYNC bit,
  LOCKED bit,
  MODIFIED_DATE datetime,
  VERSION_NUMBER bigint,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  GROUP_INFO varchar(1024),
  primary key (UUID)
);

/* Create join table for Role and Group objects */
CREATE TABLE ROLES_GROUPS (
  group_id varchar(32) not null,
  role_id varchar(32) not null,
  primary key (role_id, group_id)
);

/* Add the foreign key constraints for BaseAuthenticationConfiguration & Organization join column */
alter table BaseAuthenticationConfiguration add constraint FK692AA3ADD36FD973 foreign key (ORGANIZATIONS_FK) references ORGANIZATIONS;

/* Add the foreign key constraint for Metadata & Organization join column */
alter table METADATA add constraint FK13D36B2FD36FD973 foreign key (ORGANIZATIONS_FK) references ORGANIZATIONS;

/* Add the foreign key constraint for Roles and Groups join table */
alter table ROLES_GROUPS add constraint FKB2FBF9B65D808A0E foreign key (role_id) references ROLES;
alter table ROLES_GROUPS add constraint FKB2FBF9B680047BC6 foreign key (group_id) references GROUPS;

/* Add the pre-defined Roles */
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME)
  VALUES ('90ce361047ead1830147ead18f2a0000',CURRENT_TIMESTAMP,null,0,0,1,CURRENT_TIMESTAMP,1,'Service Consumer','SERVICE_CONSUMER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME)
  VALUES ('90ce361047ead1830147ead18f2a0001',CURRENT_TIMESTAMP,null,0,0,1,CURRENT_TIMESTAMP,1,'Consumer Service Administrator','CONSUMER_SERVICE_ADMINISTRATOR');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME)
  VALUES ('90ce361047ead1830147ead18f2a0002',CURRENT_TIMESTAMP,null,0,0,1,CURRENT_TIMESTAMP,1,'Service Business Manager','SERVICE_BUSINESS_MANAGER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME)
  VALUES ('90ce361047ead1830147ead18f2a0003',CURRENT_TIMESTAMP,null,0,0,1,CURRENT_TIMESTAMP,1,'Service Designer','SERVICE_DESIGNER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME)
  VALUES ('90ce361047ead1830147ead18f2a0004',CURRENT_TIMESTAMP,null,0,0,1,CURRENT_TIMESTAMP,1,'CSA Admin','CSA_ADMIN');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME)
  VALUES ('90ce361047ead1830147ead18f2a0005',CURRENT_TIMESTAMP,null,0,0,1,CURRENT_TIMESTAMP,1,'Resource Supply Manager','RESOURCE_SUPPLY_MANAGER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME)
  VALUES ('90ce361047ead1830147ead18f2a0006',CURRENT_TIMESTAMP,null,0,0,1,CURRENT_TIMESTAMP,1,'Service Operations Manager','SERVICE_OPERATIONS_MANAGER');
