-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb18.biz.nf
-- Generation Time: Jul 16, 2020 at 11:15 AM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8mb4 */;

-- --
-- -- Database: `3319611_datax`
-- --

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `admin`
-- --

-- CREATE TABLE `admin` (
--   `id` int(11) NOT NULL,
--   `username` varchar(30) NOT NULL,
--   `password` varchar(60) NOT NULL,
--   `firstname` varchar(50) NOT NULL,
--   `lastname` varchar(50) NOT NULL,
--   `photo` varchar(200) NOT NULL,
--   `created_on` date NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `admin`
-- --

-- INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
-- (1, 'admin', '$2y$10$0ce2M0u3Ppk4y/eursQ7T.KFMI8ODatZjOWBTl9QK9cKxPXGdKRJO', 'Admin', '', 'facebook-profile-image.jpeg', '2018-04-30'),
-- (2, 'MNL019010', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'Jecily', '', 'facebook-profile-image.jpeg', '2018-04-30');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `department`
-- --

-- CREATE TABLE `department` (
--   `id` int(11) NOT NULL,
--   `dep_description` varchar(150) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `department`
-- --

INSERT INTO `department` (`id`, `dep_description`) VALUES
(1, 'ADMIN'),
(2, 'ARRIVED'),
(3, 'BOWER\'S + KOBUTA'),
(4, 'CUSTOMER SERVICE CENTER'),
(5, 'HOLDINGS'),
(6, 'HPM'),
(7, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

-- CREATE TABLE `employees` (
--   `idno` int(11) NOT NULL,
--   `employee_id` varchar(15) NOT NULL,
--   `password` varchar(60) NOT NULL,
--   `firstname` varchar(50) NOT NULL,
--   `lastname` varchar(50) NOT NULL,
--   `address` text NOT NULL,
--   `birthdate` date NOT NULL,
--   `contact_info` varchar(100) NOT NULL,
--   `gender` varchar(10) NOT NULL,
--   `position_id` int(11) NOT NULL,
--   `department_id` int(11) NOT NULL,
--   `photo` varchar(200) NOT NULL,
--   `created_on` date NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`idno`, `employee_id`, `password`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `department_id`, `photo`, `created_on`) VALUES
(1, 'MNL019002', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'CARL JUDGE', 'MEDINA', '', '0000-00-00', 'cmedina@xpeditellc.com', '', 23, 4, '', '2019-05-14'),
(2, 'MNL019003', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'REMEDIOS', 'RAGUTANA', '', '0000-00-00', 'remy@arrivednow.com', '', 2, 5, '', '2019-05-14'),
(3, 'MNL019004', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'RAFFY', 'LIMON', '', '0000-00-00', 'rlimon@xpeditellc.com', '', 12, 7, '', '2019-05-14'),
(4, 'MNL019005', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'JOSHUA', 'GENERILLO', '', '0000-00-00', 'jgenerillo@xpeditellc.com', 'Male', 18, 4, '', '2019-05-14'),
(5, 'MNL019006', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'IVY-JOSELL', 'CASTILLO', 'Palac Palac Victoria ', '0000-00-00', '', '', 15, 4, '', '2019-05-14'),
(6, 'MNL019007', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'LUISITO', 'SENSON', 'Blk.39 Lot 11 City Homes Resort Ville Su', '0000-00-00', 'lsenson@xpeditellc.com', '', 10, 3, '', '2019-05-14'),
(7, 'MNL019008', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'PAUL JEREMIAH', 'DALAS', '', '0000-00-00', 'pdalas@honpm.com', '', 14, 4, '', '2019-05-14'),
(8, 'MNL019009', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'AIZA', 'DALAS', '', '0000-00-00', 'adalas@honpm.com', '', 15, 4, '', '2019-05-14'),
(9, 'MNL019010', '$2y$10$SxpU/FmyxfDXjTz24YpMAeZ.9.mPzomUJSiT8O0akAXw2SaUq1/mK', 'JECILY', 'BANAGBANAG', '', '0000-00-00', 'jbanagbanag@xpeditellc.com', '', 1, 1, 'Koala.jpg', '2019-05-14'),
(10, 'MNL019011', '$2y$10$YonDTPt3X/7m1y7R5JIU7.tytb6oTzCzoEQa3cP.ihb3xWxetR5Se', 'SILVESTRE', 'ACOB', '#25 Purok 6 Brgy. Caliguian', '0000-00-00', 'sacob@xpeditellc.com', 'Male', 13, 7, 'desktop.jpg', '2019-05-14'),
(11, 'MNL019012', '$2y$10$veT5f9pbkE4FizQvF2SWgOdEhprPwrXHy2IxtWE3Nq1aXeu507/xa', 'JOHN MAR', 'CAMBEL', '', '0000-00-00', 'jcambel@xpeditellc.com', '', 13, 7, '', '2019-05-14'),
(12, 'MNL019013', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'FELYROSE', 'HERNANDEZ', '065 San Juan Ma. Kahoy Cerca, Indang, Cavite', '0000-00-00', '', '', 6, 4, '', '2019-05-14'),
(13, 'MNL019014', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'CORITHA', 'ESCALADA', 'B2 L19 St. Francis V. Canlalay, Biñan, Laguna', '0000-00-00', 'cescalada@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(14, 'MNL019015', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ANNALIZA', 'SERRANO', '', '0000-00-00', 'aserrano@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(15, 'MNL019016', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'REBECCA IRENE MARIE', 'GONZALVO', '1262 C.Francisco St. Bry. Kasilawan, Makati City', '0000-00-00', 'rgonzalvo@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(16, 'MNL019017', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'HELEN', 'DELA CRUZ', '90Rosal St. Bergado Cmpd. Summitville 2 Brgy. Putatan , Muntinlupa City', '0000-00-00', 'hdelacruz@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(17, 'MNL019018', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'JOSEPH', 'GIL', '2321 Nickel St. San Andres Bukid ,Manila', '0000-00-00', 'jgil@xpeditellc.com', '', 6, 4, '', '2019-05-14'),
(18, 'MNL019019', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'RONALYN', 'RACELIS', '', '0000-00-00', 'rracelis@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(19, 'MNL019020', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'RAFAEL', 'LACSAMANA', '', '0000-00-00', 'rlacsamana@xpeditellc.com', '', 6, 4, '', '2019-05-14'),
(20, 'MNL019021', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'NOEMI', 'ALHAMBRA', '', '0000-00-00', 'nalhambra@xpeditellc.com', '', 14, 4, '', '2019-05-14'),
(21, 'MNL019022', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'CHRISTIAN', 'BALOJA', '556 Magallanes Cor. Real St., Intramuros, Manila', '0000-00-00', 'cbaloja@xpeditellc.com', '', 6, 4, '', '2019-05-14'),
(22, 'MNL019023', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MARY JANE', 'BATIS', '63 A. San Vicente St., San Pedro, Laguna', '0000-00-00', 'mbatis@xpeditellc.com', '', 6, 4, '', '2019-05-14'),
(23, 'MNL019024', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'CRISELLE', 'CASIMIRO', '', '0000-00-00', '', '', 7, 4, '', '2019-05-14'),
(24, 'MNL019025', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ROY', 'JOYAS', '', '0000-00-00', 'rjoyas@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(25, 'MNL019026', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ANNALIE', 'LUNARIA', '', '0000-00-00', 'alunaria@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(26, 'MNL019027', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'JILL SHANE', 'MARQUEZ', '', '0000-00-00', 'jmarquez@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(27, 'MNL019028', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'FRANCIS', 'ORTIZ', '', '0000-00-00', 'fortiz@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(28, 'MNL019029', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'CAMILLE', 'ROBLE', '', '0000-00-00', 'croble@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(29, 'MNL019030', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'LOUIS ALBERT', 'SEMBRANO', '', '0000-00-00', 'lsembrano@xpeditellc.com', '', 6, 4, '', '2019-05-14'),
(30, 'MNL019031', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'RHONNA', 'SUIZO', '', '0000-00-00', 'rsuizo@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(31, 'MNL019032', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'CRISTOPHER', 'BARTOLOME', '', '0000-00-00', 'cbartolome@hhlholdings.com', '', 14, 5, '', '2019-05-14'),
(32, 'MNL019033', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'RAY CHRISTOPHER', 'AMO', '', '0000-00-00', 'ramo@xpeditellc.com', '', 14, 4, '', '2019-05-14'),
(33, 'MNL019034', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ROY', 'ELLAMIL', '281-Pineda St. San Jose', '0000-00-00', 'rellamil@xpeditellc.com', '', 21, 3, '', '2019-05-14'),
(34, 'MNL019035', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'RAINIER JUNELL', 'GARVIDA', '', '0000-00-00', 'rgarvida@xpeditellc.com', '', 22, 3, '', '2019-05-14'),
(35, 'MNL019036', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'RUFINO', 'LABE', 'Blk. 2 Lot 2 Hanoi St.B.F.Home', '0000-00-00', '', '', 4, 1, '', '2019-05-14'),
(36, 'MNL019037', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MARLON', 'LAURIAGA', '272 Caanawan', '0000-00-00', 'mlauriaga@xpeditellc.com', '', 20, 3, '', '2019-05-14'),
(37, 'MNL019038', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ROGELIO', 'PESCASIO', '93 M79 St. Soldiers Village Sta. Lucia', '0000-00-00', 'rpescasio@xpeditellc.com', '', 5, 3, '', '2019-05-14'),
(38, 'MNL019039', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'HUBERT', 'PUZON', '#4 Sto Niño Village', '0000-00-00', 'hpuzon@xpeditellc.com', '', 20, 3, '', '2019-05-14'),
(39, 'MNL019040', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MARILOU', 'REYES', '115 Del Pilar St.', '0000-00-00', 'mreyes@xpeditellc.com', '', 21, 3, '', '2019-05-14'),
(40, 'MNL019041', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'VICTOR', 'TAJON', '16 Inmamduyan ', '0000-00-00', 'vtajon@xpeditellc.com', '', 17, 3, '', '2019-05-14'),
(41, 'MNL019042', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MARIA CATHRINA', 'ALCANTARA', '', '0000-00-00', 'mcalcantara@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(42, 'MNL019043', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'JULI ANN', 'PLATERO', '', '0000-00-00', 'japlatero@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(43, 'MNL019044', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ROLF LINTON', 'TIBAY', '', '0000-00-00', 'rtibay@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(44, 'MNL019045', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'JARED', 'BETOYA', '9D Antique St. Ramon Magsaysay, Quezon City', '0000-00-00', 'jbetoya@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(45, 'MNL019046', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'EMIL', 'FAROLAN', '9-D Antique St. Bago Bantay, Quezon City', '0000-00-00', 'efarolan@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(46, 'MNL019047', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'REMLE', 'GATCHALIAN', '74 Liwayway St., Marulas, Valenzuela City', '0000-00-00', 'rgatchalian@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(47, 'MNL019048', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MARHARETTE', 'JAMERO', '', '0000-00-00', 'mjamero@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(48, 'MNL019049', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'JENNIFER', 'TABAMO', '', '0000-00-00', 'jtabamo@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(49, 'MNL019050', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ALVIN CHESTER', 'ARRIOLA', '', '0000-00-00', 'aarriola@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(50, 'MNL019051', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MICHAEL JANH', 'VALIENTE', '', '0000-00-00', 'mjvaliente@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(51, 'MNL019052', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'JOEY RAYMOND', 'BAMBA', 'AB-401 El Pueblo Condo Anonas St. Sta Mesa, Manila', '0000-00-00', 'jbamba@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(52, 'MNL019053', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'STEEVE EDGAR', 'NOMA', '', '0000-00-00', 'snoma@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(53, 'MNL019054', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ELIZA', 'REYES', '', '0000-00-00', 'ereyes@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(54, 'MNL019055', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'CATRINA', 'ZAMORA', '', '0000-00-00', 'czamora@xpeditellc.com', '', 8, 4, '', '2019-05-14'),
(55, 'MNL019056', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'BRANDO', 'MARTINEZ', '', '0000-00-00', '', '', 3, 4, '', '2019-05-14'),
(56, 'MNL019057', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ROXANNE', 'PUNZALAN', '', '0000-00-00', '', '', 3, 4, '', '2019-05-14'),
(57, 'MNL019058', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'IMEE', 'DISUANCO', '', '0000-00-00', 'imee@arrivednow.com', '', 11, 2, '', '2019-05-14'),
(58, 'MNL019059', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'CYLENE', 'REBENITO', '', '0000-00-00', 'cylene@arrivednow.com', '', 11, 2, '', '2019-05-14'),
(59, 'MNL019060', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ORVILLE', 'FRAGINAL', '', '0000-00-00', 'orville@arrivednow.com', '', 8, 4, '', '2019-05-14'),
(60, 'MNL019061', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'IRENE', 'GREGORY', '', '0000-00-00', 'igregory@honpm.com', '', 3, 4, '', '2019-05-14'),
(61, 'MNL019062', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'KRESHA ANNE ', 'FLORES', '', '0000-00-00', 'kflores@xpeditellc.com', '', 7, 4, '', '2019-05-14'),
(62, 'MNL019063', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'SHALEI AMOR', 'SAN JUAN', '1449 Anacleto St. Sta., Cruz. Manila', '0000-00-00', 'ssanjuan@xpeditellc.com', '', 8, 4, '', '2019-05-29'),
(63, 'MNL019064', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MICHAEL', 'BELEY', '3 Road 13 Bagong Pag-Asa Quezon City', '0000-00-00', 'mbeley@xpeditellc.com', '', 8, 4, '', '2019-05-29'),
(64, 'MNL019065', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'TERESITA', 'TRINIDAD', '56, 5-A Cenacle Dr., Culiat, Quezon City ', '0000-00-00', 'ttrinidad@xpeditellc.com', '', 8, 4, '', '2019-06-13'),
(65, 'MNL019066', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ROBERT', 'SAMONTE', '407 Lalllana St. Tondo,Manila', '0000-00-00', 'rsamonte@xpeditellc.com', '', 8, 4, '', '2019-06-13'),
(66, 'MNL019067', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ANA', 'VELASQUEZ', '1449 Anacleto St. Sta., Cruz. Manila', '0000-00-00', 'anna@arrivednow.com', '', 7, 4, '', '2019-06-18'),
(67, 'MNL019068', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ANDREW', 'MANDAP', '1124 Batangas St. Tondo, Manila', '0000-00-00', 'amandap@xpeditellc.com', '', 7, 4, '', '2019-07-11'),
(68, 'MNL019069', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MARC CHRISTIAN', 'LOMOYA', '38 Lirio St., Tahanan Village, Paranaque City', '0000-00-00', 'marc@arrivednow.com', '', 19, 4, '', '2019-09-17'),
(69, 'MNL019070', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ELIGIO', 'LAYSON', '', '0000-00-00', 'elayson@xpeditellc.com', '', 16, 3, '', '2019-10-21'),
(70, 'MNL019071', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'RODERICK', 'VILORIA', '', '0000-00-00', 'rviloria@xpeditellc.com', '', 16, 3, '', '2019-10-21'),
(71, 'MNL019072', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'NOELSON', 'SANCHEZ', 'B1 L6B CORDILLERA ST. COUNTRY HOMES', '0000-00-00', 'nsanchez@expeditellc.com', '', 9, 4, '', '2019-12-03'),
(72, 'MNL020073', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'ARIANNE', 'LAPIRA', '', '0000-00-00', 'alapira@xpeditellc.com', '', 8, 4, '', '2020-01-21'),
(73, 'MNL020074', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'SAMANTHA ANN', 'DIZON', '', '0000-00-00', 'sdizon@xpeditellc.com', '', 8, 4, '', '2020-01-21'),
(74, 'MNL020075', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'JAN THEA BERNICE', 'GASACAO', '', '0000-00-00', 'jgasacao@xpeditellc.com', '', 8, 4, '', '2020-01-21'),
(75, 'MNL020076', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'EROS MIL', 'SAN JOSE', '', '0000-00-00', 'esanjose@xpeditellc.com?', '', 8, 4, '', '2020-02-04'),
(76, 'MNL020077', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'MA. KRISTINA NICOLE', 'FELIX', '', '0000-00-00', 'mfelix@xpeditellc.com?', '', 8, 4, '', '2020-02-04'),
(77, 'MNL020078', '$2y$10$qAMecNZQx/oOdZ7UOuAntul8KrD4MqjPFvWm63f5cO0bfAqNfq7E2', 'JESSICA CHRISTINE ', 'ORQUILLAS', '', '0000-00-00', 'jorquillas@xpeditellc.com', 'Female', 8, 4, '', '2020-02-11'),
(78, 'MNL020079', '$2y$10$a5JSVLIeVTYMc3lN7aLPJ.y3UXaK2zk42G5snMkJ79KA85TFJjEPG', 'STEVEN VINCENT ', 'DE GUZMAN', '', '0000-00-00', 'sdeguzman@xpeditellc.com', 'Male', 8, 4, '', '2020-02-11'),
(79, 'MNL020080', '$2y$10$ht7y4QjSZ52Lyb1tcEWnVuUCV5SUqceAgBkXgGg4oLYXdRNkzEZd2', 'MARIA RHEANNA ', 'SAN AGUSTIN', '', '0000-00-00', 'msanagustin@xpeditellc.com', 'Female', 8, 4, '', '2020-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

-- CREATE TABLE `overtime` (
--   `id` int(11) NOT NULL,
--   `employee_id` varchar(15) NOT NULL,
--   `employee_email` varchar(50) NOT NULL,
--   `manager_email` varchar(50) NOT NULL,
--   `ottype` varchar(20) NOT NULL,
--   `description` text NOT NULL,
--   `filed_date` varchar(20) NOT NULL,
--   `approved_date` varchar(20) DEFAULT NULL,
--   `startdate` varchar(50) NOT NULL,
--   `enddate` varchar(50) NOT NULL,
--   `totalhrs` varchar(20) NOT NULL,
--   `status` varchar(20) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`id`, `employee_id`, `employee_email`, `manager_email`, `ottype`, `description`, `filed_date`, `approved_date`, `startdate`, `enddate`, `totalhrs`, `status`) VALUES
(1, 'MNL019011', 'sacob@xpeditellc.com', 'online.rochelle@gmail.com', 'RDOT', 'Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen fans.', '2020-02-23', NULL, '03/05/2020 12:00 AM ', ' 03/05/2020 02:30 AM', '2.5', 'Pending'),
(2, 'MNL019011', 'sacob@xpeditellc.com', 'sacob@xpeditellc.com', 'RDOT', 'B.S. in Computer Science from the University of Tennessee at Knoxville', '2020-02-23', NULL, '02/28 12:00 AM ', ' 02/28 02:30 AM', '2.5', 'Pending'),
(3, 'MNL019011', 'sacob@xpeditellc.com', 'online.silvestre@gmail.com', 'RDOT', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.', '2020-02-24', NULL, '02/26 12:00 AM ', ' 02/26 01:30 AM', '1.5', 'Pending'),
(4, 'MNL019011', 'sacob@xpeditellc.com', 'online.rochelle@gmail.com', 'RDOT', 'sdsad', '2020-02-27', NULL, '02/28 12:00 AM ', ' 02/28 01:30 AM', '1.5', 'Pending'),
(5, 'MNL019011', 'sacob@xpeditellc.com', 'sacob@xpeditellc.com', 'Regular_OT', 'Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen fans.', '07 Mar 2020 03:39 PM', NULL, '03/07 12:00 AM ', ' 03/07 01:30 AM', '1.5', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payrollhistory`
--

-- CREATE TABLE `payrollhistory` (
--   `idpay` int(11) NOT NULL,
--   `employee_id` varchar(15) NOT NULL,
--   `payroll_period` varchar(50) NOT NULL,
--   `income_desc` varchar(150) NOT NULL,
--   `income_hrs` varchar(50) NOT NULL,
--   `income_amount` varchar(50) NOT NULL,
--   `gross_amount` double NOT NULL,
--   `deductions_desc` varchar(150) NOT NULL,
--   `deductions_amount` varchar(50) NOT NULL,
--   `deductions_total` double NOT NULL,
--   `net_amount` double NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payrollhistory`
--

INSERT INTO `payrollhistory` (`idpay`, `employee_id`, `payroll_period`, `income_desc`, `income_hrs`, `income_amount`, `gross_amount`, `deductions_desc`, `deductions_amount`, `deductions_total`, `net_amount`) VALUES
(125, 'MNL019002', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '80(0)', '50000', 50000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n550.00<br>\n100.00<br>\n9,005.00', 10455, 39545),
(126, 'MNL019003', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '34125', 34125, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1851.2<br>\n800.00<br>\n550.00<br>\n100.00<br>\n2,552.', 5853.88, 28271.12),
(127, 'MNL019004', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND', '88(0)<br>\n3(0)<br>\n37(0)', '19975<br>\n864.17<br>\n852.65', 21691.82, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n549.31<br>\n100.00<br>\n1,251.05', 2700.36, 18991.46),
(128, 'MNL019005', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '42500', 42500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n550.00<br>\n100.00<br>\n7,087.50', 8537.5, 33962.5),
(129, 'MNL019006', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nAdjustment Basic', '80(0)<br>\n0(0)', '46872<br>\n62,400.00', 109272, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1476.64<br>\n800.00<br>\n550.00<br>\n100.00<br>\n24,48', 27407.14, 81864.86),
(130, 'MNL019007', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '86250', 86250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n550.00<br>\n100.00<br>\n13,148.33', 14598.33, 71651.67),
(131, 'MNL019008', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '80(0)', '16785.3', 16785.3, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '680<br>\n461.60<br>\n100.00<br>\n954.85', 2196.45, 14588.85),
(132, 'MNL019009', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '80(0)', '15450', 15450, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '620<br>\n428.88<br>\n100.00<br>\n610.05', 1758.93, 13691.07),
(133, 'MNL019010', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '17500', 17500, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1010.54<br>\n800.00<br>\n481.25<br>\n100.00<br>\n914.5', 3306.38, 14193.62),
(134, 'MNL019011', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '79(0)<br>\n9(5)<br>\n5(30)<br>\n1(0)', '13097.14<br>\n138.85<br>\n1,092.96<br>\n152.86', 14481.81, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n364.37<br>\n100.00<br>\n201.13', 1465.5, 13016.31),
(135, 'MNL019012', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '87(15)<br>\n4(0)<br>\n1(55)<br>\n0(45)', '13135.35<br>\n764.31<br>\n29.30<br>\n114.65', 14043.61, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n364.37<br>\n100.00<br>\n219.42', 1483.79, 12559.82),
(136, 'MNL019013', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '81(31)<br>\n39(42)<br>\n3(17)<br>\n3(22)', '13156.76<br>\n652.66<br>\n539.77<br>\n553.47', 14902.66, 'SSS Loan<br>\nHDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1476.64<br>\n500.00<br>\n580.00<br>\n391.87<br>\n100.0', 3048.51, 11854.15),
(137, 'MNL019014', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)<br>\nTardiness', '76(30)<br>\n3(30)<br>\n3(30)', '12182.8<br>\n512.62<br>\n(512.62)', 12182.8, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n349.12<br>\n100.00<br>\n0.00', 949.12, 11233.68),
(138, 'MNL019015', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '95(30)<br>\n22(25)<br>\n0(30)', '10190.87<br>\n265.08<br>\n59.13', 10515.08, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '420<br>\n281.87<br>\n100.00<br>\n0.00', 801.87, 9713.21),
(139, 'MNL019016', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '74(52)<br>\n3(0)<br>\n4(38)<br>\n5(30)', '9581.58<br>\n37.55<br>\n579.97<br>\n688.45', 10887.55, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '394.38<br>\n440.00<br>\n298.37<br>\n100.00<br>\n0.00', 1232.75, 9654.8),
(140, 'MNL019017', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nCompany Vacation Leave (Taxable)', '83(0)<br>\n1(0)<br>\n1(0)', '9637.52<br>\n140.60<br>\n112.48', 9890.6, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '400<br>\n268.13<br>\n100.00<br>\n0.00', 768.13, 9122.47),
(141, 'MNL019018', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '14250', 14250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '580<br>\n391.87<br>\n100.00<br>\n255.50', 1327.37, 12922.63),
(142, 'MNL019019', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND', '80(0)<br>\n3(0)<br>\n24(57)', '10500<br>\n454.26<br>\n302.23', 11256.49, 'HDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n420.00<br>\n288.75<br>\n100.00<br>\n0.00', 1308.75, 9947.74),
(143, 'MNL019020', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRest day ND<br>\nRestday<br>\nRestday excss 9hrs<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '78(45)<br>\n1(0)<br>\n8(0)<br>\n1(0)<br>\n2(54)<br>\n3(', '11134.76<br>\n18.00<br>\n1,439.78<br>\n233.96<br>\n401', 13691.74, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '480<br>\n330.00<br>\n100.00<br>\n0.00', 910, 12781.74),
(144, 'MNL019021', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '79(0)<br>\n1(0)', '11999.66<br>\n140.05', 12139.71, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '480<br>\n333.84<br>\n100.00<br>\n0.00', 913.84, 11225.87),
(145, 'MNL019022', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRestday<br>\nRestday excss 9hrs<br>\nCompany Vacation Leave (Taxable)', '79(30)<br>\n16(0)<br>\n2(0)<br>\n0(30)', '12427.9<br>\n2,999.54<br>\n487.43<br>\n72.10', 15986.97, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n343.75<br>\n100.00<br>\n588.74', 1532.49, 14454.48),
(146, 'MNL019023', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '76(45)<br>\n3(15)', '12031.32<br>\n468.68', 12500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n343.75<br>\n100.00<br>\n0.00', 943.75, 11556.25),
(147, 'MNL019024', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Sick Leave', '72(0)<br>\n8(0)', '11414.41<br>\n1,160.59', 12575, 'HDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n500.00<br>\n345.81<br>\n100.00<br>\n0.00', 1445.81, 11129.19),
(148, 'MNL019025', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '79(30)<br>\n2(0)<br>\n2(0)<br>\n0(30)', '8848.66<br>\n256.69<br>\n20.54<br>\n51.34', 9177.23, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n244.75<br>\n100.00<br>\n0.00', 704.75, 8472.48),
(149, 'MNL019026', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '71(30)<br>\n5(9)<br>\n3(21)', '8568.41<br>\n564.43<br>\n367.16', 9500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n261.25<br>\n100.00<br>\n0.00', 741.25, 8758.75),
(150, 'MNL019027', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nRest day ND<br>\nRestday<br>\nRestday excss 9hrs<br>\nCompany Vacation Leave (Taxable)', '85(15)<br>\n1(0)<br>\n1(0)<br>\n16(0)<br>\n1(0)<br>\n0(', '10409.15<br>\n151.42<br>\n15.75<br>\n2,519.61<br>\n204', 13391.5, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '420<br>\n288.75<br>\n100.00<br>\n0.00', 808.75, 12582.75),
(151, 'MNL019028', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Sick Leave', '85(0)<br>\n8(0)', '8078.59<br>\n821.41', 8900, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n244.75<br>\n100.00<br>\n0.00', 704.75, 8195.25),
(152, 'MNL019029', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '84(0)<br>\n1(0)', '8896.17<br>\n103.83', 9000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n247.50<br>\n100.00<br>\n0.00', 707.5, 8292.5),
(153, 'MNL019030', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '75(15)<br>\n30(56)<br>\n1(24)<br>\n3(21)', '9215.71<br>\n347.95<br>\n157.47<br>\n376.82', 10097.95, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '400<br>\n268.13<br>\n100.00<br>\n0.00', 768.13, 9329.82),
(154, 'MNL019031', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND', '80(0)<br>\n7(0)<br>\n35(30)', '14000<br>\n1,413.24<br>\n573.38', 15986.62, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '560<br>\n385.00<br>\n100.00<br>\n571.26', 1616.26, 14370.36),
(155, 'MNL019032', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '81(0)<br>\n2(29)<br>\n3(21)', '14690.07<br>\n451.22<br>\n608.71', 15750, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '640<br>\n433.12<br>\n100.00<br>\n0.00<br>\n560.00', 1733.12, 14016.88),
(156, 'MNL019033', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '70(30)<br>\n8(0)<br>\n1(30)', '13356.02<br>\n1,384.40<br>\n259.58', 15000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '600<br>\n412.50<br>\n100.00<br>\n433.53', 1546.03, 13453.97),
(157, 'MNL019034', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '39555', 39555, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1476.64<br>\n800.00<br>\n550.00<br>\n100.00<br>\n5,142', 8069.53, 31485.47),
(158, 'MNL019035', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '12375', 12375, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n340.31<br>\n100.00<br>\n0.00', 1240.31, 11134.69),
(159, 'MNL019036', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nRestday', '88(0)<br>\n29(0)<br>\n19(0)', '9540<br>\n3,989.68<br>\n2,718.48', 16248.16, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n262.34<br>\n100.00<br>\n514.50', 1676.84, 14571.32),
(160, 'MNL019037', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '71(32)<br>\n16(28)', '19825.87<br>\n4,649.63', 24475.5, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n550.00<br>\n100.00<br>\n2,437.20', 3887.2, 20588.3),
(161, 'MNL019038', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '27448.2', 27448.2, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '2298.74<br>\n800.00<br>\n550.00<br>\n100.00<br>\n3,143', 6892.45, 20555.75),
(162, 'MNL019039', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '85(55)<br>\n2(5)', '19800.19<br>\n487.61', 20287.8, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n550.00<br>\n100.00<br>\n1,394.30', 2844.3, 17443.5),
(163, 'MNL019040', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '25693.2', 25693.2, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n550.00<br>\n100.00<br>\n2,661.49', 4111.49, 21581.71),
(164, 'MNL019041', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '80(0)<br>\n8(0)', '29336.17<br>\n2,982.83', 32319, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n550.00<br>\n100.00<br>\n3,972.28', 5422.28, 26896.72),
(165, 'MNL019042', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND', '80(0)<br>\n3(0)<br>\n4(0)', '9250<br>\n400.18<br>\n42.69', 9692.87, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '380<br>\n254.37<br>\n100.00<br>\n0.00<br>\n0.00', 734.37, 8958.5),
(166, 'MNL019043', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '50(56)<br>\n14(28)<br>\n25(43)<br>\n3(21)', '6148.19<br>\n154.38<br>\n2,744.32<br>\n357.49', 9404.38, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n254.37<br>\n100.00<br>\n0.00', 734.37, 8670.01),
(167, 'MNL019044', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '75(45)<br>\n8(0)<br>\n1(15)', '8131.03<br>\n989.85<br>\n118.97', 9239.85, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n226.88<br>\n100.00<br>\n0.00', 666.88, 8572.97),
(168, 'MNL019045', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '85(0)', '9000', 9000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n247.50<br>\n100.00<br>\n0.00', 707.5, 8292.5),
(169, 'MNL019046', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRestday', '80(0)<br>\n6(0)', '9000<br>\n809.87', 9809.87, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n247.50<br>\n100.00<br>\n0.00', 707.5, 9102.37),
(170, 'MNL019047', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '64(0)<br>\n28(0)<br>\n12(39)<br>\n3(21)', '7338.72<br>\n290.72<br>\n1,313.45<br>\n347.83', 9290.72, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '360<br>\n247.50<br>\n100.00<br>\n0.00<br>\n0.00', 707.5, 8583.22),
(171, 'MNL019048', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '75(30)<br>\n3(0)<br>\n5(9)<br>\n3(21)', '8027.25<br>\n30.80<br>\n528.78<br>\n343.97', 8930.8, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n244.75<br>\n100.00<br>\n0.00', 704.75, 8226.05),
(172, 'MNL019049', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '72(40)<br>\n3(59)<br>\n3(21)', '8467.43<br>\n425.08<br>\n357.49', 9250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n254.27<br>\n100.00<br>\n0.00', 734.27, 8515.73),
(173, 'MNL019050', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '8500', 8500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n233.75<br>\n100.00<br>\n0.00', 673.75, 7826.25),
(174, 'MNL019051', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRestday', '80(0)<br>\n8(0)', '8750<br>\n1,049.84', 9799.84, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n240.62<br>\n100.00<br>\n0.00', 700.62, 9099.22),
(175, 'MNL019052', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '56(0)<br>\n17(28)<br>\n20(39)<br>\n3(21)', '6146.53<br>\n171.28<br>\n2,024.97<br>\n328.50', 8671.28, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n233.75<br>\n100.00<br>\n0.00', 673.75, 7997.53),
(176, 'MNL019053', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '77(0)<br>\n4(39)<br>\n3(21)', '7715.51<br>\n455.99<br>\n328.50', 8500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n233.75<br>\n100.00<br>\n0.00', 673.75, 7826.25),
(177, 'MNL019054', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday', '85(0)<br>\n3(0)<br>\n6(0)', '8500<br>\n29.42<br>\n764.88', 9294.3, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n233.75<br>\n100.00<br>\n0.00', 673.75, 8620.55),
(178, 'MNL019055', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday', '77(0)<br>\n3(0)<br>\n12(0)', '8500<br>\n29.42<br>\n1,529.76', 10059.18, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n233.75<br>\n100.00<br>\n0.00', 673.75, 9385.43),
(179, 'MNL019056', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '84(15)<br>\n3(45)', '12437.59<br>\n562.41', 13000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '520<br>\n357.50<br>\n100.00<br>\n0.00', 977.5, 12022.5),
(180, 'MNL019057', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '84(15)<br>\n3(45)', '12437.59<br>\n562.41', 13000, 'HDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '2000<br>\n520.00<br>\n357.50<br>\n100.00<br>\n0.00', 2977.5, 10022.5),
(181, 'MNL019058', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours', '88(0)', '12000', 12000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '480<br>\n330.00<br>\n100.00<br>\n0.00', 910, 11090),
(182, 'MNL019059', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '87(34)<br>\n0(26)', '11193.76<br>\n56.24', 11250, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1464.76<br>\n460.00<br>\n309.37<br>\n100.00<br>\n0.00', 2334.13, 8915.87),
(183, 'MNL019060', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '80(0)<br>\n4(38)<br>\n3(22)', '9077.07<br>\n534.53<br>\n388.40', 10000, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '483.96<br>\n400.00<br>\n275.00<br>\n100.00<br>\n0.00', 1258.96, 8741.04),
(184, 'MNL019061', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '77(30)<br>\n2(30)', '14567.37<br>\n432.63', 15000, 'SSS Loan<br>\nHDMF Loan<br>\nHDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1476.64<br>\n783.24<br>\n1,500.00<br>\n600.00<br>\n412', 4872.38, 10127.62),
(185, 'MNL019062', '2019-05-B (5/14/2019-5/28/2019)', 'Regular Hours<br>\nRest day ND<br>\nRestday<br>\nRestday excss 9hrs', '85(0)<br>\n2(0)<br>\n16(0)<br>\n1(0)', '8500<br>\n25.37<br>\n2,029.28<br>\n164.88', 10719.53, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n233.75<br>\n100.00<br>\n0.00', 673.75, 10045.78),
(186, 'MNL019002', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '64(0)<br>\n8(0)<br>\n8(0)', '48924.78<br>\n5,537.61<br>\n5,537.61', 60000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n12,251.67', 14051.67, 45948.33),
(187, 'MNL019003', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '34125', 34125, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '925.6<br>\n800.00<br>\n900.00<br>\n400.00<br>\n4,643.7', 7669.35, 26455.65),
(188, 'MNL019004', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n17(45)', '20422.92<br>\n418.21', 20841.13, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n612.68<br>\n100.00<br>\n1,157.36', 2670.04, 18171.09),
(189, 'MNL019005', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '60000', 60000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n12,251.67', 14051.67, 45948.33),
(190, 'MNL019007', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '72(0)<br>\n8(0)', '78289.69<br>\n7,960.31', 86250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n19,189.17', 20989.17, 65260.83),
(191, 'MNL019008', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '17150', 17150, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n680.00<br>\n514.50<br>\n100.00<br>\n462.77', 2495.59, 14654.41),
(192, 'MNL019009', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '15800', 15800, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n640.00<br>\n474.00<br>\n100.00<br>\n417.20', 2369.52, 13430.48),
(193, 'MNL019010', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '78(44)<br>\n1(16)', '17244.27<br>\n255.73', 17500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '700<br>\n525.00<br>\n100.00<br>\n735.00', 2060, 15440),
(194, 'MNL019011', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '79(33)<br>\n25(0)<br>\n0(27)', '13181.21<br>\n382.15<br>\n68.79', 13632.15, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '540<br>\n397.50<br>\n100.00<br>\n18.93', 1056.43, 12575.72),
(195, 'MNL019012', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '77(40)<br>\n24(23)<br>\n2(20)', '12893.33<br>\n372.73<br>\n356.67', 13622.73, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n540.00<br>\n397.50<br>\n100.00<br>\n17.05', 1792.87, 11829.86),
(196, 'MNL019014', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND', '88(0)<br>\n28(0)', '13400<br>\n432.86', 13832.86, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '540<br>\n402.00<br>\n100.00<br>\n58.17', 1100.17, 12732.69),
(197, 'MNL019015', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '68(48)<br>\n31(16)<br>\n3(12)<br>\n8(0)', '9871.6<br>\n369.73<br>\n378.40<br>\n(946.01)', 9673.72, 'SSS Loan<br>\nHDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '784.47<br>\n250.00<br>\n420.00<br>\n307.50<br>\n500.00', 2261.97, 7411.75),
(198, 'MNL019016', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Overtime', '80(0)<br>\n5(0)', '11250<br>\n811.17', 12061.17, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '394.14<br>\n460.00<br>\n337.50<br>\n100.00<br>\n0.00', 1291.64, 10769.53),
(199, 'MNL019017', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '71(0)<br>\n12(0)<br>\n1(0)<br>\n8(0)', '9637.52<br>\n1,754.73<br>\n112.48<br>\n(899.86)', 10604.87, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '2000<br>\n400.00<br>\n292.50<br>\n100.00<br>\n0.00', 2792.5, 7812.37),
(200, 'MNL019018', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '16000', 16000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '640<br>\n480.00<br>\n100.00<br>\n456.00', 1676, 14324),
(201, 'MNL019019', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '71(25)<br>\n21(55)<br>\n8(35)', '10135.99<br>\n284.45<br>\n1,114.01', 11534.45, 'HDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '250<br>\n460.00<br>\n337.50<br>\n100.00<br>\n0.00', 1147.5, 10386.95),
(202, 'MNL019020', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRestday<br>\nRestday excss 9hrs', '80(0)<br>\n4(0)<br>\n16(0)<br>\n1(0)', '12000<br>\n692.20<br>\n2,879.55<br>\n221.50', 15793.25, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '480<br>\n360.00<br>\n100.00<br>\n470.65', 1410.65, 14382.6),
(203, 'MNL019021', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '71(41)<br>\n8(19)', '11662.28<br>\n1,237.72', 12900, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n484.18<br>\n520.00<br>\n387.00<br>\n100.00', 2229.5, 10670.5),
(204, 'MNL019022', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday<br>\nCompany Sick Leave', '72(0)<br>\n16(0)<br>\n8(0)', '12254.04<br>\n3,239.50<br>\n1,245.96', 16739.5, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '540<br>\n405.00<br>\n100.00<br>\n638.90', 1683.9, 15055.6),
(205, 'MNL019023', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRest day ND<br>\nRestday<br>\nRestday excss 9hrs<br>\nCompany Sick Leave<br>\nCompany Vacation L', '62(37)<br>\n1(0)<br>\n54(37)<br>\n8(0)<br>\n8(0)<br>\n3', '10792.64<br>\n194.68<br>\n850.62<br>\n161.97<br>\n1,61', 17074.6, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '540<br>\n405.00<br>\n100.00<br>\n705.92', 1750.92, 15323.68),
(206, 'MNL019025', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday', '80(0)<br>\n4(0)<br>\n18(0)', '8900<br>\n41.07<br>\n2,402.62', 11343.69, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1000<br>\n300.00<br>\n360.00<br>\n267.00<br>\n100.00<b', 2027, 9316.69),
(207, 'MNL019026', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '78(4)<br>\n7(0)<br>\n1(56)', '9776.95<br>\n1,049.83<br>\n223.05', 11049.83, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n400.00<br>\n300.00<br>\n100.00<br>\n0.00', 1538.32, 9511.51),
(208, 'MNL019027', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '60(14)<br>\n16(0)<br>\n8(0)<br>\n3(46)', '9074.65<br>\n2,519.61<br>\n969.08<br>\n456.27', 13019.61, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '420<br>\n315.00<br>\n100.00<br>\n0.00', 835, 12184.61),
(209, 'MNL019028', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '20(4)<br>\n18(53)<br>\n49(3)', '7430.41<br>\n2,069.59<br>\n(5,230.89)', 4269.11, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n380.00<br>\n285.00<br>\n100.00<br>\n0.00', 1503.32, 2765.79),
(210, 'MNL019029', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '72(0)<br>\n8(0)', '8396.29<br>\n853.71', 9250, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380.7<br>\n380.00<br>\n277.50<br>\n100.00<br>\n0.00', 1138.2, 8111.8),
(211, 'MNL019030', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n34(53)', '12000<br>\n482.93', 12482.93, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '480<br>\n360.00<br>\n100.00<br>\n0.00', 940, 11542.93),
(212, 'MNL019031', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday<br>\nCompany Sick Leave', '72(0)<br>\n5(0)<br>\n8(0)', '13388.67<br>\n1,106.08<br>\n1,361.33', 15856.08, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '600<br>\n442.50<br>\n100.00<br>\n234.38', 1376.88, 14479.2),
(213, 'MNL019032', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '79(5)<br>\n0(55)', '16362.61<br>\n174.89', 16537.5, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '738.32<br>\n660.00<br>\n496.12<br>\n100.00<br>\n0.00<b', 2550.72, 13986.78),
(214, 'MNL019034', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '39555', 39555, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n800.00<br>\n900.00<br>\n100.00<br>\n6,118.', 8656.49, 30898.51),
(215, 'MNL019035', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '64(0)<br>\n16(0)', '10090.74<br>\n2,284.26', 12375, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n371.25<br>\n100.00<br>\n0.00', 971.25, 11403.75),
(216, 'MNL019036', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '9540', 9540, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n286.20<br>\n100.00<br>\n0.00', 766.2, 8773.8),
(217, 'MNL019037', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '24475.5', 24475.5, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '784.47<br>\n800.00<br>\n734.26<br>\n100.00<br>\n2,272.', 4691.54, 19783.96),
(218, 'MNL019038', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '27448.2', 27448.2, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n823.44<br>\n100.00<br>\n2,993.69', 4717.13, 22731.07),
(219, 'MNL019039', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '20287.8', 20287.8, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '853.68<br>\n800.00<br>\n608.63<br>\n100.00<br>\n1,257.', 3619.6, 16668.2),
(220, 'MNL019040', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '25693.2', 25693.2, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1500<br>\n1,270.80<br>\n800.00<br>\n770.79<br>\n100.00', 7009.69, 18683.51),
(221, 'MNL019041', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Sick Leave', '72(0)<br>\n8(0)', '29336.17<br>\n2,982.83', 32319, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n3,671.42', 5471.42, 26847.58),
(222, 'MNL019042', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '63(30)<br>\n20(30)<br>\n0(30)', '9942.32<br>\n236.50<br>\n57.68', 10236.5, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '400<br>\n300.00<br>\n100.00<br>\n0.00<br>\n0.00', 800, 9436.5),
(223, 'MNL019043', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '71(18)<br>\n21(48)<br>\n0(42)<br>\n8(0)', '9671.26<br>\n245.21<br>\n78.74<br>\n(899.86)', 9095.35, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '400<br>\n292.50<br>\n100.00<br>\n0.00', 792.5, 8302.85),
(224, 'MNL019044', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '54(8)<br>\n16(0)<br>\n1(52)<br>\n8(0)', '6549.49<br>\n1,522.84<br>\n177.67<br>\n(761.42)', 7488.58, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n247.50<br>\n100.00<br>\n0.00', 687.5, 6801.08),
(225, 'MNL019045', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '79(43)<br>\n3(56)<br>\n6(0)<br>\n0(17)', '9468.95<br>\n43.11<br>\n854.87<br>\n31.05', 10397.98, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n285.00<br>\n100.00<br>\n0.00', 765, 9632.98),
(226, 'MNL019046', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '79(33)<br>\n3(56)<br>\n5(0)<br>\n0(27)', '9450.68<br>\n43.11<br>\n712.39<br>\n49.32', 10255.5, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n285.00<br>\n100.00<br>\n0.00', 765, 9490.5),
(227, 'MNL019047', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRest day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '64(0)<br>\n28(0)<br>\n1(0)<br>\n8(0)<br>\n16(0)', '7950.28<br>\n314.95<br>\n14.62<br>\n1,169.82<br>\n1,79', 11249.39, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '400<br>\n292.50<br>\n100.00<br>\n0.00<br>\n0.00', 792.5, 10456.89),
(228, 'MNL019048', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '79(42)<br>\n4(0)<br>\n0(18)', '9367.47<br>\n43.38<br>\n32.53', 9443.38, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '2500<br>\n659.75<br>\n380.00<br>\n282.00<br>\n100.00<b', 3921.75, 5521.63),
(229, 'MNL019049', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '78(1)<br>\n1(59)', '9038.35<br>\n211.65', 9250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n277.50<br>\n100.00<br>\n0.00', 757.5, 8492.5),
(230, 'MNL019050', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday', '80(0)<br>\n6(0)', '9250<br>\n832.37', 10082.37, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '369.16<br>\n380.00<br>\n277.50<br>\n100.00<br>\n0.00', 1126.66, 8955.71),
(231, 'MNL019051', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday', '80(0)<br>\n8(0)', '9500<br>\n1,139.83', 10639.83, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n285.00<br>\n100.00<br>\n0.00', 765, 9874.83),
(232, 'MNL019052', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '79(35)<br>\n32(35)<br>\n0(25)', '9205.54<br>\n347.71<br>\n44.46', 9597.71, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n277.50<br>\n100.00<br>\n0.00', 757.5, 8840.21),
(233, 'MNL019053', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '46(28)<br>\n2(0)<br>\n32(0)<br>\n1(32)', '5211.68<br>\n19.61<br>\n3,137.96<br>\n150.36', 8519.61, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 7824.61),
(234, 'MNL019054', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Sick Leave', '72(0)<br>\n8(0)', '8169.36<br>\n830.64', 9000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 8270),
(235, 'MNL019055', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRest day ND<br>\nRestday', '80(0)<br>\n2(0)<br>\n1(0)<br>\n14(0)', '9250<br>\n21.34<br>\n13.87<br>\n1,942.19', 11227.4, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n277.50<br>\n100.00<br>\n0.00', 757.5, 10469.9),
(236, 'MNL019058', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '12500', 12500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n375.00<br>\n100.00<br>\n0.00', 975, 11525),
(237, 'MNL019059', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '79(39)<br>\n0(21)', '11453.56<br>\n46.44', 11500, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n460.00<br>\n345.00<br>\n100.00<br>\n0.00', 1643.32, 9856.68),
(238, 'MNL019060', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRest day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '85(54)<br>\n1(0)<br>\n1(0)<br>\n3(0)<br>\n2(6)', '10001.67<br>\n11.83<br>\n15.37<br>\n461.18<br>\n248.33', 10738.38, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '241.98<br>\n420.00<br>\n307.50<br>\n100.00<br>\n0.00', 1069.48, 9668.9),
(239, 'MNL019061', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '63(5)<br>\n7(5)<br>\n16(55)', '12474.98<br>\n126.66<br>\n3,025.02', 15626.66, 'SSS Loan<br>\nHDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n1,500.00<br>\n800.00<br>\n465.00<br>\n100.', 3991.65, 11635.01),
(240, 'MNL019062', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday', '80(0)<br>\n6(0)', '9000<br>\n809.87', 9809.87, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 9079.87),
(241, 'MNL019063', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday', '80(0)<br>\n4(0)<br>\n3(0)<br>\n6(0)', '9000<br>\n519.15<br>\n31.15<br>\n809.87', 10360.17, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 9630.17),
(242, 'MNL019064', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '76(40)<br>\n4(0)<br>\n3(0)<br>\n6(0)<br>\n3(20)', '8653.9<br>\n519.15<br>\n31.15<br>\n809.87<br>\n346.10', 10360.17, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 9630.17),
(243, 'MNL019065', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday<br>\nCompany Sick Leave', '72(0)<br>\n12(0)<br>\n8(0)', '8169.36<br>\n1,619.75<br>\n830.64', 10619.75, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 9889.75),
(244, 'MNL019066', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRest day ND<br>\nRestday<br>\nRestday excss 9hrs', '80(0)<br>\n2(0)<br>\n16(0)<br>\n1(0)', '8250<br>\n24.75<br>\n1,979.69<br>\n152.28', 10406.72, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n247.50<br>\n100.00<br>\n0.00', 687.5, 9719.22),
(245, 'MNL019069', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRestday<br>\nLeave w/o pay', '79(22)<br>\n8(0)<br>\n0(38)', '9000<br>\n1,079.83<br>\n(65.76)', 10014.07, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 9284.07),
(246, 'MNL019070', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nLeave w/o pay', '72(0)<br>\n8(0)', '45000<br>\n(4,153.21)', 40846.79, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n6,505.70', 8305.7, 32541.09),
(247, 'MNL019071', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nLeave w/o pay', '48(0)<br>\n32(0)', '25000<br>\n(9,229.36)', 15770.64, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n750.00<br>\n100.00<br>\n324.13', 1974.13, 13796.51),
(248, 'MNL019072', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nTardiness', '78(51)<br>\n38(51)<br>\n1(9)', '10500<br>\n470.61<br>\n(139.31)', 10831.3, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '420<br>\n315.00<br>\n100.00<br>\n0.00', 835, 9996.3),
(249, 'MNL020073', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '8500', 8500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 7805),
(250, 'MNL020074', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nLeave w/o pay', '72(0)<br>\n8(0)', '8500<br>\n(784.49)', 7715.51, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 7020.51),
(251, 'MNL020075', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours', '80(0)', '8500', 8500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 7805),
(252, 'MNL020076', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nLeave w/o pay', '48(0)<br>\n32(0)', '8500<br>\n(3,137.96)', 5362.04, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 4667.04),
(253, 'MNL020077', '2020-02-A (1/29/2020-2/11/2020)', 'Regular Hours<br>\nLeave w/o pay', '48(0)<br>\n32(0)', '8500<br>\n(3,137.96)', 5362.04, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 4667.04),
(254, 'MNL019002', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nCompany Sick Leave', '48(0)<br>\n16(0)', '48924.78<br>\n11,075.22', 60000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n12,791.66', 12791.66, 47208.34),
(255, 'MNL019003', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '34125', 34125, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '925.6<br>\n0.00<br>\n0.00<br>\n0.00<br>\n5,093.75', 6019.35, 28105.65),
(256, 'MNL019004', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n9(54)', '20422.92<br>\n233.26', 20656.18, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n1,442.96', 1442.96, 19213.22),
(257, 'MNL019005', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '60000', 60000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n12,791.66', 12791.66, 47208.34),
(258, 'MNL019007', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '86250', 86250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n19,729.16', 19729.16, 66520.84),
(259, 'MNL019008', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '64(0)<br>\n8(0)', '17150<br>\n474.85', 17624.85, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n120.00<br>\n0.00<br>\n0.00<br>\n792.63', 1650.95, 15973.9),
(260, 'MNL019009', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '64(0)<br>\n8(0)', '15800<br>\n437.47', 16237.47, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n160.00<br>\n0.00<br>\n0.00<br>\n715.49', 1613.81, 14623.66),
(261, 'MNL019010', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '70(0)<br>\n2(0)', '17096.22<br>\n403.78', 17500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '100<br>\n0.00<br>\n0.00<br>\n980.00', 1080, 16420),
(262, 'MNL019011', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '71(37)<br>\n25(0)<br>\n5(0)<br>\n8(0)<br>\n0(23)', '13191.4<br>\n382.15<br>\n152.86<br>\n366.87<br>\n58.60', 14151.88, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '260<br>\n0.00<br>\n0.00<br>\n278.38', 538.38, 13613.5),
(263, 'MNL019012', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '79(42)<br>\n29(42)<br>\n0(18)', '13204.14<br>\n454.00<br>\n45.86', 13704, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n260.00<br>\n0.00<br>\n0.00<br>\n188.80', 1187.12, 12516.88),
(264, 'MNL019014', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '64(0)<br>\n21(0)<br>\n7(0)<br>\n8(0)<br>\n8(0)', '12163.27<br>\n324.64<br>\n216.43<br>\n371.02<br>\n1,23', 14312.09, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '260<br>\n0.00<br>\n0.00<br>\n310.42', 570.42, 13741.67),
(265, 'MNL019015', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n35(59)', '10250<br>\n425.51', 10675.51, 'SSS Loan<br>\nHDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '784.47<br>\n250.00<br>\n380.00<br>\n0.00<br>\n0.00<br>', 1414.47, 9261.04),
(266, 'MNL019016', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '61(24)<br>\n3(0)<br>\n8(0)<br>\n9(0)<br>\n0(36)', '10004.04<br>\n38.94<br>\n311.49<br>\n1,168.09<br>\n77.', 11600.43, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 11260.43),
(267, 'MNL019017', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '68(12)<br>\n6(0)<br>\n8(0)<br>\n3(48)', '9322.56<br>\n877.36<br>\n269.96<br>\n427.44', 10897.32, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '2000<br>\n380.00<br>\n0.00<br>\n0.00<br>\n0.00', 2380, 8517.32),
(268, 'MNL019018', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '64(0)<br>\n8(0)', '16000<br>\n443.01', 16443.01, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '160<br>\n0.00<br>\n0.00<br>\n756.60', 916.6, 15526.41),
(269, 'MNL019019', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '63(23)<br>\n19(23)<br>\n3(30)<br>\n8(0)<br>\n0(37)', '11169.97<br>\n251.58<br>\n90.85<br>\n311.49<br>\n80.03', 11903.92, 'HDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '250<br>\n340.00<br>\n0.00<br>\n0.00<br>\n0.00', 590, 11313.92),
(270, 'MNL019020', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday<br>\nSpecial Holiday', '72(0)<br>\n13(0)<br>\n8(0)', '12000<br>\n2,339.64<br>\n332.26', 14671.9, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '320<br>\n0.00<br>\n0.00<br>\n370.38', 690.38, 13981.52),
(271, 'MNL019021', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '63(20)<br>\n8(0)<br>\n0(40)', '12800.78<br>\n357.18<br>\n99.22', 13257.18, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n484.18<br>\n280.00<br>\n0.00<br>\n0.00<br>', 1502.5, 11754.68),
(272, 'MNL019022', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday<br>\nSpecial Holiday', '72(0)<br>\n13(0)<br>\n8(0)', '13500<br>\n2,632.09<br>\n373.79', 16505.88, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '260<br>\n0.00<br>\n0.00<br>\n749.18', 1009.18, 15496.7),
(273, 'MNL019023', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nCompany Sick Leave', '56(0)<br>\n20(47)<br>\n8(0)<br>\n8(0)', '12254.04<br>\n323.69<br>\n373.79<br>\n1,245.96', 14197.48, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '260<br>\n0.00<br>\n0.00<br>\n287.50', 547.5, 13649.98),
(274, 'MNL019025', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nCompany Sick Leave', '64(0)<br>\n3(0)<br>\n8(0)<br>\n8(0)', '8078.59<br>\n30.80<br>\n246.42<br>\n821.41', 9177.22, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8817.22),
(275, 'MNL019026', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '63(24)<br>\n6(0)<br>\n7(41)<br>\n0(36)', '9930.78<br>\n899.86<br>\n265.92<br>\n69.22', 11165.78, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n400.00<br>\n0.00<br>\n0.00<br>\n0.00', 1138.32, 10027.46),
(276, 'MNL019027', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)<br>\nTardiness', '69(25)<br>\n8(0)<br>\n7(57)<br>\n0(38)<br>\n1(57)', '10423.28<br>\n1,259.80<br>\n288.90<br>\n76.72<br>\n(23', 11812.48, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 11432.48),
(277, 'MNL019028', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday', '80(0)<br>\n4(0)<br>\n7(57)', '9500<br>\n43.84<br>\n261.39', 9805.23, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n380.00<br>\n0.00<br>\n0.00<br>\n0.00', 1118.32, 8686.91),
(278, 'MNL019029', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '63(10)<br>\n7(11)<br>\n8(0)<br>\n0(50)', '8307.36<br>\n229.97<br>\n853.71<br>\n88.93', 9479.97, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380.7<br>\n360.00<br>\n0.00<br>\n0.00<br>\n0.00', 740.7, 8739.27),
(279, 'MNL019030', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday', '72(0)<br>\n31(21)<br>\n3(30)<br>\n8(0)', '12000<br>\n434.01<br>\n96.90<br>\n332.26', 12863.17, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '320<br>\n0.00<br>\n0.00<br>\n0.00', 320, 12543.17),
(280, 'MNL019031', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRestday<br>\nSpecial Holiday<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '47(37)<br>\n5(30)<br>\n7(0)<br>\n8(0)<br>\n16(0)<br>\n0', '11962.11<br>\n1,169.89<br>\n1,548.51<br>\n408.40<br>\n', 17876.8, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '200<br>\n0.00<br>\n0.00<br>\n827.03', 1027.03, 16849.77);
INSERT INTO `payrollhistory` (`idpay`, `employee_id`, `payroll_period`, `income_desc`, `income_hrs`, `income_amount`, `gross_amount`, `deductions_desc`, `deductions_amount`, `deductions_total`, `net_amount`) VALUES
(281, 'MNL019032', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '16537.5', 16537.5, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '738.32<br>\n140.00<br>\n0.00<br>\n0.00<br>\n0.00<br>\n7', 1657.82, 14879.68),
(282, 'MNL019033', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '63(17)<br>\n7(17)<br>\n8(43)', '15965.04<br>\n149.14<br>\n1,784.96', 17899.14, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '80<br>\n0.00<br>\n0.00<br>\n1,063.83', 1143.83, 16755.31),
(283, 'MNL019034', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '39555', 39555, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n0.00<br>\n0.00<br>\n0.00<br>\n6,658.16', 7396.48, 32158.52),
(284, 'MNL019035', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '12375', 12375, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '300<br>\n0.00<br>\n0.00<br>\n0.00', 300, 12075),
(285, 'MNL019036', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '9540', 9540, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9160),
(286, 'MNL019037', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '24475.5', 24475.5, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '784.47<br>\n0.00<br>\n0.00<br>\n0.00<br>\n2,681.38', 3465.85, 21009.65),
(287, 'MNL019038', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '64(0)', '27448.2', 27448.2, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n3,424.55', 3424.55, 24023.65),
(288, 'MNL019039', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '20287.8', 20287.8, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '853.68<br>\n0.00<br>\n0.00<br>\n0.00<br>\n1,634.45', 2488.13, 17799.67),
(289, 'MNL019040', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '25693.2', 25693.2, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1500<br>\n1,270.80<br>\n0.00<br>\n0.00<br>\n0.00<br>\n2', 5756.6, 19936.6),
(290, 'MNL019041', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '32319', 32319, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n4,121.41', 4121.41, 28197.59),
(291, 'MNL019042', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '60(4)<br>\n19(59)<br>\n3(36)', '9584.68<br>\n230.54<br>\n415.32', 10230.54, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '400<br>\n0.00<br>\n0.00<br>\n0.00<br>\n0.00', 400, 9830.54),
(292, 'MNL019043', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay<br>\nTardiness', '55(28)<br>\n16(58)<br>\n2(30)<br>\n8(0)<br>\n14(34)<br', '8111.5<br>\n190.84<br>\n56.24<br>\n269.96<br>\n1,638.5', 10045.83, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9665.83),
(293, 'MNL019044', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '69(7)<br>\n6(0)<br>\n8(0)<br>\n2(53)', '7975.57<br>\n742.38<br>\n228.43<br>\n274.43', 9220.81, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '320<br>\n0.00<br>\n0.00<br>\n0.00', 320, 8900.81),
(294, 'MNL019045', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '70(53)<br>\n3(0)<br>\n8(0)<br>\n1(7)', '9377.61<br>\n32.88<br>\n263.04<br>\n122.39', 9795.92, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9415.92),
(295, 'MNL019046', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '71(3)<br>\n2(3)<br>\n5(0)<br>\n8(57)', '8519.09<br>\n22.47<br>\n712.39<br>\n980.91', 10234.86, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9854.86),
(296, 'MNL019047', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday', '64(0)<br>\n28(0)<br>\n3(30)<br>\n8(0)', '9750<br>\n314.95<br>\n78.74<br>\n269.96', 10413.65, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00<br>\n0.00', 380, 10033.65),
(297, 'MNL019048', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '69(49)<br>\n4(0)<br>\n8(0)<br>\n2(11)', '9163.23<br>\n43.38<br>\n260.27<br>\n236.77', 9703.65, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '659.75<br>\n380.00<br>\n0.00<br>\n0.00<br>\n0.00', 1039.75, 8663.9),
(298, 'MNL019049', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nCompany Sick Leave<br>\nLeave w/o pay', '56(0)<br>\n8(0)<br>\n8(0)<br>\n8(0)', '8396.29<br>\n256.11<br>\n853.71<br>\n(853.71)', 8652.4, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8292.4),
(299, 'MNL019050', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday', '72(0)<br>\n42(0)<br>\n7(0)<br>\n8(0)', '9250<br>\n448.20<br>\n149.40<br>\n256.11', 10103.71, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '369.16<br>\n360.00<br>\n0.00<br>\n0.00<br>\n0.00', 729.16, 9374.55),
(300, 'MNL019051', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '72(0)<br>\n8(0)', '9500<br>\n263.04', 9763.04, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9383.04),
(301, 'MNL019052', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday', '72(0)<br>\n28(0)<br>\n3(0)<br>\n8(0)', '9250<br>\n298.80<br>\n64.03<br>\n256.11', 9868.94, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 9508.94),
(302, 'MNL019053', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nCompany Sick Leave<br>\nLeave w/o pay', '28(39)<br>\n48(0)<br>\n3(21)', '3793.06<br>\n4,706.94<br>\n(328.50)', 8171.5, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 7831.5),
(303, 'MNL019054', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '64(0)<br>\n8(0)', '9000<br>\n249.19', 9249.19, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8889.19),
(304, 'MNL019055', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday/Spl Holiday<br>\nCompany Vacation Leave (Taxable)', '79(3)<br>\n2(0)<br>\n6(0)<br>\n0(57)', '9148.62<br>\n21.34<br>\n960.42<br>\n101.38', 10231.76, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 9871.76),
(305, 'MNL019058', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '72(0)<br>\n8(0)', '12500<br>\n346.10', 12846.1, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '300<br>\n0.00<br>\n0.00<br>\n0.00', 300, 12546.1),
(306, 'MNL019059', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '72(0)<br>\n8(0)', '11500<br>\n318.41', 11818.41, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n340.00<br>\n0.00<br>\n0.00<br>\n0.00', 1078.32, 10740.09),
(307, 'MNL019060', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '72(0)<br>\n8(0)', '10250<br>\n283.80', 10533.8, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '241.98<br>\n380.00<br>\n0.00<br>\n0.00<br>\n0.00', 621.98, 9911.82),
(308, 'MNL019062', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '60(36)<br>\n8(0)<br>\n3(24)', '8646.98<br>\n249.19<br>\n353.02', 9249.19, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8889.19),
(309, 'MNL019063', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '71(40)<br>\n4(0)<br>\n4(0)<br>\n6(0)<br>\n8(0)<br>\n0(2', '8965.39<br>\n519.15<br>\n41.53<br>\n809.87<br>\n249.19', 10619.74, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 10259.74),
(310, 'MNL019064', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '79(35)<br>\n4(0)<br>\n4(0)<br>\n6(0)<br>\n8(0)<br>\n0(2', '8956.74<br>\n519.15<br>\n41.53<br>\n809.87<br>\n249.19', 10619.74, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 10259.74),
(311, 'MNL019065', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)', '63(12)<br>\n1(0)<br>\n6(0)<br>\n8(0)<br>\n8(48)', '8086.3<br>\n10.38<br>\n809.87<br>\n249.19<br>\n913.70', 10069.44, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 9709.44),
(312, 'MNL019066', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRest day ND<br>\nRestday', '80(0)<br>\n2(0)<br>\n1(0)<br>\n14(0)', '8250<br>\n19.04<br>\n12.37<br>\n1,732.23', 10013.64, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '320<br>\n0.00<br>\n0.00<br>\n0.00', 320, 9693.64),
(313, 'MNL019069', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday', '64(0)<br>\n8(0)', '9000<br>\n249.19', 9249.19, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8889.19),
(314, 'MNL019070', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '45000', 45000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n8,291.67', 8291.67, 36708.33),
(315, 'MNL019071', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '72(0)', '25000', 25000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n2,581.03', 2581.03, 22418.97),
(316, 'MNL019072', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday', '72(0)<br>\n36(0)<br>\n4(0)<br>\n8(0)', '10500<br>\n436.09<br>\n96.91<br>\n290.72', 11323.72, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 10943.72),
(317, 'MNL020073', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday<br>\nTardiness', '79(36)<br>\n0(36)<br>\n16(0)<br>\n0(24)', '8500<br>\n5.88<br>\n2,039.68<br>\n(39.23)', 10506.33, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 10166.33),
(318, 'MNL020074', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday/Spl Holiday<br>\nTardiness', '87(15)<br>\n6(0)<br>\n0(45)', '8500<br>\n882.55<br>\n(73.55)', 9309, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 8969),
(319, 'MNL020075', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday<br>\nSpecial Holiday', '80(0)<br>\n11(0)<br>\n8(0)', '8500<br>\n1,402.28<br>\n235.35', 10137.63, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 9797.63),
(320, 'MNL020076', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '80(0)', '8500', 8500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 8160),
(321, 'MNL020077', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours', '80(0)', '8500', 8500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 8160),
(322, 'MNL020078', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nRestday<br>\nSpecial Holiday<br>\nLeave w/o pay', '40(0)<br>\n4(0)<br>\n8(0)<br>\n32(0)', '8500<br>\n509.92<br>\n235.35<br>\n(3,137.96)', 6107.31, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n150.00<br>\n100.00<br>\n0.00', 590, 5517.31),
(323, 'MNL020079', '2020-02-B (2/12/2020-2/25/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLeave w/o pay<br>\nTardiness', '39(30)<br>\n8(0)<br>\n32(0)<br>\n0(30)', '8500<br>\n235.35<br>\n(3,137.96)<br>\n(49.03)', 5548.36, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n150.00<br>\n100.00<br>\n0.00', 590, 4958.36),
(324, 'MNL019002', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours', '72(0)', '60000', 60000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n12,251.67', 14051.67, 45948.33),
(325, 'MNL019003', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours', '72(0)', '34125', 34125, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n400.00<br>\n4,643.75', 6743.75, 27381.25),
(326, 'MNL019004', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n3(0)', '20422.92<br>\n70.68', 20493.6, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n612.68<br>\n100.00<br>\n1,087.85', 2600.53, 17893.07),
(327, 'MNL019005', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours', '72(0)', '60000', 60000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n12,251.67', 14051.67, 45948.33),
(328, 'MNL019007', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours', '72(0)', '86250', 86250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n19,189.17', 20989.17, 65260.83),
(329, 'MNL019008', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n16(0)<br>\n8(0)', '17150<br>\n3,165.66<br>\n1,582.83', 21898.49, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n680.00<br>\n514.50<br>\n100.00<br>\n1,453.', 3485.9, 18412.59),
(330, 'MNL019009', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '15800<br>\n437.47<br>\n2,916.48<br>\n1,458.24', 20612.19, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n640.00<br>\n474.00<br>\n100.00<br>\n1,412.', 3364.37, 17247.82),
(331, 'MNL019010', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)', '17500<br>\n1,615.14', 19115.14, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '700<br>\n525.00<br>\n100.00<br>\n1,058.03', 2383.03, 16732.11),
(332, 'MNL019011', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday', '90(0)<br>\n17(51)<br>\n10(0)', '13250<br>\n272.85<br>\n458.58', 13981.43, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '540<br>\n397.50<br>\n100.00<br>\n88.79', 1126.29, 12855.14),
(333, 'MNL019012', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\n', '68(3)<br>\n17(3)<br>\n6(0)<br>\n3(0)<br>\n10(0)<br>\n20', '12951.92<br>\n260.62<br>\n275.15<br>\n91.72<br>\n458.5', 18921.91, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n540.00<br>\n397.50<br>\n100.00<br>\n1,076.', 2852.7, 16069.21),
(334, 'MNL019014', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nL', '72(0)<br>\n4(0)<br>\n15(0)<br>\n6(0)<br>\n3(0)<br>\n8(0', '13400<br>\n772.96<br>\n231.89<br>\n278.26<br>\n92.75<b', 18857.07, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '540<br>\n402.00<br>\n100.00<br>\n1,063.01', 2105.01, 16752.06),
(335, 'MNL019015', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n31(30)<br>\n7(0)<br>\n3(30)<br>\n8(0)<br>\n1', '10250<br>\n372.49<br>\n248.33<br>\n82.78<br>\n283.80<b', 14075.43, 'SSS Loan<br>\nHDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '784.47<br>\n250.00<br>\n420.00<br>\n307.50<br>\n500.00', 2261.97, 11813.46),
(336, 'MNL019016', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday', '84(0)<br>\n5(0)<br>\n8(0)', '11250<br>\n64.89<br>\n311.49', 11626.38, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '460<br>\n337.50<br>\n100.00<br>\n0.00', 897.5, 10728.88),
(337, 'MNL019017', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '56(54)<br>\n16(0)<br>\n8(0)<br>\n1(6)<br>\n8(0)', '9626.27<br>\n1,799.72<br>\n899.86<br>\n123.73<br>\n(89', 11549.72, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '2000<br>\n400.00<br>\n292.50<br>\n100.00<br>\n0.00', 2792.5, 8757.22),
(338, 'MNL019018', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '16000<br>\n443.01<br>\n2,953.40<br>\n1,476.70', 20873.11, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '640<br>\n480.00<br>\n100.00<br>\n1,475.78', 2695.78, 18177.33),
(339, 'MNL019019', '2020-04-A (3/27/2020-4/12/2020)', 'Legal Holiday Pay<br>\nCompany Sick Leave', '8(0)<br>\n72(0)', '1038.3<br>\n11,250.00', 12288.3, 'HDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '250<br>\n460.00<br>\n337.50<br>\n100.00<br>\n0.00', 1147.5, 11140.8),
(340, 'MNL019020', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '73(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '12000<br>\n332.26<br>\n2,215.04<br>\n1,107.52', 15654.82, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '480<br>\n360.00<br>\n100.00<br>\n442.96', 1382.96, 14271.86),
(341, 'MNL019021', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '12900<br>\n357.18<br>\n2,381.18<br>\n1,190.59', 16828.95, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n520.00<br>\n387.00<br>\n100.00<br>\n456.06', 2201.38, 14627.57),
(342, 'MNL019022', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '49(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)<br>\n8(0)<br>\n8(0', '11008.08<br>\n373.79<br>\n2,491.92<br>\n1,245.96<br>\n', 17611.67, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '540<br>\n405.00<br>\n100.00<br>\n813.33', 1858.33, 15753.34),
(343, 'MNL019023', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n11(0)<br>\n2(0)<br>\n16(0)<br>\n8(0)', '13500<br>\n171.32<br>\n93.45<br>\n2,491.92<br>\n1,245.', 17502.65, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '540<br>\n405.00<br>\n100.00<br>\n791.53', 1836.53, 15666.12),
(344, 'MNL019025', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nCompany Vacation Leave (Taxable)', '73(56)<br>\n4(35)<br>\n8(0)<br>\n8(0)<br>\n1(4)', '8790.47<br>\n47.06<br>\n821.41<br>\n821.41<br>\n109.53', 10589.88, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n267.00<br>\n100.00<br>\n0.00', 727, 9862.88),
(345, 'MNL019027', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n7(0)<br>\n16(0)<br>\n8(0)', '10500<br>\n84.79<br>\n1,938.16<br>\n969.08', 13492.03, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '420<br>\n315.00<br>\n100.00<br>\n0.00', 835, 12657.03),
(346, 'MNL019028', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nCompany Sick Leave<br>\nCompany Vacation Leave (Taxable)', '76(57)<br>\n4(0)<br>\n8(0)<br>\n8(0)<br>\n1(3)', '8508.13<br>\n43.84<br>\n263.04<br>\n876.79<br>\n115.08', 9806.88, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n380.00<br>\n285.00<br>\n100.00<br>\n0.00', 1503.32, 8303.56),
(347, 'MNL019029', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '9250<br>\n256.11<br>\n1,707.42<br>\n853.71', 12067.24, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380.7<br>\n380.00<br>\n277.50<br>\n100.00<br>\n0.00', 1138.2, 10929.04),
(348, 'MNL019030', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n34(0)<br>\n7(0)<br>\n3(12)<br>\n7(42)<br>\n1', '12000<br>\n470.70<br>\n290.72<br>\n88.60<br>\n319.79<b', 16492.37, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '480<br>\n360.00<br>\n100.00<br>\n402.14', 1342.14, 15150.23),
(349, 'MNL019031', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n9(0)<br>\n2(0)<br>\n16(0)<br>\n8(0)', '14750<br>\n153.15<br>\n102.10<br>\n2,722.66<br>\n1,361', 19089.24, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '600<br>\n442.50<br>\n100.00<br>\n881.01', 2023.51, 17065.73),
(350, 'MNL019032', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)', '16537.5<br>\n1,526.30', 18063.8, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '738.32<br>\n660.00<br>\n496.12<br>\n100.00<br>\n0.00<b', 2855.98, 15207.82),
(351, 'MNL019033', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday Pay', '72(0)<br>\n9(0)<br>\n8(0)', '17750<br>\n184.30<br>\n1,638.21', 19572.51, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '720<br>\n532.50<br>\n100.00<br>\n1,144.00', 2496.5, 17076.01),
(352, 'MNL019034', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours', '72(0)', '39555', 39555, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n800.00<br>\n900.00<br>\n100.00<br>\n6,118.', 8656.49, 30898.51),
(353, 'MNL019035', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)', '12375<br>\n1,142.13', 13517.13, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n371.25<br>\n100.00<br>\n9.18', 980.43, 12536.7),
(354, 'MNL019036', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours', '72(0)', '9540', 9540, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n286.20<br>\n100.00<br>\n0.00', 766.2, 8773.8),
(355, 'MNL019037', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)', '24475.5<br>\n2,258.93', 26734.43, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '784.47<br>\n800.00<br>\n734.26<br>\n100.00<br>\n2,837.', 5256.27, 21478.16),
(356, 'MNL019038', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours', '72(0)', '27448.2', 27448.2, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n823.44<br>\n100.00<br>\n2,993.69', 4717.13, 22731.07),
(357, 'MNL019039', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday Pay<br>\nCompany Vacation Leave (Taxable)<br>\nPaternity Leave', '44(0)<br>\n8(0)<br>\n4(0)<br>\n24(0)', '13734.29<br>\n1,872.43<br>\n936.22<br>\n5,617.29', 22160.23, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '853.68<br>\n800.00<br>\n608.63<br>\n100.00<br>\n1,725.', 4087.71, 18072.52),
(358, 'MNL019040', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)', '25693.2<br>\n2,371.32', 28064.52, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1500<br>\n1,270.80<br>\n800.00<br>\n770.79<br>\n100.00', 7602.52, 20462),
(359, 'MNL019041', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours', '72(0)', '32319', 32319, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n3,671.42', 5471.42, 26847.58),
(360, 'MNL019042', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday', '88(0)<br>\n37(17)<br>\n4(0)<br>\n8(0)', '10000<br>\n430.12<br>\n92.29<br>\n276.88', 10799.29, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '400<br>\n300.00<br>\n100.00<br>\n0.00<br>\n0.00', 800, 9999.29),
(361, 'MNL019043', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nL', '64(0)<br>\n6(0)<br>\n59(0)<br>\n14(0)<br>\n6(0)<br>\n8(', '9750<br>\n843.62<br>\n663.65<br>\n472.43<br>\n134.98<b', 14834.22, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '400<br>\n292.50<br>\n100.00<br>\n308.34', 1100.84, 13733.38),
(362, 'MNL019044', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '53(14)<br>\n8(0)<br>\n16(0)<br>\n8(0)<br>\n6(46)<br>\n8', '7605.97<br>\n228.43<br>\n1,522.84<br>\n761.42<br>\n644', 10001.27, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n247.50<br>\n100.00<br>\n0.00', 687.5, 9313.77),
(363, 'MNL019045', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '75(0)<br>\n5(0)<br>\n8(0)<br>\n8(0)', '9500<br>\n54.80<br>\n876.79<br>\n876.79', 11308.38, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n285.00<br>\n100.00<br>\n0.00', 765, 10543.38),
(364, 'MNL019046', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nCompany Vacation Leave (Taxable)', '68(0)<br>\n3(0)<br>\n5(0)<br>\n8(0)<br>\n8(0)<br>\n16(0', '7746.42<br>\n411.00<br>\n54.80<br>\n263.04<br>\n876.79', 11105.63, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n285.00<br>\n100.00<br>\n0.00', 765, 10340.63),
(365, 'MNL019047', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nCompany Vacation Leave (Taxable)', '71(30)<br>\n31(0)<br>\n7(0)<br>\n16(0)<br>\n8(0)<br>\n0', '9693.76<br>\n348.70<br>\n236.21<br>\n1,799.72<br>\n899', 13034.49, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '400<br>\n292.50<br>\n100.00<br>\n0.00<br>\n0.00', 792.5, 12241.99),
(366, 'MNL019048', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nCompany Vacation Leave (Taxable)', '66(0)<br>\n3(0)<br>\n8(0)<br>\n8(0)<br>\n16(0)', '7664.88<br>\n32.53<br>\n260.27<br>\n867.56<br>\n1,735.', 10560.36, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1250<br>\n659.75<br>\n380.00<br>\n282.00<br>\n100.00<b', 2671.75, 7888.61),
(367, 'MNL019049', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '9250<br>\n256.11<br>\n1,707.42<br>\n853.71', 12067.24, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n277.50<br>\n100.00<br>\n0.00', 757.5, 11309.74),
(368, 'MNL019050', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '64(0)<br>\n55(0)<br>\n14(0)<br>\n6(0)<br>\n8(0)<br>\n16', '9250<br>\n586.93<br>\n448.20<br>\n128.06<br>\n256.11<b', 13230.43, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '369.16<br>\n380.00<br>\n277.50<br>\n100.00<br>\n0.00', 1126.66, 12103.77),
(369, 'MNL019051', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '63(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '9500<br>\n263.04<br>\n1,753.58<br>\n876.79', 12393.41, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n285.00<br>\n100.00<br>\n0.00', 765, 11628.41),
(370, 'MNL019052', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nSpecial Holiday ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n36(0)<br>\n4(0)<br>\n4(0)<br>\n8(0)<br>\n8(0', '9250<br>\n384.17<br>\n128.06<br>\n85.37<br>\n256.11<br', 11811.13, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n277.50<br>\n100.00<br>\n0.00', 757.5, 11053.63),
(371, 'MNL019053', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nCompany Vacation Leave (Taxable)', '71(15)<br>\n4(0)<br>\n6(0)<br>\n6(0)<br>\n8(0)<br>\n7(4', '7740.02<br>\n39.22<br>\n176.51<br>\n588.37<br>\n784.49', 10088.59, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 9393.59),
(372, 'MNL019054', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n9(0)<br>\n2(0)<br>\n16(0)<br>\n8(0)', '9000<br>\n93.45<br>\n62.30<br>\n1,661.28<br>\n830.64', 11647.67, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 10917.67),
(373, 'MNL019055', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '77(0)<br>\n2(0)<br>\n5(0)<br>\n10(0)<br>\n8(0)<br>\n16(', '9250<br>\n266.78<br>\n53.36<br>\n1,387.28<br>\n256.11<', 13774.66, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n277.50<br>\n100.00<br>\n103.43', 860.93, 12913.73),
(374, 'MNL019058', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '12500<br>\n346.10<br>\n2,307.34<br>\n1,153.67', 16307.11, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '500<br>\n375.00<br>\n100.00<br>\n566.42', 1541.42, 14765.69),
(375, 'MNL019059', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '11500<br>\n318.41<br>\n2,122.76<br>\n1,061.38', 15002.55, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n460.00<br>\n345.00<br>\n100.00<br>\n319.51', 1962.83, 13039.72),
(376, 'MNL019060', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '73(0)<br>\n16(0)<br>\n8(0)', '10250<br>\n1,892.02<br>\n946.01', 13088.03, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '241.98<br>\n420.00<br>\n307.50<br>\n100.00<br>\n0.00', 1069.48, 12018.55),
(377, 'MNL019062', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nCompany Vacation Leave (Taxable)', '71(4)<br>\n9(0)<br>\n1(53)<br>\n15(53)<br>\n8(0)<br>\n0', '8903.09<br>\n93.45<br>\n58.66<br>\n1,649.17<br>\n830.6', 11631.92, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 10901.92),
(378, 'MNL019063', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '75(0)<br>\n3(0)<br>\n5(0)<br>\n8(0)<br>\n8(0)', '9000<br>\n389.36<br>\n51.92<br>\n830.64<br>\n830.64', 11102.56, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 10372.56),
(379, 'MNL019064', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nSpecial Holiday', '89(0)<br>\n4(0)<br>\n5(0)<br>\n8(0)', '9000<br>\n519.15<br>\n51.92<br>\n249.19', 9820.26, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 9090.26),
(380, 'MNL019065', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nSpecial Holiday<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '45(0)<br>\n1(0)<br>\n3(0)<br>\n8(0)<br>\n15(50)<br>\n29', '7356.03<br>\n129.79<br>\n31.15<br>\n249.19<br>\n1,643.', 6906.43, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 6176.43),
(381, 'MNL019066', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nCompany Vacation Leave (Taxable)', '47(15)<br>\n8(0)<br>\n16(0)<br>\n8(0)<br>\n20(45)', '6275.07<br>\n228.43<br>\n1,522.84<br>\n761.42<br>\n1,9', 10762.69, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n247.50<br>\n100.00<br>\n0.00', 687.5, 10075.19),
(382, 'MNL019069', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '9000<br>\n249.19<br>\n1,661.28<br>\n830.64', 11741.11, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 11011.11),
(383, 'MNL019070', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLegal Holiday Pay', '72(0)<br>\n8(0)', '45000<br>\n4,153.21', 49153.21, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n900.00<br>\n100.00<br>\n8,997.63', 10797.63, 38355.58),
(384, 'MNL019071', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nLeave w/o pay', '40(0)<br>\n32(0)', '25000<br>\n(9,229.36)', 15770.64, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '800<br>\n750.00<br>\n100.00<br>\n324.13', 1974.13, 13796.51),
(385, 'MNL019072', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday ND<br>\nSpecial Holiday ND<br>\nRestday<br>\nSpecial Holiday<br>\nSpecial Holiday excss 8hrs<br>\nLegal ', '72(0)<br>\n36(0)<br>\n8(0)<br>\n4(0)<br>\n4(0)<br>\n8(0', '10500<br>\n436.09<br>\n290.72<br>\n96.91<br>\n629.90<b', 16153.36, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '420<br>\n315.00<br>\n100.00<br>\n563.67', 1398.67, 14754.69),
(386, 'MNL020073', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nLeave w/o pay', '67(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)<br>\n8(0)', '8500<br>\n235.35<br>\n1,568.98<br>\n784.49<br>\n(784.4', 10304.33, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 9609.33),
(387, 'MNL020074', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nLeave w/o pay', '67(0)<br>\n8(0)<br>\n14(0)<br>\n8(0)<br>\n8(0)', '8500<br>\n235.35<br>\n1,372.86<br>\n784.49<br>\n(784.4', 10108.21, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 9413.21),
(388, 'MNL020075', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '82(0)<br>\n1(0)<br>\n8(0)<br>\n8(0)', '8500<br>\n122.58<br>\n784.49<br>\n784.49', 10191.56, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 9496.56),
(389, 'MNL020076', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)', '82(0)<br>\n8(0)<br>\n8(0)', '8500<br>\n235.35<br>\n784.49', 9519.84, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 8824.84),
(390, 'MNL020077', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '75(0)<br>\n8(0)<br>\n16(0)<br>\n8(0)', '8500<br>\n235.35<br>\n1,568.98<br>\n784.49', 11088.82, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 10393.82),
(391, 'MNL020079', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay<br>\nLeave w/o pay', '65(0)<br>\n8(0)<br>\n15(0)<br>\n8(0)<br>\n8(0)', '8500<br>\n235.35<br>\n1,470.92<br>\n784.49<br>\n(784.4', 10206.27, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n255.00<br>\n100.00<br>\n0.00', 695, 9511.27),
(392, 'MNL020080', '2020-04-A (3/27/2020-4/12/2020)', 'Regular Hours<br>\nSpecial Holiday<br>\nLegal Holiday (worked)<br>\nLegal Holiday Pay', '73(0)<br>\n7(18)<br>\n16(0)<br>\n8(0)', '9000<br>\n227.38<br>\n1,661.28<br>\n830.64', 11719.3, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n270.00<br>\n100.00<br>\n0.00', 730, 10989.3),
(393, 'MNL019002', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '60000', 60000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n12,791.66', 12791.66, 47208.34),
(394, 'MNL019003', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '34125', 34125, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n5,093.75', 5093.75, 29031.25),
(395, 'MNL019004', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n6(0)', '20422.92<br>\n141.37', 20564.29, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n1,404.53', 1404.53, 19159.76),
(396, 'MNL019005', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '60000', 60000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n12,791.66', 12791.66, 47208.34),
(397, 'MNL019007', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '86250', 86250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n19,729.16', 19729.16, 66520.84),
(398, 'MNL019008', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '79(25)<br>\n0(35)', '17034.58<br>\n115.42', 17150, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n120.00<br>\n0.00<br>\n0.00<br>\n657.05', 1515.37, 15634.63),
(399, 'MNL019009', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '15800', 15800, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n160.00<br>\n0.00<br>\n0.00<br>\n595.59', 1493.91, 14306.09),
(400, 'MNL019010', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '17500', 17500, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '20<br>\n100.00<br>\n0.00<br>\n0.00<br>\n980.00', 1100, 16400),
(401, 'MNL019011', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '87(49)<br>\n16(49)<br>\n2(11)', '12916.26<br>\n257.06<br>\n333.74', 13507.06, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '260<br>\n0.00<br>\n0.00<br>\n149.41', 409.41, 13097.65),
(402, 'MNL019012', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '79(13)<br>\n14(13)<br>\n0(47)', '13130.26<br>\n217.32<br>\n119.74', 13467.32, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n260.00<br>\n0.00<br>\n0.00<br>\n141.47', 1139.79, 12327.53),
(403, 'MNL019014', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND', '80(0)<br>\n3(0)<br>\n30(0)', '13400<br>\n579.72<br>\n463.77', 14443.49, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '260<br>\n0.00<br>\n0.00<br>\n336.70', 596.7, 13846.79),
(404, 'MNL019015', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n35(0)', '10250<br>\n413.88', 10663.88, 'SSS Loan<br>\nHDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '784.47<br>\n250.00<br>\n380.00<br>\n0.00<br>\n0.00<br>', 1414.47, 9249.41),
(405, 'MNL019016', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nLeave w/o pay', '78(0)<br>\n1(0)<br>\n7(0)<br>\n8(0)', '11250<br>\n162.23<br>\n90.85<br>\n(1,038.30)', 10464.78, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 10124.78),
(406, 'MNL019017', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '82(59)<br>\n1(1)', '9635.65<br>\n114.35', 9750, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '2000<br>\n380.00<br>\n0.00<br>\n0.00<br>\n0.00', 2380, 7370),
(407, 'MNL019018', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '16000', 16000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '160<br>\n0.00<br>\n0.00<br>\n622.84', 782.84, 15217.16),
(408, 'MNL019019', '2020-04-B (4/13/2020-4/27/2020)', 'Company Sick Leave<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '24(0)<br>\n6(38)<br>\n49(22)', '3114.9<br>\n860.92<br>\n(6,407.18)', -2431.36, 'HDMF MP2 CONTRIBUTION<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '250<br>\n340.00<br>\n0.00<br>\n0.00<br>\n0.00', 590, -3021.36),
(409, 'MNL019020', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRestday', '76(0)<br>\n3(0)<br>\n13(0)', '12000<br>\n519.15<br>\n2,339.64', 14858.79, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '320<br>\n0.00<br>\n0.00<br>\n407.76', 727.76, 14131.03),
(410, 'MNL019021', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '12900', 12900, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n280.00<br>\n0.00<br>\n0.00<br>\n0.00', 1018.32, 11881.68),
(411, 'MNL019022', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n6(0)', '13500<br>\n93.45', 13593.45, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '260<br>\n0.00<br>\n0.00<br>\n166.69', 426.69, 13166.76),
(412, 'MNL019023', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n10(0)', '13500<br>\n155.74', 13655.74, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '260<br>\n0.00<br>\n0.00<br>\n179.15', 439.15, 13216.59),
(413, 'MNL019025', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '75(56)<br>\n6(14)<br>\n1(4)<br>\n8(0)', '8790.47<br>\n64.01<br>\n109.53<br>\n(821.41)', 8142.6, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 7782.6),
(414, 'MNL019027', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND', '80(0)<br>\n2(0)<br>\n30(0)', '10500<br>\n302.84<br>\n363.40', 11166.24, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 10786.24),
(415, 'MNL019028', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '79(0)<br>\n1(0)<br>\n5(0)<br>\n8(0)', '8623.21<br>\n137.00<br>\n54.80<br>\n876.79', 9691.8, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n380.00<br>\n0.00<br>\n0.00<br>\n0.00', 1118.32, 8573.48),
(416, 'MNL019029', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '9250', 9250, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380.7<br>\n360.00<br>\n0.00<br>\n0.00<br>\n0.00', 740.7, 8509.3),
(417, 'MNL019030', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n25(0)', '12000<br>\n346.10', 12346.1, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '320<br>\n0.00<br>\n0.00<br>\n0.00', 320, 12026.1),
(418, 'MNL019031', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n10(0)', '14750<br>\n170.17', 14920.17, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '200<br>\n0.00<br>\n0.00<br>\n235.71', 435.71, 14484.46),
(419, 'MNL019032', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '16537.5', 16537.5, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '738.32<br>\n140.00<br>\n0.00<br>\n0.00<br>\n0.00<br>\n7', 1657.82, 14879.68),
(420, 'MNL019033', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n10(0)', '17750<br>\n204.78', 17954.78, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '80<br>\n0.00<br>\n0.00<br>\n1,074.96', 1154.96, 16799.82),
(421, 'MNL019034', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '39555', 39555, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n0.00<br>\n0.00<br>\n0.00<br>\n6,658.16', 7396.48, 32158.52),
(422, 'MNL019035', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '12375', 12375, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '300<br>\n0.00<br>\n0.00<br>\n0.00', 300, 12075),
(423, 'MNL019036', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '9540', 9540, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9160),
(424, 'MNL019037', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '24475.5', 24475.5, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '784.47<br>\n0.00<br>\n0.00<br>\n0.00<br>\n2,681.38', 3465.85, 21009.65),
(425, 'MNL019038', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '27448.2', 27448.2, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n3,424.55', 3424.55, 24023.65),
(426, 'MNL019039', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '20287.8', 20287.8, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '853.68<br>\n0.00<br>\n0.00<br>\n0.00<br>\n1,634.45', 2488.13, 17799.67),
(427, 'MNL019040', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '25693.2', 25693.2, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1500<br>\n1,270.80<br>\n0.00<br>\n0.00<br>\n0.00<br>\n2', 5756.6, 19936.6),
(428, 'MNL019041', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '32319', 32319, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n4,121.41', 4121.41, 28197.59),
(429, 'MNL019042', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '88(0)<br>\n41(30)', '10000<br>\n478.77', 10478.77, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '400<br>\n0.00<br>\n0.00<br>\n0.00<br>\n0.00', 400, 10078.77),
(430, 'MNL019043', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n52(0)', '9750<br>\n584.91', 10334.91, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9954.91);
INSERT INTO `payrollhistory` (`idpay`, `employee_id`, `payroll_period`, `income_desc`, `income_hrs`, `income_amount`, `gross_amount`, `deductions_desc`, `deductions_amount`, `deductions_total`, `net_amount`) VALUES
(431, 'MNL019044', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '72(8)<br>\n3(0)<br>\n4(52)', '7786.8<br>\n28.55<br>\n463.20', 8278.55, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '320<br>\n0.00<br>\n0.00<br>\n0.00', 320, 7958.55),
(432, 'MNL019045', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '77(0)<br>\n7(0)<br>\n8(0)', '8623.21<br>\n76.72<br>\n876.79', 9576.72, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9196.72),
(433, 'MNL019046', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '78(0)<br>\n1(0)<br>\n8(0)<br>\n4(14)<br>\n3(46)', '9036.04<br>\n137.00<br>\n87.68<br>\n463.96<br>\n(412.8', 9311.86, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 8931.86),
(434, 'MNL019047', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday', '80(0)<br>\n35(0)<br>\n3(0)', '9750<br>\n393.69<br>\n438.68', 10582.37, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nPERAA<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00<br>\n0.00', 380, 10202.37),
(435, 'MNL019048', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '68(0)<br>\n6(0)<br>\n1(26)<br>\n14(34)', '9244.57<br>\n65.07<br>\n155.43<br>\n(1,579.68)', 7885.39, 'SSS Loan<br>\nHDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '1250<br>\n659.75<br>\n380.00<br>\n0.00<br>\n0.00<br>\n0', 2289.75, 5595.64),
(436, 'MNL019049', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nCompany Vacation Leave (Taxable)', '78(34)<br>\n1(26)', '9097.05<br>\n152.95', 9250, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8890),
(437, 'MNL019050', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n70(0)', '9250<br>\n747.00', 9997, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '369.16<br>\n360.00<br>\n0.00<br>\n0.00<br>\n0.00', 729.16, 9267.84),
(438, 'MNL019051', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '71(23)<br>\n2(0)<br>\n6(0)<br>\n6(37)', '8774.83<br>\n274.00<br>\n65.76<br>\n725.17', 9839.76, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n0.00', 380, 9459.76),
(439, 'MNL019052', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nLegal Holiday (worked)', '80(0)<br>\n40(0)<br>\n8(0)', '9250<br>\n426.86<br>\n853.71', 10530.57, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 10170.57),
(440, 'MNL019053', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)<br>\nLeave w/o pay', '42(23)<br>\n3(0)<br>\n4(37)<br>\n32(0)', '8047.28<br>\n29.42<br>\n452.72<br>\n(3,137.96)', 5391.46, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 5051.46),
(441, 'MNL019054', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND', '80(0)<br>\n9(51)', '9000<br>\n102.28', 9102.28, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8742.28),
(442, 'MNL019055', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday', '86(0)<br>\n1(0)<br>\n8(0)<br>\n10(0)', '9250<br>\n133.39<br>\n85.37<br>\n1,387.28', 10856.04, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 10496.04),
(443, 'MNL019058', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '12500', 12500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '300<br>\n0.00<br>\n0.00<br>\n(60.00)', 240, 12260),
(444, 'MNL019059', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '11500', 11500, 'SSS Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '738.32<br>\n340.00<br>\n0.00<br>\n0.00<br>\n0.00', 1078.32, 10421.68),
(445, 'MNL019060', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nRestday', '84(0)<br>\n1(0)<br>\n5(0)', '10250<br>\n11.83<br>\n768.63', 11030.46, 'HDMF Loan<br>\nSSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '241.98<br>\n380.00<br>\n0.00<br>\n0.00<br>\n0.00', 621.98, 10408.48),
(446, 'MNL019062', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Day ND<br>\nCompany Vacation Leave (Taxable)', '79(16)<br>\n9(16)<br>\n0(44)', '8923.86<br>\n96.22<br>\n76.14', 9096.22, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8736.22),
(447, 'MNL019063', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday', '85(0)<br>\n1(0)<br>\n8(0)<br>\n5(0)', '9000<br>\n129.79<br>\n83.06<br>\n674.90', 9887.75, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 9527.75),
(448, 'MNL019064', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday', '85(0)<br>\n4(0)<br>\n8(0)<br>\n5(0)', '9000<br>\n519.15<br>\n83.06<br>\n674.90', 10277.11, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 9917.11),
(449, 'MNL019065', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '66(15)<br>\n2(0)<br>\n4(0)<br>\n4(0)<br>\n10(45)', '7883.83<br>\n259.58<br>\n41.53<br>\n539.92<br>\n1,116.', 9841.03, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 9481.03),
(450, 'MNL019066', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRest day ND<br>\nRestday<br>\nCompany Vacation Leave (Taxable)', '74(46)<br>\n1(0)<br>\n21(0)<br>\n2(14)', '8037.43<br>\n12.37<br>\n2,598.35<br>\n212.57', 10860.72, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '320<br>\n0.00<br>\n0.00<br>\n0.00', 320, 10540.72),
(451, 'MNL019069', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '80(0)', '9000', 9000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8640),
(452, 'MNL019070', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '45000', 45000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n8,291.67', 8291.67, 36708.33),
(453, 'MNL019071', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '88(0)', '25000', 25000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '0<br>\n0.00<br>\n0.00<br>\n2,581.03', 2581.03, 22418.97),
(454, 'MNL019072', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime<br>\nRegular Day ND<br>\nRest day ND<br>\nRestday', '80(0)<br>\n7(0)<br>\n40(0)<br>\n3(30)<br>\n19(0)', '10500<br>\n1,059.93<br>\n484.54<br>\n55.11<br>\n2,992.', 15091.61, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '380<br>\n0.00<br>\n0.00<br>\n442.32', 822.32, 14269.29),
(455, 'MNL020073', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '85(0)', '8500', 8500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 8160),
(456, 'MNL020074', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '77(0)', '8500', 8500, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 8160),
(457, 'MNL020075', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRestday', '77(0)<br>\n5(0)', '8500<br>\n637.40', 9137.4, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 8797.4),
(458, 'MNL020076', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime', '85(0)<br>\n1(0)', '8500<br>\n122.58', 8622.58, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 8282.58),
(459, 'MNL020077', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRegular Overtime', '85(0)<br>\n1(0)', '8500<br>\n122.58', 8622.58, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 8282.58),
(460, 'MNL020078', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nRestday<br>\nLeave w/o pay', '47(0)<br>\n5(0)<br>\n24(0)', '8500<br>\n637.40<br>\n(2,353.47)', 6783.93, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n150.00<br>\n100.00<br>\n0.00', 590, 6193.93),
(461, 'MNL020079', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours<br>\nLeave w/o pay', '77(0)<br>\n8(0)', '8500<br>\n(784.49)', 7715.51, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '340<br>\n0.00<br>\n0.00<br>\n0.00', 340, 7375.51),
(462, 'MNL020080', '2020-04-B (4/13/2020-4/27/2020)', 'Regular Hours', '76(0)', '9000', 9000, 'SSS Contribution<br>\nPhilHealth<br>\nPagIbig<br>\nWithholding Tax', '360<br>\n0.00<br>\n0.00<br>\n0.00', 360, 8640);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

-- CREATE TABLE `position` (
--   `id` int(11) NOT NULL,
--   `pos_description` varchar(150) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `pos_description`) VALUES
(1, 'Accountant'),
(2, 'Accounting Manager'),
(3, 'Accounting Specialist'),
(4, 'Admin Assistant'),
(5, 'Asst. Specs Writer/E'),
(6, 'Client Services Senior Associate'),
(7, 'Client Services Associate'),
(8, 'Client Services Associate - Voice'),
(9, 'Cost Estimator'),
(10, 'Deputy Project Manager'),
(11, 'EA to VP of Operation'),
(12, 'IT Administrator'),
(13, 'IT Support Specialist'),
(14, 'Loan Specialist'),
(15, 'Operation Support Specialist'),
(16, 'Project Architect'),
(17, 'QA/QC Manager'),
(18, 'Regulatory Compliance Manager'),
(19, 'Client Services Associate - Reservations'),
(20, 'Senior Civil Engineer'),
(21, 'Team Leader Civil Engineer'),
(22, 'Junior Civil Engineer'),
(23, 'Operations Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
-- ALTER TABLE `admin`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `department`
-- --
-- ALTER TABLE `department`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `employees`
-- --
-- ALTER TABLE `employees`
--   ADD PRIMARY KEY (`idno`);

-- --
-- -- Indexes for table `overtime`
-- --
-- ALTER TABLE `overtime`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `payrollhistory`
-- --
-- ALTER TABLE `payrollhistory`
--   ADD PRIMARY KEY (`idpay`);

-- --
-- -- Indexes for table `position`
-- --
-- ALTER TABLE `position`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `admin`
-- --
-- ALTER TABLE `admin`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
-- --
-- -- AUTO_INCREMENT for table `department`
-- --
-- ALTER TABLE `department`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
-- --
-- -- AUTO_INCREMENT for table `employees`
-- --
-- ALTER TABLE `employees`
--   MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
-- --
-- -- AUTO_INCREMENT for table `overtime`
-- --
-- ALTER TABLE `overtime`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
-- --
-- -- AUTO_INCREMENT for table `payrollhistory`
-- --
-- ALTER TABLE `payrollhistory`
--   MODIFY `idpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;
-- --
-- -- AUTO_INCREMENT for table `position`
-- --
-- ALTER TABLE `position`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
