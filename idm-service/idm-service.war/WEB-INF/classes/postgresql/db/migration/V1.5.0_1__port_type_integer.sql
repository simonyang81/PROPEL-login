/* Convert port to an integer. Should be safe to convert. */
alter table baseauthenticationconfiguration alter column port type integer using (port::integer);
