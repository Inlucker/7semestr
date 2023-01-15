drop schema NIR cascade;
CREATE SCHEMA NIR;

create table if not exists nir.trans
(
	val1 int,
	val2 int
);

delete from nir.trans;
insert into nir.trans values(1, 2);
insert into nir.trans values(1, 3);
insert into nir.trans values(1, 4);
insert into nir.trans values(2, 3);

delete from nir.trans;
insert into nir.trans values(1, 2);
insert into nir.trans values(1, 3);
insert into nir.trans values(1, 4);
insert into nir.trans values(2, 3);
insert into nir.trans values(2, 4);
insert into nir.trans values(3, 4);

delete from nir.trans;
insert into nir.trans values(3, 4);
insert into nir.trans values(2, 4);
insert into nir.trans values(2, 3);
insert into nir.trans values(1, 3);
insert into nir.trans values(1, 2);

select p.val1, p.val2, q.val2
from nir.trans as p, nir.trans as q
where p.val1 = q.val1 and p.val2 < q.val2;


create table if not exists nir.trans1
(
	val1 int
);

delete from nir.trans1;
insert into nir.trans1 values(1);
insert into nir.trans1 values(2);
insert into nir.trans1 values(3);
insert into nir.trans1 values(4);
insert into nir.trans1 values(5);
insert into nir.trans1 values(6);
insert into nir.trans1 values(7);

select p.val1, q.val1
from nir.trans1 as p, nir.trans1 as q
where p.val1 < q.val1;