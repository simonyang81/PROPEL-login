/* rename "portalFeaturedCategory" to "featuredCategory". Delete any existing "featuredCategory" first to avoid duplicates */
delete from METADATA where `key` = 'featuredCategory';
update METADATA set `key` = 'featuredCategory' where `key` = 'portalFeaturedCategory';
