/* Adding SUPPLIER_ADMIN role */
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
VALUES ('DA69A4DB8D245B4B6AAF4B43C2C1F8E',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Supplier Administrator','SUPPLIER_ADMIN', 'CONSUMER');

/* Adding SUPPLIER_VIEWER role */
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
VALUES ('F91FB30178934E96A4447E73FF7FF24B',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Supplier Viewer','SUPPLIER_VIEWER', 'PROVIDER');

/* Adding DIAGNOSTICS_ADMIN role */
insert into ROLES (UUID, CREATED_DATE, DELETED, IS_DISABLED, IS_OUT_OF_SYNC, LOCKED, MODIFIED_DATE, VERSION_NUMBER, DISPLAY_NAME, NAME, TYPE)
VALUES ('A26AD7F7659C4E3BAB3470E8E599A984',CURRENT_TIMESTAMP,null,false,false,true,CURRENT_TIMESTAMP,1,'Diagnostics Administrator','DIAGNOSTICS_ADMIN', 'PROVIDER');