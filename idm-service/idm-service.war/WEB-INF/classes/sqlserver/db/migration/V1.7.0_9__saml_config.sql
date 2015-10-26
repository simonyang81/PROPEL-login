/*Create the table for saml objects */
CREATE TABLE SAMLCONFIG (
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
  ENTITYURL varchar(1024),
  TYPE varchar(2048),
  ORGANIZATION varchar(32),
  primary key (UUID)
);