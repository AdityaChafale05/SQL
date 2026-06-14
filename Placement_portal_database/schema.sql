

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




create table Companies (
	Company_id int primary key auto_increment,
	Company_name varchar(50) not null,
	Company_type varchar(50),
	Industry_sector varchar(50) ,

-- Location 
	City varchar(50) not null,
	State varchar(50),
	Zipcode varchar(10),
	Country varchar(50) default 'India',

-- Contact
	Contact_email varchar(100) unique not null ,
	Contact_phone varchar(20) ,
	Hr_contact varchar(50) not null ,
	is_active boolean default True ,

-- Audit
	last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);



create table Job (
	JobID INT PRIMARY KEY,
    Company_id INT,
    JobRole VARCHAR(100),
    EligibilityCGPA DECIMAL(3,2),
    Salary int ,
    Openings INT,
    FOREIGN KEY (Company_id)
        REFERENCES Companies(Company_id)
);




CREATE TABLE Applications (
    ApplicationID INT PRIMARY KEY AUTO_INCREMENT, 
    JobID INT NOT NULL,
    StudID INT NOT NULL,
    ApplicationDate DATETIME DEFAULT CURRENT_TIMESTAMP, 
    ResumeURL VARCHAR(255),
    CoverLetterURL VARCHAR(255), 
    EligibilityCheck BOOLEAN DEFAULT FALSE,
    RejectionReason VARCHAR(255), 
    
    -- Foreign Keys
    FOREIGN KEY (JobID) REFERENCES Job(JobID),
    FOREIGN KEY (StudID) REFERENCES Student(StudID)
    /*
-- Constraints
     UNIQUE (JobID, StudID), -- Prevents duplicate applications
     INDEX idx_status (StatusID), -- Improves query speed for filtering by status
     INDEX idx_student (StudID) -- Improves query speed for student dashboards
	*/
); 
    
    
    
