-- Out of the box organizations
INSERT INTO organizations (uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, display_name, name, description)
    VALUES ('ff8080814812e22b01481300ab0d0001', current_timestamp, 0, 0, 0, current_timestamp, 0, 'Provider', 'Provider', 'Propel Provider Organization');
INSERT INTO organizations (uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, display_name, name, description)
    VALUES ('ff8080814812e22b01481300ab0d0002', current_timestamp, 0, 0, 0, current_timestamp, 0, 'Consumer', 'CONSUMER', 'Propel Consumer Organization');

-- PUBLIC out of the box metadata for Provider organization
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalTitle', 'Propel', 1, 'ff80808148239656014823a2c5e40001', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalWelcomeMsg', 'Management Console', 1, 'ff80808148239656014823a2c5e40002', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalFooterMsg', null, 1, 'ff80808148239656014823a2c5e40003', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalLegalNoticeUrl', null, 1, 'ff80808148239656014823a2c5e40004', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalShowTermsOfUse', '0', 1, 'ff80808148239656014823a2c5e40005', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('disclaimerText', null, 1, 'ff80808148239656014823a2c5e40006', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('securityLevel', null, 1, 'ff80808148239656014823a2c5e40007', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('themeName', null, 1, 'ff80808148239656014823a2c5e40008', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
-- private out of the box metadata for Provider organization
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalShowConfirmDialog', '0', 0, 'ff80808148239656014823a2c5e40009', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalFeaturedCategory', null, 0, 'ff80808148239656014823a2c5e40010', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalEnforceEndDate', '0', 0, 'ff80808148239656014823a2c5e40011', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalEndDatePeriod', '12', 0, 'ff80808148239656014823a2c5e40012', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');

-- PUBLIC out of the box metadata for Consumer organization
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalTitle', 'Propel', 1, 'ff808081481edd9f01481ee41fcf0001', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalWelcomeMsg', 'Marketplace Portal', 1, 'ff808081481edd9f01481ee41fcf0002', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalFooterMsg', null, 1, 'ff808081481edd9f01481ee41fcf0003', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalLegalNoticeUrl', null, 1, 'ff808081481edd9f01481ee41fcf0004', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalShowTermsOfUse', '0', 1, 'ff808081481edd9f01481ee41fcf0005', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('disclaimerText', null, 1, 'ff808081481edd9f01481ee41fcf0006', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('securityLevel', null, 1, 'ff808081481edd9f01481ee41fcf0007', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('themeName', null, 1, 'ff808081481edd9f01481ee41fcf0008', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
-- private out of the box metadata for Consumer organization
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalShowConfirmDialog', '0', 0, 'ff808081481edd9f01481ee41fcf0009', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalFeaturedCategory', null, 0, 'ff808081481edd9f01481ee41fcf0010', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalEnforceEndDate', '0', 0, 'ff808081481edd9f01481ee41fcf0011', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, "PUBLIC", uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalEndDatePeriod', '12', 0, 'ff808081481edd9f01481ee41fcf0012', current_timestamp, 0, 0, 0, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
