DROP TABLE TOKENSTOREOBJECT;
CREATE TABLE TOKENSTOREOBJECT (
  UUID varchar(32) not null unique,
  CREATED_DATE timestamp,
  DELETED varchar(32),
  IS_DISABLED bit,
  IS_OUT_OF_SYNC bit,
  LOCKED bit,
  MODIFIED_DATE timestamp,
  VERSION_NUMBER int8,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  request_token varchar(4000) not null,
  authentication_token varchar(4000),
  primary key (UUID)
);