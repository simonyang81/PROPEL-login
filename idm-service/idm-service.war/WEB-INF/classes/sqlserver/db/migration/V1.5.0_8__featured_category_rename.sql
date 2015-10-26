/* rename "portalFeaturedCategory" to "featuredCategory". Delete any existing "featuredCategory" first to avoid duplicates */
delete from metadata where [key] = 'featuredCategory';
update metadata set [key] = 'featuredCategory' where [key] = 'portalFeaturedCategory';
alter table organizations add type varchar(255);
alter table roles add type varchar(255);

