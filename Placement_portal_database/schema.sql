-- use placement_portal ;
-- create DATABASE Data ;

create table Student (
-- Personal Details
	StudID int primary key ,
	Roll_Number varchar (20) unique not null,
	Name varchar(50) not null,
	Branch varchar(50) not null,
	Email varchar(50) unique not null ,
	Contact varchar(15)  not null,
	CONSTRAINT chk_contact_format CHECK (Contact REGEXP '^(\+91)?[6-9][0-9]{9}$'),

-- Academic 
	CGPA decimal(3,2) check (CGPA between 0 and 10) ,
	SSC_percent decimal(3,2) check (SSC_percent between 0 and 100),
	HSC_percent decimal(3,2) check (HSC_percent between 0 and 100),

-- Eligibility
	Active_backlog boolean default False,
	Graduation_year int check(Graduation_year between 2020 and 2030),

-- Audit
	Last_Updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);