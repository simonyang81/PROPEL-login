CREATE TABLE TOKENSTOREOBJECT (
request_token varchar(32) not null,
authentication_token varchar(32),
primary key (request_token)
);