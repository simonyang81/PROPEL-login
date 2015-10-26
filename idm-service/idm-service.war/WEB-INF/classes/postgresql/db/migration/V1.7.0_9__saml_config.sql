/* Create the table for SamlConfig objects */
CREATE TABLE SAMLCONFIG (
  UUID varchar(32) not null,
  CREATED_DATE timestamp,
  DELETED varchar(32),
  IS_DISABLED boolean,
  IS_OUT_OF_SYNC boolean,
  LOCKED boolean,
  MODIFIED_DATE timestamp,
  VERSION_NUMBER int8,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  DESCRIPTION varchar(2048),
  ENTITYURL varchar(2048),
  TYPE varchar(2048),
  ORGANIZATION varchar(32),
  primary key (UUID)
);