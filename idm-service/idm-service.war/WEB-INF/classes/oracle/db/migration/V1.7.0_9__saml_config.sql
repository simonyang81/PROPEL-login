/*Create the table for Samlconfig objects */
CREATE TABLE SAMLCONFIG (
  UUID varchar(32) not null,
  CREATED_DATE timestamp,
  DELETED varchar(32),
  IS_DISABLED number(1,0),
  IS_OUT_OF_SYNC number(1,0),
  LOCKED number(1,0),
  MODIFIED_DATE timestamp,
  VERSION_NUMBER Number(19),
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  DESCRIPTION varchar(2048),
  ENTITYURL varchar(1024),
  TYPE varchar(2048),
  ORGANIZATION varchar(32),
  primary key (UUID)
);
