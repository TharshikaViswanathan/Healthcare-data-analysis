CREATE DATABASE HealthcareDW;
USE HealthcareDW;

CREATE TABLE Dim_Patient
(
PatientID INT PRIMARY KEY,
PatientName VARCHAR(100),
Gender VARCHAR(20),
Age INT,
City VARCHAR(100)
);

CREATE TABLE Dim_Doctor
(
DoctorID INT PRIMARY KEY,
DoctorName VARCHAR(100),
Specialization VARCHAR(100)
);

CREATE TABLE Dim_Hospital
(
HospitalID INT PRIMARY KEY,
HospitalName VARCHAR(100),
Location VARCHAR(100)
);

CREATE TABLE Dim_Diagnosis
(
DiagnosisID INT PRIMARY KEY,
DiseaseName VARCHAR(100),
Category VARCHAR(100)
);

CREATE TABLE Dim_Date
(
DateID INT PRIMARY KEY,
VisitDate DATE,
MonthName VARCHAR(20),
Year INT
);

CREATE TABLE Fact_Patient_Visit
(
VisitID INT PRIMARY KEY,
PatientID INT,
DoctorID INT,
HospitalID INT,
DiagnosisID INT,
DateID INT,
TreatmentCost DECIMAL(10,2),

FOREIGN KEY (PatientID) REFERENCES Dim_Patient(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Dim_Doctor(DoctorID),
FOREIGN KEY (HospitalID) REFERENCES Dim_Hospital(HospitalID),
FOREIGN KEY (DiagnosisID) REFERENCES Dim_Diagnosis(DiagnosisID),
FOREIGN KEY (DateID) REFERENCES Dim_Date(DateID)
);

INSERT INTO Dim_Patient (PatientID, PatientName, Gender, Age, City)
VALUES
(1,'Arun Kumar','Male',25,'Chennai'),
(2,'Priya Sharma','Female',30,'Coimbatore'),
(3,'Karthik Raj','Male',42,'Madurai'),
(4,'Divya S','Female',35,'Salem'),
(5,'Rahul V','Male',29,'Trichy'),
(6,'Anitha M','Female',40,'Chennai'),
(7,'Vignesh K','Male',32,'Erode'),
(8,'Nandhini P','Female',27,'Tirunelveli'),
(9,'Suresh B','Male',50,'Vellore'),
(10,'Keerthana R','Female',24,'Thanjavur'),
(11,'Ajith Kumar','Male',38,'Chennai'),
(12,'Meena Devi','Female',33,'Madurai'),
(13,'Prakash S','Male',45,'Salem'),
(14,'Lavanya T','Female',31,'Coimbatore'),
(15,'Manoj Kumar','Male',36,'Trichy'),
(16,'Sneha R','Female',26,'Chennai'),
(17,'Gokul P','Male',28,'Erode'),
(18,'Aarthi V','Female',41,'Vellore'),
(19,'Ramesh K','Male',48,'Madurai'),
(20,'Swathi M','Female',34,'Salem'),
(21,'Harish R','Male',30,'Chennai'),
(22,'Pooja S','Female',29,'Coimbatore'),
(23,'Dinesh K','Male',43,'Trichy'),
(24,'Monika L','Female',37,'Madurai'),
(25,'Senthil P','Male',39,'Salem'),
(26,'Revathi R','Female',27,'Erode'),
(27,'Naveen K','Male',35,'Chennai'),
(28,'Bhavya M','Female',32,'Vellore'),
(29,'Sathish T','Male',46,'Thanjavur'),
(30,'Deepa V','Female',28,'Coimbatore'),
(31,'Aravind S','Male',31,'Chennai'),
(32,'Kavitha R','Female',40,'Madurai'),
(33,'Bala Kumar','Male',44,'Salem'),
(34,'Janani P','Female',36,'Trichy'),
(35,'Mohan K','Male',41,'Chennai'),
(36,'Preethi S','Female',33,'Vellore'),
(37,'Saravanan R','Male',47,'Erode'),
(38,'Aishwarya M','Female',26,'Coimbatore'),
(39,'Lokesh V','Male',29,'Madurai'),
(40,'Nisha K','Female',38,'Salem'),
(41,'Vimal Raj','Male',34,'Chennai'),
(42,'Harini P','Female',25,'Trichy'),
(43,'Ashok K','Male',42,'Vellore'),
(44,'Gayathri S','Female',30,'Erode'),
(45,'Kishore M','Male',37,'Coimbatore'),
(46,'Reshma T','Female',28,'Madurai'),
(47,'Yogesh R','Male',45,'Salem'),
(48,'Sowmya P','Female',39,'Chennai'),
(49,'Vinoth K','Male',32,'Trichy'),
(50,'Anu Devi','Female',27,'Vellore'),
(51,'Praveen S','Male',33,'Chennai'),
(52,'Ramya K','Female',35,'Madurai'),
(53,'Murugan P','Male',49,'Salem'),
(54,'Shalini R','Female',31,'Coimbatore'),
(55,'Rohit V','Male',28,'Trichy'),
(56,'Priyanka M','Female',36,'Erode'),
(57,'Ganesh K','Male',43,'Chennai'),
(58,'Madhumitha S','Female',29,'Vellore'),
(59,'Hari Prasad','Male',40,'Madurai'),
(60,'Anjali R','Female',24,'Salem'),
(61,'Nitin K','Male',34,'Chennai'),
(62,'Keerthi M','Female',27,'Coimbatore'),
(63,'Raghul S','Male',46,'Trichy'),
(64,'Pavithra V','Female',32,'Madurai'),
(65,'Dharun K','Male',38,'Salem'),
(66,'Sandhya R','Female',30,'Erode'),
(67,'Jeeva P','Male',41,'Chennai'),
(68,'Mahalakshmi S','Female',35,'Vellore'),
(69,'Arjun K','Male',26,'Thanjavur'),
(70,'Riya M','Female',28,'Coimbatore'),
(71,'Siva Kumar','Male',39,'Madurai'),
(72,'Hemalatha P','Female',42,'Salem'),
(73,'Balaji R','Male',37,'Chennai'),
(74,'Divya Lakshmi','Female',33,'Trichy'),
(75,'Naveenkumar S','Male',29,'Vellore'),
(76,'Sangeetha M','Female',31,'Erode'),
(77,'Karthikeyan P','Male',44,'Madurai'),
(78,'Monisha R','Female',27,'Coimbatore'),
(79,'Sarath K','Male',36,'Salem'),
(80,'Nivetha S','Female',25,'Chennai'),
(81,'Sundar R','Male',48,'Trichy'),
(82,'Aparna M','Female',34,'Madurai'),
(83,'Vasanth K','Male',40,'Erode'),
(84,'Haritha P','Female',29,'Vellore'),
(85,'Ranjith S','Male',35,'Chennai'),
(86,'Krithika M','Female',32,'Coimbatore'),
(87,'Muthu Kumar','Male',45,'Salem'),
(88,'Sharmila R','Female',38,'Madurai'),
(89,'Ravi K','Male',41,'Trichy'),
(90,'Janani S','Female',30,'Vellore'),
(91,'Kavin P','Male',28,'Erode'),
(92,'Asha R','Female',36,'Chennai'),
(93,'Dilip Kumar','Male',43,'Coimbatore'),
(94,'Revathy S','Female',31,'Madurai'),
(95,'Sathya P','Male',39,'Salem'),
(96,'Nirmala K','Female',33,'Trichy'),
(97,'Manikandan R','Male',47,'Chennai'),
(98,'Akshaya M','Female',26,'Vellore'),
(99,'Pranav S','Male',29,'Coimbatore'),
(100,'Vaishnavi R','Female',35,'Madurai');

INSERT INTO Dim_Doctor (DoctorID, DoctorName, Specialization)
VALUES
(1,'Dr. Arjun Kumar','Cardiology'),
(2,'Dr. Priya Sharma','Neurology'),
(3,'Dr. Karthik Raj','Orthopedics'),
(4,'Dr. Divya S','Pediatrics'),
(5,'Dr. Rahul V','Dermatology'),
(6,'Dr. Anitha M','Gynecology'),
(7,'Dr. Vignesh K','Oncology'),
(8,'Dr. Nandhini P','Psychiatry'),
(9,'Dr. Suresh B','ENT'),
(10,'Dr. Keerthana R','General Medicine'),
(11,'Dr. Ajith Kumar','Cardiology'),
(12,'Dr. Meena Devi','Neurology'),
(13,'Dr. Prakash S','Orthopedics'),
(14,'Dr. Lavanya T','Pediatrics'),
(15,'Dr. Manoj Kumar','Dermatology'),
(16,'Dr. Sneha R','Gynecology'),
(17,'Dr. Gokul P','Oncology'),
(18,'Dr. Aarthi V','Psychiatry'),
(19,'Dr. Ramesh K','ENT'),
(20,'Dr. Swathi M','General Medicine'),
(21,'Dr. Harish R','Cardiology'),
(22,'Dr. Pooja S','Neurology'),
(23,'Dr. Dinesh K','Orthopedics'),
(24,'Dr. Monika L','Pediatrics'),
(25,'Dr. Senthil P','Dermatology'),
(26,'Dr. Revathi R','Gynecology'),
(27,'Dr. Naveen K','Oncology'),
(28,'Dr. Bhavya M','Psychiatry'),
(29,'Dr. Sathish T','ENT'),
(30,'Dr. Deepa V','General Medicine'),
(31,'Dr. Aravind S','Cardiology'),
(32,'Dr. Kavitha R','Neurology'),
(33,'Dr. Bala Kumar','Orthopedics'),
(34,'Dr. Janani P','Pediatrics'),
(35,'Dr. Mohan K','Dermatology'),
(36,'Dr. Preethi S','Gynecology'),
(37,'Dr. Saravanan R','Oncology'),
(38,'Dr. Aishwarya M','Psychiatry'),
(39,'Dr. Lokesh V','ENT'),
(40,'Dr. Nisha K','General Medicine'),
(41,'Dr. Vimal Raj','Cardiology'),
(42,'Dr. Harini P','Neurology'),
(43,'Dr. Ashok K','Orthopedics'),
(44,'Dr. Gayathri S','Pediatrics'),
(45,'Dr. Kishore M','Dermatology'),
(46,'Dr. Reshma T','Gynecology'),
(47,'Dr. Yogesh R','Oncology'),
(48,'Dr. Sowmya P','Psychiatry'),
(49,'Dr. Vinoth K','ENT'),
(50,'Dr. Anu Devi','General Medicine'),
(51,'Dr. Praveen S','Cardiology'),
(52,'Dr. Ramya K','Neurology'),
(53,'Dr. Murugan P','Orthopedics'),
(54,'Dr. Shalini R','Pediatrics'),
(55,'Dr. Rohit V','Dermatology'),
(56,'Dr. Priyanka M','Gynecology'),
(57,'Dr. Ganesh K','Oncology'),
(58,'Dr. Madhumitha S','Psychiatry'),
(59,'Dr. Hari Prasad','ENT'),
(60,'Dr. Anjali R','General Medicine'),
(61,'Dr. Nitin K','Cardiology'),
(62,'Dr. Keerthi M','Neurology'),
(63,'Dr. Raghul S','Orthopedics'),
(64,'Dr. Pavithra V','Pediatrics'),
(65,'Dr. Dharun K','Dermatology'),
(66,'Dr. Sandhya R','Gynecology'),
(67,'Dr. Jeeva P','Oncology'),
(68,'Dr. Mahalakshmi S','Psychiatry'),
(69,'Dr. Arjun K','ENT'),
(70,'Dr. Riya M','General Medicine'),
(71,'Dr. Siva Kumar','Cardiology'),
(72,'Dr. Hemalatha P','Neurology'),
(73,'Dr. Balaji R','Orthopedics'),
(74,'Dr. Divya Lakshmi','Pediatrics'),
(75,'Dr. Naveenkumar S','Dermatology'),
(76,'Dr. Sangeetha M','Gynecology'),
(77,'Dr. Karthikeyan P','Oncology'),
(78,'Dr. Monisha R','Psychiatry'),
(79,'Dr. Sarath K','ENT'),
(80,'Dr. Nivetha S','General Medicine'),
(81,'Dr. Sundar R','Cardiology'),
(82,'Dr. Aparna M','Neurology'),
(83,'Dr. Vasanth K','Orthopedics'),
(84,'Dr. Haritha P','Pediatrics'),
(85,'Dr. Ranjith S','Dermatology'),
(86,'Dr. Krithika M','Gynecology'),
(87,'Dr. Muthu Kumar','Oncology'),
(88,'Dr. Sharmila R','Psychiatry'),
(89,'Dr. Ravi K','ENT'),
(90,'Dr. Janani S','General Medicine'),
(91,'Dr. Kavin P','Cardiology'),
(92,'Dr. Asha R','Neurology'),
(93,'Dr. Dilip Kumar','Orthopedics'),
(94,'Dr. Revathy S','Pediatrics'),
(95,'Dr. Sathya P','Dermatology'),
(96,'Dr. Nirmala K','Gynecology'),
(97,'Dr. Manikandan R','Oncology'),
(98,'Dr. Akshaya M','Psychiatry'),
(99,'Dr. Pranav S','ENT'),
(100,'Dr. Vaishnavi R','General Medicine');

INSERT INTO Dim_Hospital (HospitalID, HospitalName, Location)
VALUES
(1,'Apollo Hospitals','Chennai'),
(2,'Fortis Malar Hospital','Chennai'),
(3,'MIOT International Hospital','Chennai'),
(4,'Sri Ramachandra Medical Centre','Chennai'),
(5,'MGM Healthcare','Chennai'),
(6,'Kauvery Hospital','Trichy'),
(7,'Kauvery Hospital','Chennai'),
(8,'Gleneagles HealthCity','Chennai'),
(9,'Vijaya Hospital','Chennai'),
(10,'Billroth Hospital','Chennai'),
(11,'PSG Hospitals','Coimbatore'),
(12,'KMCH Hospital','Coimbatore'),
(13,'Royal Care Hospital','Coimbatore'),
(14,'Ganga Hospital','Coimbatore'),
(15,'Kovai Medical Center','Coimbatore'),
(16,'Meenakshi Mission Hospital','Madurai'),
(17,'Apollo Speciality Hospital','Madurai'),
(18,'Velammal Medical College Hospital','Madurai'),
(19,'Vadamalayan Hospital','Madurai'),
(20,'Guru Hospital','Madurai'),
(21,'Salem Manipal Hospital','Salem'),
(22,'SKS Hospital','Salem'),
(23,'Sri Gokulam Hospital','Salem'),
(24,'Kavery Hospital Salem','Salem'),
(25,'Dharan Hospital','Salem'),
(26,'KMCH Vellore Hospital','Vellore'),
(27,'CMC Hospital','Vellore'),
(28,'Sri Narayani Hospital','Vellore'),
(29,'Vijay Shree Hospital','Vellore'),
(30,'Aarthi Hospital','Vellore'),
(31,'ABC Hospital','Erode'),
(32,'Cauvery Hospital Erode','Erode'),
(33,'Nandha Hospital','Erode'),
(34,'Lotus Hospital','Erode'),
(35,'Erode Medical Center','Erode'),
(36,'Thanjavur Medical Center','Thanjavur'),
(37,'Bharath Hospital','Thanjavur'),
(38,'Vinodhagan Memorial Hospital','Thanjavur'),
(39,'Kishore Hospital','Thanjavur'),
(40,'Sri Ram Hospital','Thanjavur'),
(41,'Tirunelveli Medical College Hospital','Tirunelveli'),
(42,'Galaxy Hospital','Tirunelveli'),
(43,'Shifa Hospital','Tirunelveli'),
(44,'Aarthi Scan Hospital','Tirunelveli'),
(45,'Abirami Hospital','Tirunelveli'),
(46,'Trichy Apollo Hospital','Trichy'),
(47,'ABC Hospital Trichy','Trichy'),
(48,'Cethar Hospital','Trichy'),
(49,'MGM Hospital Trichy','Trichy'),
(50,'Deepam Hospital','Trichy'),
(51,'Life Care Hospital','Chennai'),
(52,'Green Valley Hospital','Chennai'),
(53,'City Health Hospital','Coimbatore'),
(54,'Sri Krishna Hospital','Coimbatore'),
(55,'Care Plus Hospital','Coimbatore'),
(56,'Madurai Health Centre','Madurai'),
(57,'Jeevan Hospital','Madurai'),
(58,'Anbu Hospital','Madurai'),
(59,'Global Care Hospital','Madurai'),
(60,'Sakthi Hospital','Madurai'),
(61,'New Salem Hospital','Salem'),
(62,'Health First Hospital','Salem'),
(63,'Sona Hospital','Salem'),
(64,'Royal Salem Hospital','Salem'),
(65,'Sri Devi Hospital','Salem'),
(66,'Vellore Health City','Vellore'),
(67,'CMC Speciality Centre','Vellore'),
(68,'Arun Hospital','Vellore'),
(69,'Balaji Hospital','Vellore'),
(70,'Shree Hospital','Vellore'),
(71,'Erode Care Hospital','Erode'),
(72,'Sai Hospital','Erode'),
(73,'Jeevan Jyothi Hospital','Erode'),
(74,'Sri Lakshmi Hospital','Erode'),
(75,'Metro Hospital','Erode'),
(76,'Thanjai Hospital','Thanjavur'),
(77,'Kannan Hospital','Thanjavur'),
(78,'Royal Care Thanjavur','Thanjavur'),
(79,'Sakthi Medical Centre','Thanjavur'),
(80,'New Life Hospital','Thanjavur'),
(81,'Tirunelveli Care Hospital','Tirunelveli'),
(82,'Sree Hospital','Tirunelveli'),
(83,'Health Line Hospital','Tirunelveli'),
(84,'Vasan Hospital','Tirunelveli'),
(85,'Grace Hospital','Tirunelveli'),
(86,'Trichy Health Care','Trichy'),
(87,'Sri Vignesh Hospital','Trichy'),
(88,'Shifa Medical Centre','Trichy'),
(89,'Anand Hospital','Trichy'),
(90,'Cauvery Medical Centre','Trichy'),
(91,'Metro Care Hospital','Chennai'),
(92,'Prime Health Hospital','Coimbatore'),
(93,'Sunrise Hospital','Madurai'),
(94,'Wellness Hospital','Salem'),
(95,'Elite Care Hospital','Vellore'),
(96,'Nova Hospital','Erode'),
(97,'Hope Medical Centre','Thanjavur'),
(98,'Rainbow Hospital','Tirunelveli'),
(99,'National Health Hospital','Trichy'),
(100,'Unity Multispeciality Hospital','Chennai');

INSERT INTO Dim_Diagnosis (DiagnosisID, DiseaseName, Category)
VALUES
(1,'Hypertension','Cardiology'),
(2,'Diabetes Mellitus','Endocrinology'),
(3,'Coronary Artery Disease','Cardiology'),
(4,'Heart Failure','Cardiology'),
(5,'Arrhythmia','Cardiology'),
(6,'Stroke','Neurology'),
(7,'Migraine','Neurology'),
(8,'Epilepsy','Neurology'),
(9,'Parkinson Disease','Neurology'),
(10,'Alzheimer Disease','Neurology'),
(11,'Fracture','Orthopedics'),
(12,'Arthritis','Orthopedics'),
(13,'Osteoporosis','Orthopedics'),
(14,'Back Pain','Orthopedics'),
(15,'Joint Pain','Orthopedics'),
(16,'Asthma','Respiratory'),
(17,'Pneumonia','Respiratory'),
(18,'Bronchitis','Respiratory'),
(19,'Tuberculosis','Respiratory'),
(20,'COPD','Respiratory'),
(21,'Skin Allergy','Dermatology'),
(22,'Eczema','Dermatology'),
(23,'Psoriasis','Dermatology'),
(24,'Acne','Dermatology'),
(25,'Skin Infection','Dermatology'),
(26,'Pregnancy Care','Gynecology'),
(27,'PCOS','Gynecology'),
(28,'Endometriosis','Gynecology'),
(29,'Ovarian Cyst','Gynecology'),
(30,'Menstrual Disorder','Gynecology'),
(31,'Breast Cancer','Oncology'),
(32,'Lung Cancer','Oncology'),
(33,'Blood Cancer','Oncology'),
(34,'Colon Cancer','Oncology'),
(35,'Prostate Cancer','Oncology'),
(36,'Depression','Psychiatry'),
(37,'Anxiety Disorder','Psychiatry'),
(38,'Stress Disorder','Psychiatry'),
(39,'Sleep Disorder','Psychiatry'),
(40,'Mental Health Disorder','Psychiatry'),
(41,'Common Cold','General Medicine'),
(42,'Fever','General Medicine'),
(43,'Food Poisoning','General Medicine'),
(44,'Viral Infection','General Medicine'),
(45,'Gastritis','Gastroenterology'),
(46,'Ulcer','Gastroenterology'),
(47,'Liver Disease','Gastroenterology'),
(48,'Kidney Stone','Urology'),
(49,'Urinary Infection','Urology'),
(50,'Kidney Failure','Nephrology'),
(51,'Thyroid Disorder','Endocrinology'),
(52,'Obesity','Endocrinology'),
(53,'Vitamin Deficiency','Nutrition'),
(54,'Anemia','Hematology'),
(55,'Blood Pressure Disorder','Cardiology'),
(56,'Chest Pain','Cardiology'),
(57,'Heart Valve Disease','Cardiology'),
(58,'Cardiac Arrest','Cardiology'),
(59,'Brain Tumor','Neurology'),
(60,'Brain Infection','Neurology'),
(61,'Memory Disorder','Neurology'),
(62,'Nerve Disorder','Neurology'),
(63,'Spinal Disorder','Orthopedics'),
(64,'Ligament Injury','Orthopedics'),
(65,'Muscle Pain','Orthopedics'),
(66,'Sports Injury','Orthopedics'),
(67,'Sinusitis','ENT'),
(68,'Ear Infection','ENT'),
(69,'Hearing Loss','ENT'),
(70,'Throat Infection','ENT'),
(71,'Tonsillitis','ENT'),
(72,'Eye Infection','Ophthalmology'),
(73,'Cataract','Ophthalmology'),
(74,'Glaucoma','Ophthalmology'),
(75,'Vision Problem','Ophthalmology'),
(76,'Dental Infection','Dental'),
(77,'Tooth Decay','Dental'),
(78,'Gum Disease','Dental'),
(79,'Oral Infection','Dental'),
(80,'Stomach Infection','Gastroenterology'),
(81,'Acid Reflux','Gastroenterology'),
(82,'Irritable Bowel Syndrome','Gastroenterology'),
(83,'Pancreatitis','Gastroenterology'),
(84,'Gall Stones','Gastroenterology'),
(85,'Prostate Enlargement','Urology'),
(86,'Bladder Infection','Urology'),
(87,'Urinary Disorder','Urology'),
(88,'Kidney Infection','Nephrology'),
(89,'Chronic Kidney Disease','Nephrology'),
(90,'Lung Infection','Respiratory'),
(91,'Sleep Apnea','Respiratory'),
(92,'Allergic Rhinitis','Respiratory'),
(93,'Skin Rash','Dermatology'),
(94,'Hair Loss Disorder','Dermatology'),
(95,'Burn Injury','Dermatology'),
(96,'Child Fever','Pediatrics'),
(97,'Child Infection','Pediatrics'),
(98,'Growth Disorder','Pediatrics'),
(99,'Child Allergy','Pediatrics'),
(100,'Newborn Care','Pediatrics');

INSERT INTO Dim_Date (DateID, VisitDate, MonthName, Year)
VALUES
(1,'2025-01-01','January',2025),
(2,'2025-01-05','January',2025),
(3,'2025-01-10','January',2025),
(4,'2025-01-15','January',2025),
(5,'2025-01-20','January',2025),
(6,'2025-01-25','January',2025),
(7,'2025-02-01','February',2025),
(8,'2025-02-05','February',2025),
(9,'2025-02-10','February',2025),
(10,'2025-02-15','February',2025),
(11,'2025-02-20','February',2025),
(12,'2025-02-25','February',2025),
(13,'2025-03-01','March',2025),
(14,'2025-03-05','March',2025),
(15,'2025-03-10','March',2025),
(16,'2025-03-15','March',2025),
(17,'2025-03-20','March',2025),
(18,'2025-03-25','March',2025),
(19,'2025-04-01','April',2025),
(20,'2025-04-05','April',2025),
(21,'2025-04-10','April',2025),
(22,'2025-04-15','April',2025),
(23,'2025-04-20','April',2025),
(24,'2025-04-25','April',2025),
(25,'2025-05-01','May',2025),
(26,'2025-05-05','May',2025),
(27,'2025-05-10','May',2025),
(28,'2025-05-15','May',2025),
(29,'2025-05-20','May',2025),
(30,'2025-05-25','May',2025),
(31,'2025-06-01','June',2025),
(32,'2025-06-05','June',2025),
(33,'2025-06-10','June',2025),
(34,'2025-06-15','June',2025),
(35,'2025-06-20','June',2025),
(36,'2025-06-25','June',2025),
(37,'2025-07-01','July',2025),
(38,'2025-07-05','July',2025),
(39,'2025-07-10','July',2025),
(40,'2025-07-15','July',2025),
(41,'2025-07-20','July',2025),
(42,'2025-07-25','July',2025),
(43,'2025-08-01','August',2025),
(44,'2025-08-05','August',2025),
(45,'2025-08-10','August',2025),
(46,'2025-08-15','August',2025),
(47,'2025-08-20','August',2025),
(48,'2025-08-25','August',2025),
(49,'2025-09-01','September',2025),
(50,'2025-09-05','September',2025),
(51,'2025-09-10','September',2025),
(52,'2025-09-15','September',2025),
(53,'2025-09-20','September',2025),
(54,'2025-09-25','September',2025),
(55,'2025-10-01','October',2025),
(56,'2025-10-05','October',2025),
(57,'2025-10-10','October',2025),
(58,'2025-10-15','October',2025),
(59,'2025-10-20','October',2025),
(60,'2025-10-25','October',2025),
(61,'2025-11-01','November',2025),
(62,'2025-11-05','November',2025),
(63,'2025-11-10','November',2025),
(64,'2025-11-15','November',2025),
(65,'2025-11-20','November',2025),
(66,'2025-11-25','November',2025),
(67,'2025-12-01','December',2025),
(68,'2025-12-05','December',2025),
(69,'2025-12-10','December',2025),
(70,'2025-12-15','December',2025),
(71,'2025-12-20','December',2025),
(72,'2025-12-25','December',2025),
(73,'2026-01-01','January',2026),
(74,'2026-01-05','January',2026),
(75,'2026-01-10','January',2026),
(76,'2026-01-15','January',2026),
(77,'2026-01-20','January',2026),
(78,'2026-01-25','January',2026),
(79,'2026-02-01','February',2026),
(80,'2026-02-05','February',2026),
(81,'2026-02-10','February',2026),
(82,'2026-02-15','February',2026),
(83,'2026-02-20','February',2026),
(84,'2026-02-25','February',2026),
(85,'2026-03-01','March',2026),
(86,'2026-03-05','March',2026),
(87,'2026-03-10','March',2026),
(88,'2026-03-15','March',2026),
(89,'2026-03-20','March',2026),
(90,'2026-03-25','March',2026),
(91,'2026-04-01','April',2026),
(92,'2026-04-05','April',2026),
(93,'2026-04-10','April',2026),
(94,'2026-04-15','April',2026),
(95,'2026-04-20','April',2026),
(96,'2026-04-25','April',2026),
(97,'2026-05-01','May',2026),
(98,'2026-05-05','May',2026),
(99,'2026-05-10','May',2026),
(100,'2026-05-15','May',2026);

INSERT INTO Fact_Patient_Visit 
(VisitID, PatientID, DoctorID, HospitalID, DiagnosisID, DateID, TreatmentCost)
VALUES
(1,1,1,1,1,1,2500),
(2,2,2,2,6,2,4500),
(3,3,3,3,11,3,3200),
(4,4,4,4,16,4,2800),
(5,5,5,5,21,5,1800),
(6,6,6,6,27,6,5200),
(7,7,7,7,31,7,8500),
(8,8,8,8,36,8,3000),
(9,9,9,9,41,9,1500),
(10,10,10,10,45,10,2200),
(11,11,11,11,2,11,3500),
(12,12,12,12,7,12,4200),
(13,13,13,13,12,13,3900),
(14,14,14,14,17,14,2700),
(15,15,15,15,22,15,1900),
(16,16,16,16,28,16,5000),
(17,17,17,17,32,17,9000),
(18,18,18,18,37,18,3300),
(19,19,19,19,42,19,1600),
(20,20,20,20,46,20,2400),
(21,21,21,21,3,21,4100),
(22,22,22,22,8,22,4700),
(23,23,23,23,13,23,3600),
(24,24,24,24,18,24,2900),
(25,25,25,25,23,25,2000),
(26,26,26,26,29,26,5400),
(27,27,27,27,33,27,9500),
(28,28,28,28,38,28,3400),
(29,29,29,29,43,29,1700),
(30,30,30,30,47,30,2600),
(31,31,31,31,4,31,4300),
(32,32,32,32,9,32,4800),
(33,33,33,33,14,33,3700),
(34,34,34,34,19,34,3100),
(35,35,35,35,24,35,2100),
(36,36,36,36,30,36,5600),
(37,37,37,37,34,37,9800),
(38,38,38,38,39,38,3500),
(39,39,39,39,44,39,1800),
(40,40,40,40,48,40,2700),
(41,41,41,41,5,41,4400),
(42,42,42,42,10,42,4900),
(43,43,43,43,15,43,3800),
(44,44,44,44,20,44,3200),
(45,45,45,45,25,45,2200),
(46,46,46,46,35,46,10500),
(47,47,47,47,40,47,3600),
(48,48,48,48,50,48,3000),
(49,49,49,49,51,49,2500),
(50,50,50,50,52,50,2900),
(51,51,51,51,53,51,2300),
(52,52,52,52,54,52,3400),
(53,53,53,53,55,53,4600),
(54,54,54,54,56,54,5200),
(55,55,55,55,57,55,6100),
(56,56,56,56,58,56,7200),
(57,57,57,57,59,57,8500),
(58,58,58,58,60,58,3900),
(59,59,59,59,61,59,4200),
(60,60,60,60,62,60,3100),
(61,61,61,61,63,61,3600),
(62,62,62,62,64,62,2800),
(63,63,63,63,65,63,2500),
(64,64,64,64,66,64,3000),
(65,65,65,65,67,65,2200),
(66,66,66,66,68,66,2600),
(67,67,67,67,69,67,2900),
(68,68,68,68,70,68,2400),
(69,69,69,69,71,69,2100),
(70,70,70,70,72,70,3300),
(71,71,71,71,73,71,4500),
(72,72,72,72,74,72,5700),
(73,73,73,73,75,73,3200),
(74,74,74,74,76,74,1800),
(75,75,75,75,77,75,2000),
(76,76,76,76,78,76,2700),
(77,77,77,77,79,77,3100),
(78,78,78,78,80,78,3600),
(79,79,79,79,81,79,2900),
(80,80,80,80,82,80,4100),
(81,81,81,81,83,81,5200),
(82,82,82,82,84,82,4800),
(83,83,83,83,85,83,3400),
(84,84,84,84,86,84,2600),
(85,85,85,85,87,85,3000),
(86,86,86,86,88,86,6200),
(87,87,87,87,89,87,7500),
(88,88,88,88,90,88,3900),
(89,89,89,89,91,89,3500),
(90,90,90,90,92,90,2800),
(91,91,91,91,93,91,1900),
(92,92,92,92,94,92,2200),
(93,93,93,93,95,93,2500),
(94,94,94,94,96,94,3000),
(95,95,95,95,97,95,3700),
(96,96,96,96,98,96,4200),
(97,97,97,97,99,97,2800),
(98,98,98,98,100,98,4500),
(99,99,99,99,1,99,5000),
(100,100,100,100,2,100,3500);

SELECT * FROM Dim_Patient;
SELECT * FROM Dim_Doctor;
SELECT * FROM Dim_Hospital;
SELECT * FROM Dim_Diagnosis;
SELECT * FROM Dim_Date;
SELECT * FROM Fact_Patient_Visit;

SELECT COUNT(*) FROM Dim_Patient;
SELECT COUNT(*) FROM Dim_Doctor;
SELECT COUNT(*) FROM Dim_Hospital;
SELECT COUNT(*) FROM Dim_Diagnosis;
SELECT COUNT(*) FROM Dim_Date;
SELECT COUNT(*) FROM Fact_Patient_Visit;

SELECT PatientName, City
FROM Dim_Patient;

SELECT *
FROM Dim_Patient
WHERE Gender = 'Female';

SELECT *
FROM Dim_Patient
WHERE City = 'Chennai';

SELECT *
FROM Dim_Patient
WHERE Age > 35;

-- Aggregate Function 1: Find the Total Number of Patients

SELECT COUNT(*) AS Total_Patients
FROM Dim_Patient;
-- Aggregate Function 2: Find the Average Age of Patients

SELECT AVG(Age) AS Average_Age
FROM Dim_Patient;
-- Aggregate Function 3: Find the Highest Treatment Cost

SELECT MAX(TreatmentCost) AS Highest_Treatment_Cost
FROM Fact_Patient_Visit;
-- Aggregate Function 4: Find the Lowest Treatment Cost

SELECT MIN(TreatmentCost) AS Lowest_Treatment_Cost
FROM Fact_Patient_Visit;
-- Aggregate Function 5: Find the Total Treatment Cost

SELECT SUM(TreatmentCost) AS Total_Treatment_Cost
FROM Fact_Patient_Visit;
-- Aggregate Function 6: Find the Maximum Age of Patients

SELECT MAX(Age) AS Maximum_Age
FROM Dim_Patient;
-- Aggregate Function 7: Find the Total Number of Doctors

SELECT COUNT(*) AS Total_Doctors
FROM Dim_Doctor;
-- Aggregate Function 8: Find the Total Number of Hospitals

SELECT COUNT(*) AS Total_Hospitals
FROM Dim_Hospital;


-- GROUP BY Query 1: Find the Total Number of Patients in Each City

SELECT City,
       COUNT(*) AS Total_Patients
FROM Dim_Patient
GROUP BY City;

-- GROUP BY Query 2: Find the Average Age of Patients in Each City

SELECT City,
       AVG(Age) AS Average_Age
FROM Dim_Patient
GROUP BY City;

-- GROUP BY Query 3: Find the Total Number of Diseases in Each Category

SELECT Category,
       COUNT(*) AS Total_Diseases
FROM Dim_Diagnosis
GROUP BY Category;

-- GROUP BY + HAVING Query 1: Display Cities Having More Than 10 Patients

SELECT City,
       COUNT(*) AS Total_Patients
FROM Dim_Patient
GROUP BY City
HAVING COUNT(*) > 10;

-- GROUP BY + HAVING Query 2: Display Cities Having Average Patient Age Greater Than 35

SELECT City,
       AVG(Age) AS Average_Age
FROM Dim_Patient
GROUP BY City
HAVING AVG(Age) > 35;

-- JOIN Query 1: Display Patient Name, Doctor Name and Treatment Cost

SELECT
    p.PatientName,
    d.DoctorName,
    f.TreatmentCost
FROM Fact_Patient_Visit f
INNER JOIN Dim_Patient p
    ON f.PatientID = p.PatientID
INNER JOIN Dim_Doctor d
    ON f.DoctorID = d.DoctorID;

    -- JOIN Query 2: Display Patient Name, Hospital Name and Visit Date

SELECT
    p.PatientName,
    h.HospitalName,
    dt.VisitDate
FROM Fact_Patient_Visit f
INNER JOIN Dim_Patient p
    ON f.PatientID = p.PatientID
INNER JOIN Dim_Hospital h
    ON f.HospitalID = h.HospitalID
INNER JOIN Dim_Date dt
    ON f.DateID = dt.DateID;

 -- JOIN Query 3: Display Patient Name, Disease Name and Treatment Cost

SELECT
    p.PatientName,
    dg.DiseaseName,
    f.TreatmentCost
FROM Fact_Patient_Visit f
INNER JOIN Dim_Patient p
    ON f.PatientID = p.PatientID
INNER JOIN Dim_Diagnosis dg
    ON f.DiagnosisID = dg.DiagnosisID; 

    -- JOIN Query 4: Display Complete Patient Visit Details

SELECT
    p.PatientName,
    p.Gender,
    p.Age,
    d.DoctorName,
    d.Specialization,
    h.HospitalName,
    dg.DiseaseName,
    dt.VisitDate,
    f.TreatmentCost
FROM Fact_Patient_Visit f
INNER JOIN Dim_Patient p
    ON f.PatientID = p.PatientID
INNER JOIN Dim_Doctor d
    ON f.DoctorID = d.DoctorID
INNER JOIN Dim_Hospital h
    ON f.HospitalID = h.HospitalID
INNER JOIN Dim_Diagnosis dg
    ON f.DiagnosisID = dg.DiagnosisID
INNER JOIN Dim_Date dt
    ON f.DateID = dt.DateID;

 -- ORDER BY Query 1: Display Patients by Age in Ascending Order

SELECT PatientID,
       PatientName,
       Age,
       Gender,
       City
FROM Dim_Patient
ORDER BY Age ASC; 

-- ORDER BY Query 2: Display Patient Visits by Highest Treatment Cost

SELECT PatientID,
       DoctorID,
       HospitalID,
       TreatmentCost
FROM Fact_Patient_Visit
ORDER BY TreatmentCost DESC;

-- ORDER BY Query 3: Display Doctors in Alphabetical Order

SELECT DoctorID,
       DoctorName,
       Specialization
FROM Dim_Doctor
ORDER BY DoctorName ASC;

-- DISTINCT Query 1: Display All Unique Cities

SELECT DISTINCT City
FROM Dim_Patient;

-- DISTINCT Query 2: Display All Unique Doctor Specializations

SELECT DISTINCT Specialization
FROM Dim_Doctor;

-- DISTINCT Query 3: Display All Unique Disease Categories

SELECT DISTINCT Category
FROM Dim_Diagnosis;

-- LIKE Query 1: Display Patients Whose Names Start with 'A'

SELECT PatientID,
       PatientName,
       Gender,
       Age,
       City
FROM Dim_Patient
WHERE PatientName LIKE 'A%';

-- LIKE Query 2: Display Doctors Whose Names End with 'Kumar'

SELECT DoctorID,
       DoctorName,
       Specialization
FROM Dim_Doctor
WHERE DoctorName LIKE '%Kumar';

-- LIKE Query 3: Display Hospitals Containing the Word 'Care'

SELECT HospitalID,
       HospitalName,
       Location
FROM Dim_Hospital
WHERE HospitalName LIKE '%Care%';

-- NOT LIKE Query 4: Display Patients Whose City Is NOT Chennai

SELECT PatientID,
       PatientName,
       City
FROM Dim_Patient
WHERE City NOT LIKE 'Chennai';

-- Subquery 1: Display the Patient(s) with the Highest Treatment Cost

SELECT
    p.PatientName,
    f.TreatmentCost
FROM Fact_Patient_Visit f
INNER JOIN Dim_Patient p
    ON f.PatientID = p.PatientID
WHERE f.TreatmentCost = (
    SELECT MAX(TreatmentCost)
    FROM Fact_Patient_Visit
);

-- Subquery 2: Display Patients Whose Age Is Greater Than the Average Age

SELECT
    PatientID,
    PatientName,
    Age,
    City
FROM Dim_Patient
WHERE Age > (
    SELECT AVG(Age)
    FROM Dim_Patient
);

-- CTE Query 1: Display Patients Older Than 35

WITH Patient_CTE AS
(
    SELECT
        PatientID,
        PatientName,
        Age,
        City
    FROM Dim_Patient
)

SELECT *
FROM Patient_CTE
WHERE Age > 35;

-- CTE Query 2: Display Patients Whose Treatment Cost Is Greater Than 5000

WITH Treatment_CTE AS
(
    SELECT
        PatientID,
        TreatmentCost
    FROM Fact_Patient_Visit
)

SELECT *
FROM Treatment_CTE
WHERE TreatmentCost > 5000;

-- CTE Query 3: Display Complete Patient Visit Details Using CTE

WITH Patient_Visit_CTE AS
(
    SELECT
        p.PatientName,
        d.DoctorName,
        h.HospitalName,
        dg.DiseaseName,
        dt.VisitDate,
        f.TreatmentCost
    FROM Fact_Patient_Visit f
    INNER JOIN Dim_Patient p
        ON f.PatientID = p.PatientID
    INNER JOIN Dim_Doctor d
        ON f.DoctorID = d.DoctorID
    INNER JOIN Dim_Hospital h
        ON f.HospitalID = h.HospitalID
    INNER JOIN Dim_Diagnosis dg
        ON f.DiagnosisID = dg.DiagnosisID
    INNER JOIN Dim_Date dt
        ON f.DateID = dt.DateID
)

SELECT *
FROM Patient_Visit_CTE;


-- Window Function 1: Assign Row Number Based on Treatment Cost

SELECT
    PatientID,
    TreatmentCost,
    ROW_NUMBER() OVER (ORDER BY TreatmentCost DESC) AS Row_Number
FROM Fact_Patient_Visit;

-- Window Function 2: Rank Patients Based on Treatment Cost

SELECT
    PatientID,
    TreatmentCost,
    RANK() OVER (ORDER BY TreatmentCost DESC) AS Patient_Rank
FROM Fact_Patient_Visit;

-- Window Function 3: Assign Dense Rank Based on Treatment Cost

SELECT
    PatientID,
    TreatmentCost,
    DENSE_RANK() OVER (ORDER BY TreatmentCost DESC) AS Dense_Rank
FROM Fact_Patient_Visit;

--Display the most expensive treatment in each hospital using ROW_NUMBER().

SELECT
    HospitalID,
    PatientID,
    TreatmentCost,
    ROW_NUMBER() OVER
    (
        PARTITION BY HospitalID
        ORDER BY TreatmentCost DESC
    ) AS Row_Num
FROM Fact_Patient_Visit;

--Assign a dense rank to patients based on treatment cost.

SELECT
    PatientID,
    TreatmentCost,
    DENSE_RANK() OVER
    (
        ORDER BY TreatmentCost DESC
    ) AS Dense_Rank
FROM Fact_Patient_Visit;


--Rank patients based on treatment cost.
SELECT
    PatientID,
    TreatmentCost,
    RANK() OVER (ORDER BY TreatmentCost DESC) AS Patient_Rank
FROM Fact_Patient_Visit;

--Display all patients whose treatment cost is greater than ₹10,000 using a CTE.

WITH High_Cost_Patients AS
(
    SELECT
        PatientID,
        HospitalID,
        TreatmentCost
    FROM Fact_Patient_Visit
    WHERE TreatmentCost > 10000
)

SELECT *
FROM High_Cost_Patients;

--Display the average treatment cost for each hospital using a CTE.

WITH Hospital_Average AS
(
    SELECT
        HospitalID,
        AVG(TreatmentCost) AS Average_Cost
    FROM Fact_Patient_Visit
    GROUP BY HospitalID
)

SELECT *
FROM Hospital_Average;

--Display hospitals whose average treatment cost is greater than ₹8,000 using a CTE.

WITH Hospital_Average AS
(
    SELECT
        HospitalID,
        AVG(TreatmentCost) AS Average_Cost
    FROM Fact_Patient_Visit
    GROUP BY HospitalID
)

SELECT *
FROM Hospital_Average
WHERE Average_Cost > 8000;

--Create a View to display all patient details.

CREATE OR REPLACE VIEW vw_All_Patients AS

SELECT
    PatientID,
    PatientName,
    Age,
    Gender,
    City
FROM Dim_Patient;
SELECT * FROM vw_All_Patients;

--Create a View to display patients whose treatment cost is greater than ₹10,000.

CREATE OR REPLACE VIEW vw_High_Cost_Patients AS

SELECT
    PatientID,
    HospitalID,
    TreatmentCost
FROM Fact_Patient_Visit
WHERE TreatmentCost >10000;
SELECT *
FROM vw_High_Cost_Patients;

--Create a Stored Procedure to display all patient details.

CREATE OR REPLACE PROCEDURE Get_All_Patients()
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN

    SELECT * FROM Dim_Patient;

    RETURN 'Procedure Executed Successfully';

END;
$$;
CALL Get_All_Patients();

--Create a Stored Procedure to display all doctor details.

CREATE OR REPLACE PROCEDURE Get_All_Doctors()
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN

    SELECT * FROM Dim_Doctor;

    RETURN 'Procedure Executed Successfully';

END;
$$;
CALL Get_All_Doctors();