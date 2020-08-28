--
-- File generated with SQLiteStudio v3.2.1 on Fri Aug 28 16:23:20 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Building
DROP TABLE IF EXISTS Building;

CREATE TABLE Building (
    BldID       CHAR      PRIMARY KEY,
    BldName     CHAR (25) NOT NULL,
    BldAddr     CHAR (50),
    BldCity     CHAR (20),
    BldState    CHAR (2),
    BldZip      CHAR (10),
    BldDateOpen DATE
);

INSERT INTO Building (BldID, BldName, BldAddr, BldCity, BldState, BldZip, BldDateOpen) VALUES ('A', 'Allen Building', '1010 Milam Ave', 'Taylor', 'MN', '77112', '8/19/1999');
INSERT INTO Building (BldID, BldName, BldAddr, BldCity, BldState, BldZip, BldDateOpen) VALUES ('D', 'Data Center', '535 East 12th St', 'Taylor', 'MN', '77112', '6/22/2012');
INSERT INTO Building (BldID, BldName, BldAddr, BldCity, BldState, BldZip, BldDateOpen) VALUES ('C', 'Curryco Campus', '400 East 13th St', 'Taylor', 'MN', '77112', '3/23/1997');
INSERT INTO Building (BldID, BldName, BldAddr, BldCity, BldState, BldZip, BldDateOpen) VALUES ('B', 'Barrow Building', '1100 Milam Ave', 'Taylor', 'MN', '77112', '10/10/2006');

-- Table: Department
DROP TABLE IF EXISTS Department;

CREATE TABLE Department (
    DeptID       INTEGER   PRIMARY KEY,
    DeptName     CHAR (30) NOT NULL,
    DeptHead     CHAR (4),
    DeptBuilding CHAR (1)  REFERENCES Building (BldID) 
);

INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (100, 'Manufacturing', '1100', 'A');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (200, 'Accounting', '1250', 'B');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (220, 'Finance', '2105', 'B');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (300, 'Information Technology', '1080', 'D');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (400, 'Research and Devlopment', '1222', 'A');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (500, 'Sales', '1175', 'B');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (520, 'Marketing', '2107', 'B');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (700, 'Legal', '2010', 'C');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (800, 'Human Resources', '2100', 'C');
INSERT INTO Department (DeptID, DeptName, DeptHead, DeptBuilding) VALUES (999, 'Executive Staff', '1350', 'C');

-- Table: Employee
DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    EmpID          CHAR (4)       PRIMARY KEY,
    EmpLastName    CHAR (30)      NOT NULL,
    EmpFirstName   CHAR (20),
    EmpSalary      DECIMAL (9, 2),
    EmpDeptID      INTEGER,
    EmpExt         INTEGER (4)    UNIQUE,
    EmpTitle       CHAR (40),
    EmpHireDate    DATE,
    EmpExecMeeting BOOLEAN (1)    DEFAULT n
);

INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1080', 'Billings', 'Willa', 234700, 300, 655, 'Director', '5/25/2007', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1082', 'Valero', 'Sal', 190700, 300, 346, 'Manager-IT', '4/4/2016', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1084', 'Geist', 'Tab', 44500, 200, 245, 'Account Clerk', '5/22/2019', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1100', 'Gorski', 'Dale', 205500, 100, 344, 'Director', '7/1/2003', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1104', 'Cooley', 'Priya', 63400, 100, 644, 'Line Supervisor', '6/16/2016', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1110', 'Aspen', 'Perry', 63400, 520, 513, 'Graphic Artist', '12/1/2020', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1175', 'Lopez', 'Andres', 219900, 500, 234, 'Director', '7/17/2017', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1250', 'Vang', 'Toua', 234700, 200, 223, 'Director', '2/13/2000', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1265', 'Kiriakis', 'Mila', 59900, 220, 511, 'Office Manager', '8/20/2019', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1277', 'Vartanian', 'Mary', 52300, 500, 144, 'Customer Service Rep', '4/29/2000', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1278', 'Blackdeer', 'Anita', 170500, 500, 455, 'Sr. Sales Rep', '5/22/2002', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1313', 'Caspian', 'Parker', 110000, 500, 124, 'Sales Rep', '4/4/2016', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1344', 'Seversen', 'Paul', 75600, 300, 423, 'Web Developer', '12/12/2015', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1350', 'Curry', 'Pat', 333000, 999, 555, 'President', '8/1/1999', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1222', 'Vargas', 'Fran', 200000, 400, 689, 'Director', '12/1/2012', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2010', 'Avraham', 'David', 99800, 700, 388, 'Lead Council', '1/15/2000', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2013', 'Ahmed', 'Akeem', 86500, 999, 367, 'Executive Assistant', '4/15/2018', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2020', 'Timmons', 'Betty', 77900, 500, 377, 'Customer Service Rep', '12/12/2015', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2100', 'Brown', 'Lillian', 115500, 800, 400, 'Director', '3/17/2000', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2110', 'Patel', 'Raj', 99850, 800, 122, 'Benefits Specialist', '10/22/2010', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2105', 'Streja', 'Renn', 175000, 220, 690, 'Director', '12/1/2016', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2107', 'Larssen', 'Tor', 202000, 520, 349, 'Director', '9/19/2002', 'y');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('1213', 'VanGomple', 'Dale', 23900, 700, 390, 'Intern-Paralegal', '1/22/2020', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('3001', 'Rustici', 'Carmine', 55000, 400, 656, 'Research Assistant', '4/22/2018', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('3005', 'Chin', 'Lee', 69500, 400, 499, 'Researcher-Level 1', '5/1/2017', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('3007', 'Brown', 'Dumaundre', 88000, 220, 378, 'Associate-Level 2', '5/1/2017', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('3010', 'Trask', 'Hendrix', 75000, 300, 424, 'Web Developer', '6/7/2015', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('3011', 'Vang', 'Moua', 75000, 300, 444, 'Web Developer', '6/7/2015', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('3012', 'Dziengle', 'Sandy', 85000, 300, 454, 'Programmer-Level 2', '12/15/2014', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('3015', 'Pingle', 'Roger', 77000, 300, 467, 'Programmer-Level 1', '6/19/2016', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('3020', 'Jones', 'Chinnisha', 77000, 300, 610, 'Progreammer-Level 1', '6/18/2016', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2014', 'Curry', 'Vaughn', 22000, 520, 611, 'Intern-Marketing', '2/13/2020', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2016', 'Parsons', 'Paul', 44000, 100, 613, 'Line Lead', '11/11/2018', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2019', 'Chen', 'Dawn', 89500, 100, 620, 'Maintenance-Level 2', '12/15/2014', 'n');
INSERT INTO Employee (EmpID, EmpLastName, EmpFirstName, EmpSalary, EmpDeptID, EmpExt, EmpTitle, EmpHireDate, EmpExecMeeting) VALUES ('2021', 'Lopez', 'Martin', 65000, 100, 622, 'Line Lead', '10/25/2017', 'n');

-- Table: Project
DROP TABLE IF EXISTS Project;

CREATE TABLE Project (
    ProjID      CHAR (6)        PRIMARY KEY,
    ProjManager CHAR (4),
    ProjDesc    CHAR (40),
    ProjDueDate DATE,
    ProjBudget  DECIMAL (12, 2) 
);

INSERT INTO Project (ProjID, ProjManager, ProjDesc, ProjDueDate, ProjBudget) VALUES ('E22000', '1110', 'Investigate and Purchase 3D Printer', '12/15/2022', 25000);
INSERT INTO Project (ProjID, ProjManager, ProjDesc, ProjDueDate, ProjBudget) VALUES ('B00100', '1100', 'Allen Building Remodel', '3/30/2023', 750000);
INSERT INTO Project (ProjID, ProjManager, ProjDesc, ProjDueDate, ProjBudget) VALUES ('H00900', '2110', 'Benefits Software Update', '1/1/2021', 155000);
INSERT INTO Project (ProjID, ProjManager, ProjDesc, ProjDueDate, ProjBudget) VALUES ('H00100', '2013', 'Executive Retreat 2021', '6/15/2021', 15000);
INSERT INTO Project (ProjID, ProjManager, ProjDesc, ProjDueDate, ProjBudget) VALUES ('B00200', '', 'Barrow Building Remodel', '9/28/2024', 1250500);
INSERT INTO Project (ProjID, ProjManager, ProjDesc, ProjDueDate, ProjBudget) VALUES ('H00200', '', 'Executive Retreat 2022', '6/15/2022', 25000);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
