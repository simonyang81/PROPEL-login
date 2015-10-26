DROP TABLE TOKENSTOREOBJECT;
CREATE TABLE TOKENSTOREOBJECT (
  UUID varchar(1024) not null,
  CREATED_DATE timestamp,
  DELETED varchar(32),
  IS_DISABLED number(1,0),
  IS_OUT_OF_SYNC number(1,0),
  LOCKED number(1,0),
  MODIFIED_DATE timestamp,
  VERSION_NUMBER Number(19),
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  request_token varchar(4000) not null unique,
  authentication_token varchar(4000),
  primary key (UUID)
);