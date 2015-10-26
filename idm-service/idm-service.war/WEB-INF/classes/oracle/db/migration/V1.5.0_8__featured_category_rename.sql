/* rename "portalFeaturedCategory" to "featuredCategory". Delete any existing "featuredCategory" first to avoid duplicates */
delete from metadata where key = 'featuredCategory';
update metadata set key = 'featuredCategory' where key = 'portalFeaturedCategory';
