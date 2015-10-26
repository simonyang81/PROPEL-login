-- update all active widget:PropelLink widgets (don't worry if any of them have been modified)
update metadata set value =
'{
  "type": "LINK",
  "url": "http://www.hp.com/go/propel",
  "backgroundImageUrl": "mpp-theme/dist/mpp-theme/images/propel-mpp-tile.png",
  "target": "_blank"
}'
where [key] = 'widget:PropelLink' and deleted is null;
