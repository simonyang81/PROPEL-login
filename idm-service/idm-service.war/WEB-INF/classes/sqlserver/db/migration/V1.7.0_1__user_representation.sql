/* Create table for Representation objects */
CREATE TABLE ABSTRACT_USER_REPRESENTATION (
  SOURCE varchar(1024),
  USER_KEY varchar(1024),
  REPRESENTATION_TYPE varchar(255),
  USER_FK varchar(32),
  UUID varchar(32) not null unique,
  CREATED_DATE timestamp,
  DELETED varchar(32),
  DTYPE varchar(32),
  ENTITY_TAG VARCHAR(32),
  IS_DISABLED BIT,
  IS_OUT_OF_SYNC BIT,
  LOCKED BIT,
  MODIFIED_DATE timestamp,
  VERSION_NUMBER BIGINT,
  primary key (UUID)
);
