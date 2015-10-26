/* Add an index on organization name */
create index org_name_idx on ORGANIZATIONS (name(200));
