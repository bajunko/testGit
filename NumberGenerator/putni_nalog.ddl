--==============================================================
-- Table: NALOG
--==============================================================
create table DEV.NALOG (
    ID                      integer           not null,
    DATUM_KREIRANJA         date              not null,
    ZAPOSLENIK              varchar(100)      not null,
    DATUM_PUTOVANJA         date              not null,
    PROJEKT                 varchar(100),
    ZADATAK                 varchar(100),
    TRAJANJE                integer           not null,
    USER_ID                 varchar(100)      not null,
    CREATION_TIME           timestamp         not null,
    primary key (ID)
);

--==============================================================
-- Sequence: NALOG_SEQ
--==============================================================
create sequence DEV.NALOG_SEQ
    START WITH 1
    CACHE 50;


--==============================================================
-- Table: MJESTA
--==============================================================
create table DEV.MJESTA (
    ID                      integer           not null,
    NALOG_ID                integer           not null,
    ULICA                   varchar(30)       not null,
    KUCNI_BROJ              varchar(5)        not null,
    GRAD                    varchar(20)       not null,
    POSTANSKI_BROJ          varchar(50)       not null,
    CREATION_TIME           timestamp         not null,
    primary key (ID),
    foreign key (NALOG_ID) references DEV.NALOG (ID) on delete cascade
);

--==============================================================
-- Sequence: MJESTA_SEQ
--==============================================================
create sequence DEV.MJESTA_SEQ
    START WITH 1
    CACHE 50;


--==============================================================
-- Table: AKONTACIJA
--==============================================================
create table DEV.AKONTACIJA (
    ID                      integer           not null,
    NALOG_ID                integer           not null,
    VALUTA                  char(3)           not null,
    IZNOS                   varchar(20)       not null,
    DATUM_URUCENJA          date              not null,
    CREATION_TIME           timestamp         not null,
    primary key (ID),
    foreign key (NALOG_ID) references DEV.NALOG (ID) on delete cascade
);

--==============================================================
-- Sequence: AKONTACIJA_SEQ
--==============================================================
create sequence DEV.AKONTACIJA_SEQ
    START WITH 1
    CACHE 50;
