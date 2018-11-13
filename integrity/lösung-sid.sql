begin;

-- 1.

create table KOSTENSTELLE (
    kst int not null primary key,
    kstname varchar(50) not null,
    manager int
);

-- 2.

create table MITARBEITER (
    pnr int not null primary key,
    name varchar(50) not null,
    kst int,
    gehalt decimal(9,2) check(not gehalt < 5000) not null,
    bonus int not null default 0
);

-- 3.

alter table MITARBEITER add constraint kst_fk foreign key (kst) references KOSTENSTELLE(kst);
alter table MITARBEITER add check(gehalt + bonus < 200000);

-- 4.

create table kind (
    pnr int not null primary key,
    kindname varchar(50) not null primary key,
    gebdatum date not null
);

-- 5.

insert into MITARBEITER values (1, 'Stefan', null, 6500, 0), (2, 'Maria', null, 7200, 800);
insert into kind values (1, 'Stephanie', date '1999-12-02'), (1, 'Ruben', '2000-08-12'), (2, 'Erwin', '1988-03-23');

-- 6.

alter table kind add constraint kind foreign key (pnr) references MITARBEITER(pnr);

-- 7.

create table kindanz (
    pnr int,
    kindanz int,
    foreign key (pnr) references MITARBEITER(pnr)
);

-- 7a

insert into kindanz (select pnr, count(kindname) from kind group by pnr);

-- 8
create function kindanzupdate() returns trigger as $emp_kindanzupdate$
begin
    update kindanz set kindanz = kindanz + 1 where pnr = new.pnr;
    insert into kindanz select pnr, count(*) from kind where pnr not in (select pnr from kindanz) group by pnr;
end;
$emp_kindanzupdate$ language plpgsql;

create trigger kindzaehler after insert on kind for each row execute procedure kindanzupdate();

end;