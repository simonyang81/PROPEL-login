-- Out of the box organizations
INSERT INTO organizations (uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, display_name, name, description)
    VALUES ('ff8080814812e22b01481300ab0d0001', current_timestamp, false, false, false, current_timestamp, 0, 'Provider', 'Provider', 'Propel Provider Organization');
INSERT INTO organizations (uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, display_name, name, description)
    VALUES ('ff8080814812e22b01481300ab0d0002', current_timestamp, false, false, false, current_timestamp, 0, 'Consumer', 'CONSUMER', 'Propel Consumer Organization');

-- public out of the box metadata for Provider organization
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalTitle', 'Propel', true, 'ff80808148239656014823a2c5e40001', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalWelcomeMsg', 'Management Console', true, 'ff80808148239656014823a2c5e40002', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalFooterMsg', null, true, 'ff80808148239656014823a2c5e40003', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalLegalNoticeUrl', null, true, 'ff80808148239656014823a2c5e40004', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalShowTermsOfUse', 'false', true, 'ff80808148239656014823a2c5e40005', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('disclaimerText', null, true, 'ff80808148239656014823a2c5e40006', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('securityLevel', null, true, 'ff80808148239656014823a2c5e40007', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('themeName', null, true, 'ff80808148239656014823a2c5e40008', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
-- private out of the box metadata for Provider organization
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalShowConfirmDialog', 'false', false, 'ff80808148239656014823a2c5e40009', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalFeaturedCategory', null, false, 'ff80808148239656014823a2c5e40010', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalEnforceEndDate', 'false', false, 'ff80808148239656014823a2c5e40011', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalEndDatePeriod', '12', false, 'ff80808148239656014823a2c5e40012', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0001');

-- public out of the box metadata for Consumer organization
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalTitle', 'Propel', true, 'ff808081481edd9f01481ee41fcf0001', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalWelcomeMsg', 'Marketplace Portal', true, 'ff808081481edd9f01481ee41fcf0002', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalFooterMsg', null, true, 'ff808081481edd9f01481ee41fcf0003', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalLegalNoticeUrl', null, true, 'ff808081481edd9f01481ee41fcf0004', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalShowTermsOfUse', 'false', true, 'ff808081481edd9f01481ee41fcf0005', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('disclaimerText', null, true, 'ff808081481edd9f01481ee41fcf0006', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('securityLevel', null, true, 'ff808081481edd9f01481ee41fcf0007', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('themeName', null, true, 'ff808081481edd9f01481ee41fcf0008', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
-- private out of the box metadata for Consumer organization
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalShowConfirmDialog', 'false', false, 'ff808081481edd9f01481ee41fcf0009', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalFeaturedCategory', null, false, 'ff808081481edd9f01481ee41fcf0010', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalEnforceEndDate', 'false', false, 'ff808081481edd9f01481ee41fcf0011', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
INSERT INTO metadata (key, value, public, uuid, created_date, is_disabled, is_out_of_sync, locked, modified_date, version_number, organizations_fk)
    VALUES ('portalEndDatePeriod', '12', false, 'ff808081481edd9f01481ee41fcf0012', current_timestamp, false, false, false, current_timestamp, 0, 'ff8080814812e22b01481300ab0d0002');
