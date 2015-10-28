/* Add the pre-defined Roles for Propel 2.0*/
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
  VALUES ('45C8AB31231456799F9AAB78A4FD567D',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'IdM Administrator','SUPER_IDM_ADMIN', 'PROVIDER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
  VALUES ('45C8AB3C51654DF99F9AAB78A4FD567D',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Integrator','INTEGRATOR', 'PROVIDER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
  VALUES ('7E75D6F4C9844BCCACA11B636BADBC0E',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Catalog Administrator','CATALOG_ADMIN', 'CONSUMER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
  VALUES ('010989FAE09D45A695C203FB1D3ADDAE',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Aggregation Manager','AGGREGATION_ADMIN', 'CONSUMER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
  VALUES ('5C8049485EEB4445ABBDF003D80FA633',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Content Administrator','CONTENT_ADMIN', 'PROVIDER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
  VALUES ('F1E91C1833054F1F801AFCA852123E28',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Catalog Shopper','CONSUMER', 'CONSUMER');
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
  VALUES ('DB3EFE4D7A0743A48E55268F8B816D97',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Support Users','SUPPORT', 'CONSUMER');
