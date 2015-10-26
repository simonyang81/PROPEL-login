DROP TABLE TOKENSTOREOBJECT;
CREATE TABLE TOKENSTOREOBJECT (
  UUID varchar(1024) not null unique,
  CREATED_DATE timestamp,
  DELETED varchar(1024),
  IS_DISABLED boolean,
  IS_OUT_OF_SYNC boolean,
  LOCKED boolean,
  MODIFIED_DATE timestamp,
  VERSION_NUMBER int8,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  request_token varchar(4000) not null unique,
  authentication_token varchar(4000),
  primary key (UUID)
);