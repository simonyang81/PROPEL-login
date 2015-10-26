DROP TABLE TOKENSTOREOBJECT;
CREATE TABLE TOKENSTOREOBJECT (
  UUID varchar(1024) not null unique,
  CREATED_DATE datetime,
  DELETED varchar(32),
  IS_DISABLED bit,
  IS_OUT_OF_SYNC bit,
  LOCKED bit,
  MODIFIED_DATE datetime,
  VERSION_NUMBER bigint,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  request_token varchar(4000) not null unique,
  authentication_token varchar(4000),
  primary key (UUID)
);