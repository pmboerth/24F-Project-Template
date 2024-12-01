-- THIS DATA WAS GENERATED BY CLAUDE.AI


-- Clear existing data when containers are nuked and re-created
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Applications;
TRUNCATE TABLE Comments;
TRUNCATE TABLE ResearchOpportunities;
TRUNCATE TABLE Posts;
TRUNCATE TABLE Student;
TRUNCATE TABLE Professors;
TRUNCATE TABLE Admins;
TRUNCATE TABLE Departments;
TRUNCATE TABLE Skill;
SET FOREIGN_KEY_CHECKS = 1;

-- Insert Departments (30 rows)
INSERT INTO Departments (Name) VALUES
('Computer Science'),
('Electrical Engineering'),
('Mechanical Engineering'),
('Chemical Engineering'),
('Civil Engineering'),
('Bioengineering'),
('Physics'),
('Mathematics'),
('Chemistry'),
('Biology'),
('Psychology'),
('Economics'),
('Business Administration'),
('Finance'),
('Marketing'),
('Environmental Science'),
('Material Science'),
('Industrial Engineering'),
('Aerospace Engineering'),
('Data Science'),
('Information Technology'),
('Software Engineering'),
('Robotics'),
('Artificial Intelligence'),
('Cybersecurity'),
('Network Engineering'),
('Systems Engineering'),
('Control Engineering'),
('Quantum Computing'),
('Bioinformatics');

-- Insert Skills (30 rows)
INSERT INTO Skill (Name) VALUES
('Python Programming'),
('Data Analysis'),
('Machine Learning'),
('Deep Learning'),
('Natural Language Processing'),
('Computer Vision'),
('Statistical Analysis'),
('Database Management'),
('Web Development'),
('Mobile Development'),
('Cloud Computing'),
('DevOps'),
('Cybersecurity'),
('Network Administration'),
('Systems Administration'),
('Project Management'),
('Research Methods'),
('Technical Writing'),
('Public Speaking'),
('Leadership'),
('Team Management'),
('Problem Solving'),
('Critical Thinking'),
('Data Visualization'),
('Algorithm Design'),
('Software Testing'),
('UI/UX Design'),
('Agile Methodology'),
('Version Control'),
('Requirements Analysis');

-- Insert Students (35 rows)
INSERT INTO Student (FirstName, LastName, Email, SkillId, DepartmentId, ResearchInterest, Year, Major, StudentType) VALUES
('John', 'Doe', 'john.doe@university.edu', 1, 1, 'Artificial Intelligence', 3, 'Computer Science', 'Undergraduate'),
('Jane', 'Smith', 'jane.smith@university.edu', 2, 2, 'Signal Processing', 2, 'Electrical Engineering', 'Graduate'),
('Bob', 'Johnson', 'bob.johnson@university.edu', 3, 3, 'Robotics', 4, 'Mechanical Engineering', 'Undergraduate'),
('Sarah', 'Williams', 'sarah.w@university.edu', 4, 4, 'Process Optimization', 3, 'Chemical Engineering', 'Graduate'),
('Michael', 'Brown', 'michael.b@university.edu', 5, 5, 'Structural Analysis', 2, 'Civil Engineering', 'Undergraduate'),
('Emily', 'Davis', 'emily.d@university.edu', 6, 6, 'Tissue Engineering', 4, 'Bioengineering', 'Graduate'),
('David', 'Miller', 'david.m@university.edu', 7, 7, 'Quantum Mechanics', 3, 'Physics', 'Graduate'),
('Lisa', 'Wilson', 'lisa.w@university.edu', 8, 8, 'Applied Mathematics', 2, 'Mathematics', 'Undergraduate'),
('James', 'Anderson', 'james.a@university.edu', 9, 9, 'Organic Chemistry', 4, 'Chemistry', 'Graduate'),
('Jennifer', 'Taylor', 'jennifer.t@university.edu', 10, 10, 'Molecular Biology', 3, 'Biology', 'Undergraduate'),
('Robert', 'Thomas', 'robert.t@university.edu', 11, 11, 'Cognitive Science', 2, 'Psychology', 'Graduate'),
('Mary', 'White', 'mary.w@university.edu', 12, 12, 'Behavioral Economics', 4, 'Economics', 'Undergraduate'),
('Daniel', 'Martin', 'daniel.m@university.edu', 13, 13, 'Strategic Management', 3, 'Business Administration', 'Graduate'),
('Patricia', 'Thompson', 'patricia.t@university.edu', 14, 14, 'Financial Analysis', 2, 'Finance', 'Undergraduate'),
('Joseph', 'Garcia', 'joseph.g@university.edu', 15, 15, 'Digital Marketing', 4, 'Marketing', 'Graduate'),
('Sandra', 'Martinez', 'sandra.m@university.edu', 16, 16, 'Climate Change', 3, 'Environmental Science', 'Undergraduate'),
('Christopher', 'Robinson', 'chris.r@university.edu', 17, 17, 'Nanomaterials', 2, 'Material Science', 'Graduate'),
('Margaret', 'Clark', 'margaret.c@university.edu', 18, 18, 'Operations Research', 4, 'Industrial Engineering', 'Undergraduate'),
('Thomas', 'Rodriguez', 'thomas.r@university.edu', 19, 19, 'Propulsion Systems', 3, 'Aerospace Engineering', 'Graduate'),
('Betty', 'Lewis', 'betty.l@university.edu', 20, 20, 'Big Data Analytics', 2, 'Data Science', 'Undergraduate'),
('Steven', 'Lee', 'steven.l@university.edu', 21, 21, 'Cloud Architecture', 4, 'Information Technology', 'Graduate'),
('Dorothy', 'Walker', 'dorothy.w@university.edu', 22, 22, 'Software Architecture', 3, 'Software Engineering', 'Undergraduate'),
('Charles', 'Hall', 'charles.h@university.edu', 23, 23, 'Robot Navigation', 2, 'Robotics', 'Graduate'),
('Linda', 'Allen', 'linda.a@university.edu', 24, 24, 'Neural Networks', 4, 'Artificial Intelligence', 'Undergraduate'),
('Richard', 'Young', 'richard.y@university.edu', 25, 25, 'Network Security', 3, 'Cybersecurity', 'Graduate'),
('Barbara', 'King', 'barbara.k@university.edu', 26, 26, 'Network Protocols', 2, 'Network Engineering', 'Undergraduate'),
('Kevin', 'Wright', 'kevin.w@university.edu', 27, 27, 'Systems Integration', 4, 'Systems Engineering', 'Graduate'),
('Elizabeth', 'Lopez', 'elizabeth.l@university.edu', 28, 28, 'Control Systems', 3, 'Control Engineering', 'Undergraduate'),
('Jason', 'Hill', 'jason.h@university.edu', 29, 29, 'Quantum Algorithms', 2, 'Quantum Computing', 'Graduate'),
('Michelle', 'Scott', 'michelle.s@university.edu', 30, 30, 'Genomic Analysis', 4, 'Bioinformatics', 'Undergraduate'),
('Ryan', 'Green', 'ryan.g@university.edu', 1, 1, 'Computer Networks', 3, 'Computer Science', 'Graduate'),
('Amanda', 'Adams', 'amanda.a@university.edu', 2, 2, 'Power Systems', 2, 'Electrical Engineering', 'Undergraduate'),
('Brandon', 'Baker', 'brandon.b@university.edu', 3, 3, 'Thermal Systems', 4, 'Mechanical Engineering', 'Graduate'),
('Rachel', 'Nelson', 'rachel.n@university.edu', 4, 4, 'Polymer Science', 3, 'Chemical Engineering', 'Undergraduate'),
('Justin', 'Carter', 'justin.c@university.edu', 5, 5, 'Environmental Engineering', 2, 'Civil Engineering', 'Graduate');

-- Insert Professors (30 rows)
INSERT INTO Professors (Email, FirstName, LastName, DepartmentId, ResearchArea) VALUES
('prof.smith@university.edu', 'Robert', 'Smith', 1, 'Machine Learning'),
('prof.johnson@university.edu', 'Mary', 'Johnson', 2, 'Digital Signal Processing'),
('prof.williams@university.edu', 'James', 'Williams', 3, 'Robotics Control'),
('prof.brown@university.edu', 'David', 'Brown', 4, 'Chemical Process Optimization'),
('prof.davis@university.edu', 'Sarah', 'Davis', 5, 'Structural Engineering'),
('prof.miller@university.edu', 'Michael', 'Miller', 6, 'Biomedical Devices'),
('prof.wilson@university.edu', 'Jennifer', 'Wilson', 7, 'Quantum Physics'),
('prof.anderson@university.edu', 'John', 'Anderson', 8, 'Number Theory'),
('prof.taylor@university.edu', 'Elizabeth', 'Taylor', 9, 'Inorganic Chemistry'),
('prof.thomas@university.edu', 'Richard', 'Thomas', 10, 'Genetics'),
('prof.white@university.edu', 'Susan', 'White', 11, 'Neuroscience'),
('prof.martin@university.edu', 'Charles', 'Martin', 12, 'Microeconomics'),
('prof.thompson@university.edu', 'Patricia', 'Thompson', 13, 'Organizational Behavior'),
('prof.garcia@university.edu', 'Joseph', 'Garcia', 14, 'Corporate Finance'),
('prof.martinez@university.edu', 'Linda', 'Martinez', 15, 'Consumer Behavior'),
('prof.robinson@university.edu', 'Daniel', 'Robinson', 16, 'Environmental Science'),
('prof.clark@university.edu', 'Barbara', 'Clark', 17, 'Material Science'),
('prof.rodriguez@university.edu', 'Thomas', 'Rodriguez', 18, 'Operations Research'),
('prof.lewis@university.edu', 'Margaret', 'Lewis', 19, 'Aerospace Engineering'),
('prof.lee@university.edu', 'Steven', 'Lee', 20, 'Data Mining'),
('prof.walker@university.edu', 'Dorothy', 'Walker', 21, 'Cloud Computing'),
('prof.hall@university.edu', 'Kevin', 'Hall', 22, 'Software Engineering'),
('prof.allen@university.edu', 'Michelle', 'Allen', 23, 'Robotics'),
('prof.young@university.edu', 'Christopher', 'Young', 24, 'Artificial Intelligence'),
('prof.king@university.edu', 'Amanda', 'King', 25, 'Cybersecurity'),
('prof.wright@university.edu', 'Brandon', 'Wright', 26, 'Computer Networks'),
('prof.lopez@university.edu', 'Rachel', 'Lopez', 27, 'Systems Engineering'),
('prof.hill@university.edu', 'Justin', 'Hill', 28, 'Control Systems'),
('prof.scott@university.edu', 'Emily', 'Scott', 29, 'Quantum Computing'),
('prof.green@university.edu', 'Ryan', 'Green', 30, 'Computational Biology');

-- Insert Admins (30 rows)
INSERT INTO Admins (FirstName, LastName, DepartmentId) VALUES
('Admin', 'Smith', 1),
('Admin', 'Johnson', 2),
('Admin', 'Williams', 3),
('Admin', 'Brown', 4),
('Admin', 'Davis', 5),
('Admin', 'Miller', 6),
('Admin', 'Wilson', 7),
('Admin', 'Anderson', 8),
('Admin', 'Taylor', 9),
('Admin', 'Thomas', 10),
('Admin', 'White', 11),
('Admin', 'Martin', 12),
('Admin', 'Thompson', 13),
('Admin', 'Garcia', 14),
('Admin', 'Martinez', 15),
('Admin', 'Robinson', 16),
('Admin', 'Clark', 17),
('Admin', 'Rodriguez', 18),
('Admin', 'Lewis', 19),
('Admin', 'Lee', 20),
('Admin', 'Walker', 21),
('Admin', 'Hall', 22),
('Admin', 'Allen', 23),
('Admin', 'Young', 24),
('Admin', 'King', 25),
('Admin', 'Wright', 26),
('Admin', 'Lopez', 27),
('Admin', 'Hill', 28),
('Admin', 'Scott', 29),
('Admin', 'Green', 30);

-- Insert Research Opportunities (45 rows)
INSERT INTO ResearchOpportunities (Name, OwnerId, ResearchArea, Description, DepartmentId, SkillId) VALUES
('AI Research Assistant', 1, 'Machine Learning', 'Research position focusing on deep learning algorithms', 1, 1),
('Signal Processing Lab Assistant', 2, 'Digital Signal Processing', 'Work on advanced signal processing algorithms', 2, 2),
('Robotics Control Systems', 3, 'Robotics Control', 'Development of control systems for autonomous robots', 3, 3),
('Process Optimization Research', 4, 'Chemical Engineering', 'Optimization of chemical processes using ML', 4, 4),
('Structural Analysis Project', 5, 'Civil Engineering', 'Analysis of building structures using computer modeling', 5, 5),
('Biomedical Device Development', 6, 'Biomedical Engineering', 'Design and testing of medical devices', 6, 6),
('Quantum Physics Research', 7, 'Quantum Physics', 'Experimental research in quantum mechanics', 7, 7),
('Mathematical Modeling', 8, 'Applied Mathematics', 'Development of mathematical models for real-world problems', 8, 8),
('Chemistry Lab Research', 9, 'Chemistry', 'Research in inorganic chemistry synthesis', 9, 9),
('Genetics Research Assistant', 10, 'Biology', 'Study of genetic markers in populations', 10, 10),
('Neuroscience Study', 11, 'Psychology', 'Research on cognitive processes', 11, 11),
('Economic Data Analysis', 12, 'Economics', 'Analysis of economic trends using statistical methods', 12, 12),
('Business Strategy Research', 13, 'Business', 'Research on organizational strategies', 13, 13),
('Financial Market Analysis', 14, 'Finance', 'Study of market trends and patterns', 14, 14),
('Marketing Research Project', 15, 'Marketing', 'Consumer behavior analysis project', 15, 15),
('Environmental Impact Study', 16, 'Environmental Science', 'Research on climate change impacts', 16, 16),
('Materials Science Research', 17, 'Material Science', 'Study of novel materials properties', 17, 17),
('Operations Optimization', 18, 'Industrial Engineering', 'Process optimization research', 18, 18),
('Aerospace Systems Design', 19, 'Aerospace', 'Design of aerospace systems', 19, 19),
('Data Mining Project', 20, 'Data Science', 'Large-scale data analysis project', 20, 20),
('Cloud Computing Research', 21, 'Computer Science', 'Research in cloud architecture', 21, 21),
('Software Development Research', 22, 'Software Engineering', 'Research in software methodologies', 22, 22),
('Robotics Lab Assistant', 23, 'Robotics', 'Assistance with robotics experiments', 23, 23),
('Robotics Lab Assistant', 23, 'Robotics', 'Assistance with robotics experiments', 23, 23),
('AI Algorithm Development', 24, 'Artificial Intelligence', 'Development of AI algorithms', 24, 24),
('Cybersecurity Research', 25, 'Network Security', 'Research in network security protocols', 25, 25),
('Network Architecture Study', 26, 'Computer Networks', 'Study of network architectures', 26, 26),
('Systems Integration Project', 27, 'Systems Engineering', 'Research in systems integration', 27, 27),
('Control Systems Design', 28, 'Control Engineering', 'Design of control systems', 28, 28),
('Quantum Computing Research', 29, 'Quantum Computing', 'Research in quantum algorithms', 29, 29),
('Bioinformatics Analysis', 30, 'Computational Biology', 'Analysis of genomic data', 30, 30),
('Machine Learning Research', 1, 'Deep Learning', 'Research in deep learning models', 1, 3),
('IoT Systems Development', 2, 'IoT', 'Development of IoT systems', 2, 4),
('Sustainable Engineering', 3, 'Green Engineering', 'Research in sustainable technologies', 3, 5),
('Data Analytics Project', 4, 'Data Science', 'Analysis of large datasets', 4, 6),
('Web Development Research', 5, 'Software Engineering', 'Research in web technologies', 5, 7),
('Mobile App Development', 6, 'Software Engineering', 'Development of mobile applications', 6, 8),
('Database Systems Research', 7, 'Computer Science', 'Research in database technologies', 7, 9),
('Network Security Project', 8, 'Cybersecurity', 'Project in network security', 8, 10),
('Cloud Infrastructure Study', 9, 'Cloud Computing', 'Study of cloud architectures', 9, 11),
('DevOps Research Project', 10, 'DevOps', 'Research in DevOps practices', 10, 12),
('UI/UX Research Study', 11, 'Human-Computer Interaction', 'Study of user interfaces', 11, 13),
('Software Testing Research', 12, 'Software Quality', 'Research in testing methodologies', 12, 14),
('Agile Methods Study', 13, 'Software Engineering', 'Study of agile methodologies', 13, 15),
('Requirements Engineering', 14, 'Software Engineering', 'Research in requirements engineering', 14, 16),
('Project Management Study', 15, 'Management', 'Study of project management methods', 15, 17);

-- Insert Posts (35 rows)
INSERT INTO Posts (CreatorId, PostTitle, PostContent, PostType, PGroup) VALUES
(1, 'AI Study Group Formation', 'Looking to form a study group for AI concepts', 'Question', 'Computer Science'),
(2, 'Signal Processing Workshop', 'Workshop on DSP fundamentals', 'Collaboration', 'Engineering'),
(3, 'Research Paper Discussion', 'Discussion of recent ML papers', 'Collaboration', 'Computer Science'),
(4, 'Chemistry Lab Partners', 'Looking for lab partners', 'Collaboration', 'Science'),
(5, 'Business Case Study Group', 'Forming group for case studies', 'Collaboration', 'Business'),
(6, 'Health Research Discussion', 'Discussion about latest health research', 'Question', 'Health Science'),
(7, 'Psychology Study Help', 'Need help with research methods', 'Question', 'Social Science'),
(8, 'Engineering Project Team', 'Forming team for capstone project', 'Collaboration', 'Engineering'),
(9, 'Computer Graphics Study', 'Study group for graphics programming', 'Question', 'Computer Science'),
(10, 'Biology Research Group', 'Group for discussing research papers', 'Collaboration', 'Science'),
(11, 'Social Science Methods', 'Discussion of research methods', 'Question', 'Social Science'),
(12, 'Business Analytics Team', 'Team for analytics project', 'Collaboration', 'Business'),
(13, 'Health Data Analysis', 'Group for analyzing health data', 'Collaboration', 'Health Science'),
(14, 'Engineering Design Help', 'Need help with design project', 'Question', 'Engineering'),
(15, 'Programming Study Group', 'Study group for advanced programming', 'Collaboration', 'Computer Science'),
(16, 'Chemistry Study Help', 'Help with organic chemistry', 'Question', 'Science'),
(17, 'Market Research Team', 'Team for market research project', 'Collaboration', 'Business'),
(18, 'Health Policy Discussion', 'Discussion about health policies', 'Question', 'Health Science'),
(19, 'Psychology Research', 'Looking for research participants', 'Collaboration', 'Social Science'),
(20, 'Engineering Lab Group', 'Group for lab experiments', 'Collaboration', 'Engineering'),
(21, 'Database Study Group', 'Study group for database systems', 'Question', 'Computer Science'),
(22, 'Physics Research Team', 'Team for physics research', 'Collaboration', 'Science'),
(23, 'Economics Study Group', 'Group for economics study', 'Collaboration', 'Social Science'),
(24, 'Finance Project Team', 'Team for finance project', 'Collaboration', 'Business'),
(25, 'Medical Research Group', 'Group for medical research', 'Collaboration', 'Health Science'),
(26, 'Civil Engineering Help', 'Help with structures project', 'Question', 'Engineering'),
(27, 'Algorithm Study Group', 'Study group for algorithms', 'Collaboration', 'Computer Science'),
(28, 'Biology Lab Partners', 'Looking for lab partners', 'Question', 'Science'),
(29, 'Marketing Research Team', 'Team for marketing research', 'Collaboration', 'Business'),
(30, 'Healthcare Data Study', 'Study of healthcare data', 'Question', 'Health Science'),
(31, 'Sociology Research', 'Research in social patterns', 'Collaboration', 'Social Science'),
(32, 'Mechanical Engineering', 'Help with mechanical design', 'Question', 'Engineering'),
(33, 'Software Project Group', 'Group for software project', 'Collaboration', 'Computer Science'),
(34, 'Chemistry Research Team', 'Team for chemistry research', 'Collaboration', 'Science'),
(35, 'Business Strategy Group', 'Group for strategy analysis', 'Collaboration', 'Business');

-- Insert Comments (45 rows)
INSERT INTO Comments (PostId, OwnerId, PostTitle, PostContent) VALUES
(1, 2, 'RE: AI Study Group', 'Interested in joining the AI study group'),
(1, 3, 'RE: AI Study Group', 'When are you planning to meet?'),
(2, 4, 'RE: Signal Processing', 'Would love to attend the workshop'),
(2, 5, 'RE: Signal Processing', 'Is this suitable for beginners?'),
(3, 6, 'RE: Research Paper', 'Which papers are we discussing?'),
(3, 7, 'RE: Research Paper', 'I can share some recent papers'),
(4, 8, 'RE: Lab Partners', 'Looking for a partner as well'),
(4, 9, 'RE: Lab Partners', 'When do you plan to start?'),
(5, 10, 'RE: Case Study', 'Interested in joining the group'),
(5, 11, 'RE: Case Study', 'What cases will we study?'),
(6, 12, 'RE: Health Research', 'Can share some interesting papers'),
(6, 13, 'RE: Health Research', 'Would love to participate'),
(7, 14, 'RE: Psychology Help', 'Happy to help with methods'),
(7, 15, 'RE: Psychology Help', 'What specific areas need help?'),
(8, 16, 'RE: Project Team', 'Interested in joining the team'),
(8, 17, 'RE: Project Team', 'What skills are required?'),
(9, 18, 'RE: Graphics Study', 'Can help with OpenGL'),
(9, 19, 'RE: Graphics Study', 'When do you meet?'),
(10, 20, 'RE: Biology Research', 'Interested in joining'),
(10, 21, 'RE: Biology Research', 'Which topics are covered?'),
(11, 22, 'RE: Social Science', 'Can help with methodology'),
(11, 23, 'RE: Social Science', 'What methods are you using?'),
(12, 24, 'RE: Analytics Team', 'Interested in joining'),
(12, 25, 'RE: Analytics Team', 'What tools do you use?'),
(13, 26, 'RE: Health Data', 'Have experience with health data'),
(13, 27, 'RE: Health Data', 'What kind of analysis?'),
(14, 28, 'RE: Design Help', 'Can help with CAD'),
(14, 29, 'RE: Design Help', 'What software do you use?'),
(15, 30, 'RE: Programming', 'Interested in joining'),
(15, 31, 'RE: Programming', 'What languages do you cover?'),
(16, 32, 'RE: Chemistry Help', 'Can help with organic chem'),
(16, 33, 'RE: Chemistry Help', 'Which topics specifically?'),
(17, 34, 'RE: Market Research', 'Interested in the project'),
(17, 35, 'RE: Market Research', 'What is the scope?'),
(18, 1, 'RE: Health Policy', 'Can share some resources'),
(18, 2, 'RE: Health Policy', 'Which policies are discussed?'),
(19, 3, 'RE: Psychology Research', 'Interested in participating'),
(19, 4, 'RE: Psychology Research', 'What is the study about?'),
(20, 5, 'RE: Lab Group', 'Looking to join the group'),
(20, 6, 'RE: Lab Group', 'What experiments are planned?'),
(21, 7, 'RE: Database Study', 'Can help with SQL'),
(21, 8, 'RE: Database Study', 'Do you cover NoSQL?'),
(22, 9, 'RE: Physics Research', 'Interested in joining'),
(22, 10, 'RE: Physics Research', 'What area of physics?'),
(23, 11, 'RE: Economics Study', 'Can help with econometrics'),
(23, 12, 'RE: Economics Study', 'What topics are covered?');

-- Insert Applications (100 rows)
INSERT INTO Applications (ApplicantId, ApplicationStatus, PositionId) VALUES
(1, 'Pending', 1),
(2, 'Under Review', 1),
(3, 'Accepted', 1),
(4, 'Rejected', 1),
(5, 'Withdrawn', 1),
(6, 'Pending', 2),
(7, 'Under Review', 2),
(8, 'Accepted', 2),
(9, 'Rejected', 2),
(10, 'Withdrawn', 2),
(11, 'Pending', 3),
(12, 'Under Review', 3),
(13, 'Accepted', 3),
(14, 'Rejected', 3),
(15, 'Withdrawn', 3),
(16, 'Pending', 4),
(17, 'Under Review', 4),
(18, 'Accepted', 4),
(19, 'Rejected', 4),
(20, 'Withdrawn', 4),
(21, 'Pending', 5),
(22, 'Under Review', 5),
(23, 'Accepted', 5),
(24, 'Rejected', 5),
(25, 'Withdrawn', 5),
(26, 'Pending', 6),
(27, 'Under Review', 6),
(28, 'Accepted', 6),
(29, 'Rejected', 6),
(30, 'Withdrawn', 6),
(31, 'Pending', 7),
(32, 'Under Review', 7),
(33, 'Accepted', 7),
(34, 'Rejected', 7),
(35, 'Withdrawn', 7),
(1, 'Pending', 8),
(2, 'Under Review', 8),
(3, 'Accepted', 8),
(4, 'Rejected', 8),
(5, 'Withdrawn', 8),
(6, 'Pending', 9),
(7, 'Under Review', 9),
(8, 'Accepted', 9),
(9, 'Rejected', 9),
(10, 'Withdrawn', 9),
(11, 'Pending', 10),
(12, 'Under Review', 10),
(13, 'Accepted', 10),
(14, 'Rejected', 10),
(15, 'Withdrawn', 10),
(16, 'Pending', 11),
(17, 'Under Review', 11),
(18, 'Accepted', 11),
(19, 'Rejected', 11),
(20, 'Withdrawn', 11),
(21, 'Pending', 12),
(22, 'Under Review', 12),
(23, 'Accepted', 12),
(24, 'Rejected', 12),
(25, 'Withdrawn', 12),
(26, 'Pending', 13),
(27, 'Under Review', 13),
(28, 'Accepted', 13),
(29, 'Rejected', 13),
(30, 'Withdrawn', 13),
(31, 'Pending', 14),
(32, 'Under Review', 14),
(33, 'Accepted', 14),
(34, 'Rejected', 14),
(35, 'Withdrawn', 14),
(1, 'Pending', 15),
(2, 'Under Review', 15),
(3, 'Accepted', 15),
(4, 'Rejected', 15),
(5, 'Withdrawn', 15),
(6, 'Pending', 16),
(7, 'Under Review', 16),
(8, 'Accepted', 16),
(9, 'Rejected', 16),
(10, 'Withdrawn', 16),
(11, 'Pending', 17),
(12, 'Under Review', 17),
(13, 'Accepted', 17),
(14, 'Rejected', 17),
(15, 'Withdrawn', 17),
(16, 'Pending', 18),
(17, 'Under Review', 18),
(18, 'Accepted', 18),
(19, 'Rejected', 18),
(20, 'Withdrawn', 18),
(21, 'Pending', 19),
(22, 'Under Review', 19),
(23, 'Accepted', 19),
(24, 'Rejected', 19),
(25, 'Withdrawn', 19),
(26, 'Pending', 20),
(27, 'Under Review', 20),
(28, 'Accepted', 20),
(29, 'Rejected', 20),
(30, 'Withdrawn', 20);