/* Create table for Aggregated User objects */
CREATE TABLE ABSTRACT_USER (
  UUID varchar(32) not null unique,
  CREATED_DATE timestamp,
  DELETED varchar(32),
  IS_DISABLED boolean,
  IS_OUT_OF_SYNC boolean,
  LOCKED boolean,
  MODIFIED_DATE timestamp,
  VERSION_NUMBER int8,
  DISPLAY_NAME varchar(1024),
  NAME varchar(1024),
  ENTITY_TAG VARCHAR(32),
  ORGANIZATION varchar(32),
  primary key (UUID)
);

CREATE TABLE ABSTRACT_USER_METADATA (
  UUID varchar(32),
  FIELD_KEY VARCHAR(255),
  FIELD_VALUE VARCHAR (255),
  PRIMARY KEY (UUID, FIELD_KEY, FIELD_VALUE)
)