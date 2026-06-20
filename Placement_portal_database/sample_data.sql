use placement_portal ;

/*
-- values for Students 
INSERT INTO Student (StudID, Roll_Number, Name, Branch, Email, Contact, CGPA, SSC_percent, HSC_percent, Active_backlog, Graduation_year) VALUES
(101, 'CS2027001', 'Aarav Sharma', 'CSE', 'aarav.sharma@gmail.com', '9876543210', 8.50, 88.40, 85.20, FALSE, 2027),
(102, 'CS2027002', 'Diya Patel', 'CSE', 'diya.patel@yahoo.com', '8765432109', 9.20, 92.60, 91.00, FALSE, 2027),
(103, 'EC2026001', 'Arjun Nair', 'ECE', 'arjun.nair@outlook.com', '7654321098', 6.80, 75.00, 72.50, TRUE, 2026),
(104, 'IT2027001', 'Ananya Iyer', 'IT', 'ananya.i@gmail.com', '6543210987', 7.90, 81.20, 79.80, FALSE, 2027),
(105, 'ME2025001', 'Rohan Das', 'ME', 'rohan.das@gmail.com', '9123456789', 6.20, 68.50, 64.00, FALSE, 2025),
(106, 'CS2027003', 'Isha Gupta', 'CSE', 'isha.g@gmail.com', '8234567890', 9.80, 95.00, 94.20, FALSE, 2027),
(107, 'EE2026001', 'Vivaan Joshi', 'EE', 'vivaan.j@yahoo.com', '7345678901', 7.10, 78.00, 75.00, FALSE, 2026),
(108, 'IT2027002', 'Sanya Malhotra', 'IT', 'sanya.m@gmail.com', '6456789012', 8.15, 84.60, 82.10, FALSE, 2027),
(109, 'CS2026004', 'Kabir Mehta', 'CSE', 'kabir.m@outlook.com', '9567890123', 5.90, 65.00, 61.80, TRUE, 2026),
(110, 'EC2027002', 'Meera Reddy', 'ECE', 'meera.r@gmail.com', '8678901234', 8.75, 89.00, 87.50, FALSE, 2027),
(111, 'ME2026002', 'Aditya Verma', 'ME', 'aditya.v@gmail.com', '7789012345', 7.40, 76.20, 73.40, FALSE, 2026),
(112, 'CS2027005', 'Kriti Deshmukh', 'CSE', 'kriti.d@gmail.com', '6890123456', 10.00, 98.20, 96.50, FALSE, 2027),
(113, 'IT2025003', 'Yash Choudhary', 'IT', 'yash.c@yahoo.com', '9901234567', 6.50, 72.00, 69.00, TRUE, 2025),
(114, 'EE2027002', 'Sneha Pillai', 'EE', 'sneha.p@gmail.com', '8912345678', 8.30, 86.00, 84.00, FALSE, 2027),
(115, 'EC2025003', 'Devansh Saxena', 'ECE', 'devansh.s@gmail.com', '7923456789', 7.25, 79.50, 77.00, FALSE, 2025),
(116, 'CS2026006', 'Tanvi Rao', 'CSE', 'tanvi.r@outlook.com', '6934567890', 8.90, 91.00, 89.50, FALSE, 2026),
(117, 'ME2027003', 'Pranav Mishra', 'ME', 'pranav.m@gmail.com', '9345678901', 6.70, 71.40, 68.20, FALSE, 2027),
(118, 'IT2026004', 'Riya Sen', 'IT', 'riya.sen@gmail.com', '8456789012', 7.65, 82.00, 80.50, FALSE, 2026),
(119, 'EE2025003', 'Aaryan Kapoor', 'EE', 'aaryan.k@yahoo.com', '7567890123', 5.80, 63.50, 60.00, TRUE, 2025),
(120, 'CS2027007', 'Anika Singh', 'CSE', 'anika.s@gmail.com', '6678901234', 9.40, 93.80, 92.00, FALSE, 2027);

*/

/*
-- values for Companies 
INSERT INTO Companies (Company_name, Company_type, Industry_sector, City, State, Zipcode, Contact_email, Contact_phone, Hr_contact, is_active) VALUES
('Tata Consultancy Services (TCS)', 'MNC', 'IT Services', 'Mumbai', 'Maharashtra', '400001', 'campus.hiring@tcs.com', '022-67789999', 'Nitin Malhotra', TRUE),
('Infosys Limited', 'MNC', 'IT Services', 'Bangalore', 'Karnataka', '560100', 'freshers.recruitment@infosys.com', '080-28520261', 'Priya Raghavan', TRUE),
('Cognizant Technology Solutions', 'MNC', 'IT Consulting', 'Chennai', 'Tamil Nadu', '600096', 'india.campus@cognizant.com', '044-42096000', 'Suresh Kumar', TRUE),
('Accenture India', 'MNC', 'Management Consulting', 'Hyderabad', 'Telangana', '500081', 'accenture.campus@accenture.com', '040-66670000', 'Meenakshi Iyer', TRUE),
('Wipro Limited', 'MNC', 'IT & Software', 'Bangalore', 'Karnataka', '560035', 'campus.wipro@wipro.com', '080-46726000', 'Rahul Deshmukh', TRUE),
('Amazon Development Centre', 'Product Giant', 'E-commerce & Cloud', 'Hyderabad', 'Telangana', '500032', 'amazon-university@amazon.com', '040-41513000', 'Amit Saxena', TRUE),
('Microsoft India', 'Product Giant', 'Software Production', 'Gurgaon', 'Haryana', '122002', 'msindia.hr@microsoft.com', '0124-4158000', 'Sneha Kapoor', TRUE),
('Deloitte India', 'Big Four', 'Financial Consulting', 'Mumbai', 'Maharashtra', '400013', 'deloitte.placement@deloitte.com', '022-61854000', 'Vikram Shah', TRUE),
('Capgemini India', 'MNC', 'IT Consulting', 'Pune', 'Maharashtra', '411057', 'campus.recruitment@capgemini.com', '020-66991000', 'Anjali Joshi', TRUE),
('Larsen & Toubro (L&T)', 'Conglomerate', 'Core Engineering', 'Mumbai', 'Maharashtra', '400072', 'heavyeng.hr@larsentoubro.com', '022-67051111', 'Rajesh Kulkarni', TRUE),
('Reliance Industries Ltd', 'Conglomerate', 'Energy & Telecom', 'Navi Mumbai', 'Maharashtra', '400701', 'ril.talentacquisition@ril.com', '022-44770000', 'Sandeep Mishra', TRUE),
('HDFC Bank Ltd', 'Private Banking', 'BFSI', 'Mumbai', 'Maharashtra', '400011', 'careers@hdfcbank.com', '022-66521000', 'Kriti Sharma', TRUE),
('Zomato Limited', 'Unicorn Startup', 'Internet & FoodTech', 'Gurgaon', 'Haryana', '122003', 'campus@zomato.com', '0124-4227000', 'Gaurav Gupta', TRUE),
('Ola Cabs (ANI Technologies)', 'Unicorn Startup', 'Mobility & EV', 'Bangalore', 'Karnataka', '560008', 'earlycareers@olacabs.com', '080-67331122', 'Rohan Verma', TRUE),
('Tech Mahindra', 'MNC', 'Telecommunications & IT', 'Pune', 'Maharashtra', '411004', 'campus.hiring@techmahindra.com', '020-66018100', 'Divya Nair', TRUE);
*/


-- values for Job 
INSERT INTO Job (JobID, Company_id, JobRole, EligibilityCGPA, Salary, Openings) VALUES
(101, 1, 'Software Engineer', 7.50, 800000, 15),
(102, 1, 'Data Analyst', 7.00, 600000, 5),
(103, 2, 'Product Manager', 8.00, 1200000, 3),
(104, 2, 'QA Engineer', 6.50, 500000, 10),
(105, 3, 'DevOps Engineer', 7.50, 950000, 8),
(106, 3, 'System Administrator', 6.00, 450000, 4),
(107, 4, 'Frontend Developer', 7.20, 750000, 12),
(108, 4, 'Backend Developer', 7.20, 850000, 12),
(109, 5, 'Cloud Architect', 8.50, 1500000, 2),
(110, 5, 'Security Analyst', 7.80, 1000000, 6);   


