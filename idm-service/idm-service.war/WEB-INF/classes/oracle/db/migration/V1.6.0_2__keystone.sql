/* Create the table for KeyStone objects */
CREATE TABLE KeystoneConfiguration (
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
  HOSTNAME varchar(1024),
  DOMAIN_NAME varchar(1024),
  PORT integer,
  PROTOCOL varchar(255),
  SERVICE_PATH varchar(1024),
  TRANSPORT_PASSWORD varchar(1024),
  TRANSPORT_PROJECT varchar(1024),
  TRANSPORT_USERNAME varchar(1024),
  primary key (UUID)
);
