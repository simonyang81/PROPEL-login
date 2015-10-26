/* Create the table for KeyStone objects */
CREATE TABLE KeystoneConfiguration (
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
