/* Create table for Abstract Group representation objects */
CREATE TABLE ABSTRACT_GROUP_REPRESENTATION (
  UUID varchar(32) not null unique,
  CREATED_DATE timestamp,
  DELETED varchar(32),
  IS_DISABLED boolean,
  IS_OUT_OF_SYNC boolean,
  LOCKED boolean,
  MODIFIED_DATE timestamp,
  VERSION_NUMBER int8,
  DISPLAY_NAME varchar(1024),
  GROUP_FK varchar(32),
  NAME varchar(1024),
  TYPE VARCHAR(255),
  ENTITY_TAG VARCHAR(32),
  primary key (UUID)
);

CREATE TABLE LDAP_GROUP_REP (
  UUID varchar(32) not null unique,
  CONFIG_ID VARCHAR(32),
  GROUP_DN VARCHAR(1024),
  primary key (UUID)
);

CREATE TABLE LDAP_OU_GROUP_REP (
  UUID varchar(32) not null unique,
  CONFIG_ID VARCHAR(32),
  OU_DN VARCHAR(1024),
  primary key (UUID)
);

CREATE TABLE DATABASE_GROUP_REP (
  UUID varchar(32) not null unique,
  primary key (UUID)
);

CREATE TABLE USER_GROUP_DATABASE_REP (
  USER_ID varchar(32) not null unique,
  REPRESENTATION_ID varchar(32) not null unique,
  primary key (USER_ID, REPRESENTATION_ID)
);