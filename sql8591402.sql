-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql8.freesqldatabase.com
-- Generation Time: Jan 19, 2023 at 02:25 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql8591402`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(32) NOT NULL,
  `salary_euro` decimal(10,2) NOT NULL,
  `Job_job_id` int(11) NOT NULL,
  `Supervisors_supervisor_id` int(11) NOT NULL,
  `Locations_location_id` int(11) NOT NULL,
  `Project_Schedule_tasks_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores employee ID, name, email, location ID, supervisor ID and tasks ID';

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`emp_id`, `name`, `email`, `age`, `sex`, `salary_euro`, `Job_job_id`, `Supervisors_supervisor_id`, `Locations_location_id`, `Project_Schedule_tasks_id`) VALUES
(1, 'Mike_O\'Leary', 'mikeoleary@toemail.ie', 57, 'Male', '120000.00', 1, 1, 1, 1),
(2, 'Karen_O\'Driscoll', 'karenodriscoll@mail.com', 43, 'Female', '75000.00', 2, 1, 2, 2),
(3, 'James_Lehane', 'jamesleh@email.com', 37, 'Male', '60000.00', 2, 1, 3, 3),
(4, 'Dan_Sullivan', 'dansull@eamil.ie', 39, 'Male', '65000.00', 2, 1, 4, 4),
(5, 'Scott_Watts', 'scottwatts@eamil.ie', 41, 'Male', '62000.00', 2, 1, 5, 5),
(6, 'Tracy_Kelleher', 'tkelleher@mail.ie', 28, 'Female', '66000.00', 2, 1, 6, 6),
(7, 'Tim_Blake', 'timb@mail.com', 31, 'Male', '50000.00', 3, 2, 2, 7),
(8, 'Jane_Bond', 'janebd@nostir.com', 25, 'Female', '47000.00', 3, 2, 2, 7),
(9, 'Marie_Jameson', 'mjameson@mail.com', 35, 'Female', '46000.00', 3, 2, 2, 8),
(10, 'Larry_Lynch', 'larrylyn@hotemail.ie', 32, 'Male', '46000.00', 3, 2, 2, 8),
(11, 'Damon_DeValera', 'damdeval@gael.ie', 24, 'Male', '38000.00', 4, 3, 3, 9),
(12, 'Mick_Collins', 'mickollins@fail.ie', 26, 'Male', '38000.00', 4, 3, 3, 9),
(13, 'Bill_Yeats', 'billyeats@gail.ie', 37, 'Male', '37000.00', 4, 3, 3, 9),
(14, 'Leah_Neeson', 'leahn@mail.com', 21, 'Female', '36000.00', 4, 3, 3, 10),
(15, 'Sinead_Connell', 'sinconn@mail.ie', 43, 'Female', '34000.00', 4, 3, 3, 10),
(16, 'Amy_Brosnan', 'amybro@mail.com', 34, 'Female', '40000.00', 5, 4, 4, 11),
(17, 'Laura_Kelly', 'laurakelly1@fmail.com', 27, 'Female', '39000.00', 5, 4, 4, 11),
(18, 'Jill_Jackson', 'jilljack22@jail.com', 25, 'Female', '37000.00', 5, 4, 4, 11),
(19, 'Eoghan_O\'Brien', 'uggano13@mail.com', 23, 'Male', '36000.00', 5, 4, 4, 12),
(20, 'Oscar_Wilde', 'oscwilde@gaol.com', 42, 'Male', '35000.00', 5, 4, 4, 12),
(21, 'Arthur_Morgan', 'artymorg@mail.com', 36, 'Male', '35000.00', 5, 4, 4, 12),
(22, 'Clare_Healy', 'chealy@fmail.com', 28, 'Female', '42000.00', 6, 5, 5, 13),
(23, 'Tara_Nolan', 'taranolan@mail.com', 23, 'Female', '40000.00', 6, 5, 5, 13),
(24, 'Patty_Burgher', 'pattyb@mail.ie', 33, 'Female', '38000.00', 6, 5, 5, 14),
(25, 'Rose_Bush', 'rosebush@mail.ie', 44, 'Female', '33000.00', 6, 5, 5, 14),
(26, 'Denise_Townsend', 'dentownsend@mail.ie', 29, 'Female', '55000.00', 7, 6, 6, 15),
(27, 'William_Johnson', 'billjohnson@mail.ie', 30, 'Male', '46000.00', 8, 6, 7, 16),
(28, 'Jerry_Smithgold', 'jsgold@recall.com', 54, 'Male', '450000.00', 8, 6, 7, 16);

-- --------------------------------------------------------

--
-- Table structure for table `Job`
--

CREATE TABLE `Job` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Job`
--

INSERT INTO `Job` (`job_id`, `job_title`) VALUES
(1, 'Manager'),
(2, 'Supervisor'),
(3, 'Level_Designer'),
(4, 'Animator'),
(5, 'Modeller_Texturer'),
(6, 'Programmer'),
(7, 'Sound_Design'),
(8, 'Score_Composer');

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `location_id` int(11) NOT NULL,
  `location` varchar(128) NOT NULL,
  `county` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Location of the employees';

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`location_id`, `location`, `county`) VALUES
(1, 'Head_Office', 'Dublin'),
(2, 'Level_Design_Studio', 'Dublin'),
(3, 'Animation_Studio', 'Louth'),
(4, 'Modeling_Texturing_Studio', 'Kildare'),
(5, 'Programming_Studio', 'Cork'),
(6, 'Sound_Design_Studio', 'Dublin'),
(7, 'Home_Music_Studio', 'Dublin');

-- --------------------------------------------------------

--
-- Table structure for table `Project_Schedule`
--

CREATE TABLE `Project_Schedule` (
  `tasks_id` int(11) NOT NULL,
  `tasks` varchar(128) NOT NULL,
  `time_allocation_weeks` int(11) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This stores the tasks to be completed, the allotted time in weeks to complete them and the deadline.';

--
-- Dumping data for table `Project_Schedule`
--

INSERT INTO `Project_Schedule` (`tasks_id`, `tasks`, `time_allocation_weeks`, `deadline`) VALUES
(1, 'Full_Game', 52, '2024-05-01'),
(2, 'Levels', 26, '2024-01-03'),
(3, 'Animations', 26, '2024-01-03'),
(4, 'Models_Textures', 26, '2024-01-03'),
(5, 'Game_Programming', 26, '2024-01-03'),
(6, 'Sound_&_Music', 16, '2024-01-03'),
(7, 'Levels_1-10', 20, '2023-01-11'),
(8, 'Levels_10-20', 20, '2023-01-11'),
(9, 'Game_Characters_Anims', 39, '2023-01-12'),
(10, 'Level_Anims', 39, '2023-01-12'),
(11, 'Game_Characters', 39, '2023-01-09'),
(12, 'Environment_Assets', 39, '2023-01-09'),
(13, 'Game_logic', 26, '2024-01-02'),
(14, 'Visual_FX', 26, '2024-01-02'),
(15, 'Sound', 16, '2024-01-02'),
(16, 'Music', 16, '2024-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `Supervisors`
--

CREATE TABLE `Supervisors` (
  `supervisor_id` int(11) NOT NULL,
  `supervisor` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='List of supervisors and their ID''''s';

--
-- Dumping data for table `Supervisors`
--

INSERT INTO `Supervisors` (`supervisor_id`, `supervisor`) VALUES
(1, 'Mike_O\'Leary'),
(2, 'Karen_O\'Driscoll'),
(3, 'James_Lehane'),
(4, 'Dan_Sullivan'),
(5, 'Scott_Watts'),
(6, 'Tracy_Kelleher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`emp_id`,`name`);

--
-- Indexes for table `Job`
--
ALTER TABLE `Job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `Project_Schedule`
--
ALTER TABLE `Project_Schedule`
  ADD PRIMARY KEY (`tasks_id`);

--
-- Indexes for table `Supervisors`
--
ALTER TABLE `Supervisors`
  ADD PRIMARY KEY (`supervisor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
