CREATE TABLE clients(
	id serial not null,
	name varchar(255) not null,
	"lastName" varchar(255) not null,
	email varchar(200) not null,
	telephone numeric not null,
	active boolean not null,
	primary key (id)
);

SELECT * FROM clients;

CREATE TABLE memberships(
	id serial not null,
	name varchar(255) not null,
	price money not null,
	"durationMonth" smallint not null,
	active boolean not null,
	primary key (id)
);

SELECT * FROM memberships;

CREATE TABLE payments(
	id serial not null,
	"membershipId" integer not null,
	"clientId" integer not null,
	"classId" integer not null,
	amount money not null,
	date timestamp not null,
	primary key(id),
	foreign key ("membershipId") references memberships(id),
	foreign key ("clientId") references clients(id),
	foreign key ("classId") references classes(id)
);

SELECT * FROM payments;

CREATE TABLE classes(
	id serial not null,
	name varchar(255) not null,
	"instructorName" varchar(255) not null,
	email varchar(255) not null,
	active boolean not null,
	primary key(id)
);

SELECT * FROM classes;

CREATE TABLE "mondaySchedule"(
	id serial not null,
	"classId" integer not null,
	schedule interval not null,
	active boolean not null,
	primary key (id),
	foreign key ("classId") references classes(id)
);

SELECT * FROM "mondaySchedule"; 

CREATE TABLE "tuesdaySchedule"(
	id serial not null,
	"classId" integer not null,
	schedule interval not null,
	active boolean not null,
	primary key (id),
	foreign key ("classId") references classes(id)
);

SELECT * FROM "tuesdaySchedule";

CREATE TABLE "wednesdaySchedule"(
	id serial not null,
	"classId" integer not null,
	schedule interval not null,
	active boolean not null,
	primary key (id),
	foreign key ("classId") references classes(id)
);

SELECT * FROM "wednesdaySchedule";

CREATE TABLE "thursdaySchedule"(
	id serial not null,
	"classId" integer not null,
	schedule interval not null,
	active boolean not null,
	primary key (id),
	foreign key ("classId") references classes(id)
);

SELECT * FROM "thursdaySchedule";

CREATE TABLE "fridaySchedule"(
	id serial not null,
	"classId" integer not null,
	schedule interval not null,
	active boolean not null,
	primary key (id),
	foreign key ("classId") references classes(id)
);

SELECT * FROM "fridaySchedule";

CREATE TABLE "saturdaySchedule"(
	id serial not null,
	"classId" integer not null,
	schedule interval not null,
	active boolean not null,
	primary key (id),
	foreign key ("classId") references classes(id)
);

SELECT * FROM "saturdaySchedule";