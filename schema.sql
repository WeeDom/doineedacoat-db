\set ONERROR stop
BEGIN;
create sequence metoffice_id_seq increment 1;

CREATE TABLE metoffice_sites (
    id int not null default nextval('metoffice_id_seq'),
    site_id int not null,
    name varchar not null,
    longitude double precision not null,
    latitude double precision not null
);
CREATE INDEX metoffice_site_pkey on metoffice_sites (id);
--ROLLBACK;
COMMIT
