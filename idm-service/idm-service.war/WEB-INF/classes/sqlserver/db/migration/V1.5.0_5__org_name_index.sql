/* Add an index on organization name */
create NONCLUSTERED index org_name_idx on organizations(name);