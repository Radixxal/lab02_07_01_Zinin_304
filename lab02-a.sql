-- Check if table installs has already been created
DROP TABLE IF EXISTS soft, installs, pcs, rooms, employees, switches, pcs_to_switches;

-- soft
CREATE TABLE soft
(
	id serial PRIMARY KEY NOT NULL,
	sname varchar(30) NOT NULL,
	ver varchar(5) NOT NULL,
	quant integer NOT NULL, CHECK (quant < 3000)
);

-- installs
CREATE TABLE installs
(
	pc_id int NOT NULL,
	soft_id int NOT NULL
);

-- pcs
CREATE TABLE pcs
(
	id serial PRIMARY KEY NOT NULL,
	room_id int NOT NULL,
	note varchar(120),
	ip_addr varchar(15) NOT NULL,
	mac_addr varchar(17) NOT NULL
);

-- rooms
CREATE TABLE rooms
(
	id serial PRIMARY KEY NOT NULL,
	num varchar(3) NOT NULL,
	emp_id int NOT NULL
);

-- employees
CREATE TABLE employees
(
	id serial PRIMARY KEY NOT NULL,
	lname varchar(50) NOT NULL,
	fname varchar(50) NOT NULL,
	mname varchar(50)
);


-- switches
CREATE TABLE switches
(
	id serial PRIMARY KEY NOT NULL,
	model_name varchar(50) NOT NULL,
	quant_ports int NOT NULL, CHECK (quant_ports < 40),
	serial_number varchar(50) NOT NULL
);

--pcs_to_switches
CREATE TABLE pcs_to_switches
(
	id_sw int NOT NULL,
	id_pc int NOT NULL
);
