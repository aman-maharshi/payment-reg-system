-- phpMyAdmin SQL Dump
-- version 2.7.0-beta1
-- http://www.phpmyadmin.net
-- 
-- Generation Time: Feb 18, 2020 at 12:28 PM
-- Server version: 5.5.52
-- PHP Version: 5.4.16
-- 
-- 
--	TABLES:
--
-- 1. budget_approved
-- 2. section
-- 3. ts_registration
-- 4. ts_wo_payments
-- 5. ts_wo_payments_forecast
-- 6. ts_wo_progress
-- 7. ts_wo_registration 
-- 8. users_login1
-- 9. usi

-- --------------------------------------------------------

-- 
-- Table structure for table `budget_approved`
-- 

CREATE TABLE `budget_approved` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_year` varchar(255) DEFAULT NULL,
  `usi` int(11) DEFAULT NULL,
  `sub_usi` varchar(255) DEFAULT NULL,
  `budget_code` int(18) DEFAULT NULL,
  `description_of_item` varchar(255) DEFAULT NULL,
  `budget_year_re` varchar(255) DEFAULT NULL,
  `budget_year_be` varchar(255) DEFAULT NULL,
  `sum_re` decimal(18,2) DEFAULT NULL,
  `sum_be` decimal(18,2) DEFAULT NULL,
  `sum_total` decimal(18,2) DEFAULT NULL,
  `budget_head` varchar(255) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `efficitive_date` date DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `auditdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

-- 
-- Dumping data for table `budget_approved`
-- 

INSERT INTO `budget_approved` VALUES (1, '2018-19', NULL, '', 18503313, 'Procurement of Survey Instruments', NULL, NULL, 700000.00, 0.00, 700000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:18:40');
INSERT INTO `budget_approved` VALUES (2, '2018-19', NULL, '', 18503314, 'Procurement of Hydrostudy apparatus & Hydro Investigation studies', NULL, NULL, 1850000.00, 400000.00, 2250000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (3, '2018-19', NULL, '', 18503315, 'consultancy for Intellectual & QA Services', NULL, NULL, 2000000.00, 3153000.00, 5153000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (4, '2018-19', NULL, '', 18503316, 'Consultancy service for Quarry qualification, Water, Power System, Tophography, Hydrology,', NULL, NULL, 1200000.00, 600000.00, 1800000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (5, '2018-19', NULL, '', 18503317, 'Petty Contracts', NULL, NULL, 304000.00, 196000.00, 500000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (6, '2018-19', NULL, '', 18503318, 'Water Chemistry Tests', NULL, NULL, 993000.00, 100000.00, 1093000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (7, '2018-19', NULL, '', 18503319, 'Clearing of Bushes', NULL, NULL, 700000.00, 152000.00, 852000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (8, '2018-19', NULL, '', 18503320, 'Clearing of Bushes (New)', NULL, NULL, 0.00, 300000.00, 300000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (9, '2018-19', NULL, '', 18503321, 'Deforestation Deposit to Forest Department', NULL, NULL, 20000000.00, 2000000.00, 22000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (10, '2018-19', NULL, '', 18503322, 'Lease to Quarry', NULL, NULL, 500000.00, 500000.00, 1000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (11, '2018-19', NULL, '', 18503323, 'Development of Contractors area Infrastructure including area lighting / Roads / Drainage', NULL, NULL, 8000000.00, 12000000.00, 20000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (12, '2018-19', NULL, '', 18503324, 'Seperation Fencing between KGS & Kaiga-5&6', NULL, NULL, 20400000.00, 6000000.00, 26400000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (13, '2018-19', NULL, '', 18503325, 'Straightening of Kaiga Stream', NULL, NULL, 75000000.00, 75000000.00, 150000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (14, '2018-19', NULL, '', 18503326, 'Construction of IRB, Construction of Time Office, supply / Istallation / Commissioning of Flap &', NULL, NULL, 31000000.00, 9300000.00, 40300000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (15, '2018-19', NULL, '', 18503327, 'Consultancy service for Pre-Project Infra-Structure', NULL, NULL, 800000.00, 3000000.00, 3800000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (16, '2018-19', NULL, '', 18503328, 'Consultancy for Infrastructure buildings', NULL, NULL, 2000000.00, 4000000.00, 6000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (17, '2018-19', NULL, '', 18503329, 'Construction Power Supply system and Area Lighting', NULL, NULL, 0.00, 150000000.00, 150000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (18, '2018-19', NULL, '', 18503330, 'Alternate Power Supply to STF, SWMF and IRB', NULL, NULL, 3500000.00, 1000000.00, 4500000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (19, '2018-19', NULL, '', 18503331, 'Hiring of Security Services', NULL, NULL, 7600000.00, 11450000.00, 19050000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (20, '2018-19', NULL, '', 18503332, 'Misc. Expenditure for services (Public hearing)', NULL, NULL, 8000000.00, 0.00, 8000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (21, '2018-19', NULL, '', 18503333, 'Main Plant Package Mobilisation', NULL, NULL, 0.00, 150000000.00, 150000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (22, '2018-19', NULL, '', 18503334, 'Boundary wall for Kaiga-1 to 6', NULL, NULL, 0.00, 160000000.00, 160000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (23, '2018-19', NULL, '', 18503335, 'Quarrying & Aggrigate Manufacturing including exploration', NULL, NULL, 0.00, 500000000.00, 500000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (24, '2018-19', NULL, '', 18503336, 'Exacavation Package', NULL, NULL, 0.00, 1137600000.00, 1137600000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (25, '2018-19', NULL, '', 18503337, 'Consultancy for Township', NULL, NULL, 4075000.00, 11200000.00, 15275000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (26, '2018-19', NULL, '', 18503338, 'Project Director Pffice Building', NULL, NULL, 0.00, 162000000.00, 162000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (27, '2018-19', NULL, '', 18503339, 'Construction of Kaiga-5&6 Canteen Building', NULL, NULL, 0.00, 24000000.00, 24000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (28, '2018-19', NULL, '', 18503340, 'Township Construction (Phase-1)', NULL, NULL, 0.00, 35000000.00, 35000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (29, '2018-19', NULL, '', 18503341, 'Repair & Renovation of Job Shack', NULL, NULL, 3750000.00, 2500000.00, 6250000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (30, '2018-19', NULL, '', 18503342, 'Procurement of Furnitures', NULL, NULL, 3350000.00, 2400000.00, 5750000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (31, '2018-19', NULL, '', 18503343, 'Office Equipments + Computers, etc.', NULL, NULL, 1250000.00, 1250000.00, 2500000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (32, '2018-19', NULL, '', 18503344, 'Reprographic Machines', NULL, NULL, 0.00, 1930000.00, 1930000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (33, '2018-19', NULL, '', 18503345, 'Procurement of Spilt AC''s & Refrigerator', NULL, NULL, 655000.00, 0.00, 655000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (34, '2018-19', NULL, '', 18503346, 'Procurement & Miscellaneous Works', NULL, NULL, 1000000.00, 1600000.00, 2600000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (35, '2018-19', NULL, '', 18503347, 'NDP (Neighbourhood Development) - Bridge across Kali River and Development of Bare Road', NULL, NULL, 0.00, 50000000.00, 50000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (36, '2019-20', NULL, '', 18503313, 'Procurement of Survey Instruments', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-06 09:34:44');
INSERT INTO `budget_approved` VALUES (37, '2019-20', NULL, '', 18503314, 'Procurement of Hydrostudy apparatus & Hydro Investigation studies', NULL, NULL, 0.00, 400000.00, 400000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (38, '2019-20', NULL, '', 18503315, 'consultancy for Intellectual & QA Services', NULL, NULL, 0.00, 3153000.00, 3153000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (39, '2019-20', NULL, '', 18503316, 'Consultancy service for Quarry qualification, Water, Power System, Tophography, Hydrology,', NULL, NULL, 0.00, 600000.00, 600000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (40, '2019-20', NULL, '', 18503317, 'Petty Contracts', NULL, NULL, 0.00, 196000.00, 196000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (41, '2019-20', NULL, '', 18503318, 'Water Chemistry Tests', NULL, NULL, 0.00, 100000.00, 100000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (42, '2019-20', NULL, '', 18503319, 'Clearing of Bushes', NULL, NULL, 0.00, 152000.00, 152000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (43, '2019-20', NULL, '', 18503320, 'Clearing of Bushes (New)', NULL, NULL, 0.00, 300000.00, 300000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (44, '2019-20', NULL, '', 18503321, 'Deforestation Deposit to Forest Department', NULL, NULL, 0.00, 2000000.00, 2000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (45, '2019-20', NULL, '', 18503322, 'Lease to Quarry', NULL, NULL, 0.00, 500000.00, 500000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (46, '2019-20', NULL, '', 18503323, 'Development of Contractors area Infrastructure including area lighting / Roads / Drainage', NULL, NULL, 0.00, 12000000.00, 12000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (47, '2019-20', NULL, '', 18503324, 'Seperation Fencing between KGS & Kaiga-5&6', NULL, NULL, 0.00, 6000000.00, 6000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (48, '2019-20', NULL, '', 18503325, 'Straightening of Kaiga Stream', NULL, NULL, 0.00, 75000000.00, 75000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (49, '2019-20', NULL, '', 18503326, 'Construction of IRB, Construction of Time Office, supply / Istallation / Commissioning of Flap &', NULL, NULL, 0.00, 9300000.00, 9300000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (50, '2019-20', NULL, '', 18503327, 'Consultancy service for Pre-Project Infra-Structure', NULL, NULL, 0.00, 3000000.00, 3000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (51, '2019-20', NULL, '', 18503328, 'Consultancy for Infrastructure buildings', NULL, NULL, 0.00, 4000000.00, 4000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (52, '2019-20', NULL, '', 18503329, 'Construction Power Supply system and Area Lighting', NULL, NULL, 0.00, 150000000.00, 150000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (53, '2019-20', NULL, '', 18503330, 'Alternate Power Supply to STF, SWMF and IRB', NULL, NULL, 0.00, 1000000.00, 1000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (54, '2019-20', NULL, '', 18503331, 'Hiring of Security Services', NULL, NULL, 0.00, 11450000.00, 11450000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (55, '2019-20', NULL, '', 18503332, 'Misc. Expenditure for services (Public hearing)', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-06 09:34:44');
INSERT INTO `budget_approved` VALUES (56, '2019-20', NULL, '', 18503333, 'Main Plant Package Mobilisation', NULL, NULL, 0.00, 150000000.00, 150000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (57, '2019-20', NULL, '', 18503334, 'Boundary wall for Kaiga-1 to 6', NULL, NULL, 0.00, 160000000.00, 160000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (58, '2019-20', NULL, '', 18503335, 'Quarrying & Aggrigate Manufacturing including exploration', NULL, NULL, 0.00, 500000000.00, 500000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (59, '2019-20', NULL, '', 18503336, 'Exacavatuib Package', NULL, NULL, 0.00, 1137600000.00, 1137600000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (60, '2019-20', NULL, '', 18503337, 'Consultancy for Township', NULL, NULL, 0.00, 11200000.00, 11200000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (61, '2019-20', NULL, '', 18503338, 'Project Director Pffice Building', NULL, NULL, 0.00, 162000000.00, 162000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (62, '2019-20', NULL, '', 18503339, 'Construction of Kaiga-5&6 Canteen Building', NULL, NULL, 0.00, 24000000.00, 24000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (63, '2019-20', NULL, '', 18503340, 'Township Construction (Phase-1)', NULL, NULL, 0.00, 35000000.00, 35000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (64, '2019-20', NULL, '', 18503341, 'Repair & Renovation of Job Shack', NULL, NULL, 0.00, 2500000.00, 2500000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (65, '2019-20', NULL, '', 18503342, 'Procurement of Furnitures', NULL, NULL, 0.00, 2400000.00, 2400000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (66, '2019-20', NULL, '', 18503343, 'Office Equipments + Computers, etc.', NULL, NULL, 0.00, 1250000.00, 1250000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (67, '2019-20', NULL, '', 18503344, 'Reprographic Machines', NULL, NULL, 0.00, 1930000.00, 1930000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (68, '2019-20', NULL, '', 18503345, 'Procurement of Spilt AC''s & Refrigerator', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-06 09:34:45');
INSERT INTO `budget_approved` VALUES (69, '2019-20', NULL, '', 18503346, 'Procurement & Miscellaneous Works', NULL, NULL, 0.00, 1600000.00, 1600000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (70, '2019-20', NULL, '', 18503347, 'NDP (Neighbourhood Development) - Bridge across Kali River and Development of Bare Road', NULL, NULL, 0.00, 50000000.00, 50000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (71, '', NULL, NULL, 18503303, 'Design basis flood and safe grade elevation study', NULL, NULL, 5500000.00, 500000.00, 6000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (72, NULL, NULL, NULL, 18503304, 'Environment Impact Studies', NULL, NULL, 5500000.00, 2500000.00, 8000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (73, NULL, NULL, NULL, 18503306, 'Installation of MEQ station', NULL, NULL, 24000000.00, 5000000.00, 29000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (74, NULL, NULL, NULL, 18503307, 'Hiring of Manpower', NULL, NULL, 3200000.00, 1950000.00, 5150000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (75, NULL, NULL, NULL, 18503308, 'Hiring of Manpower(new)', NULL, NULL, 0.00, 7000000.00, 7000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-03 09:52:17');
INSERT INTO `budget_approved` VALUES (76, NULL, NULL, NULL, 18503309, 'Topography Survey', NULL, NULL, 353000.00, 0.00, 353000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-03 09:52:17');
INSERT INTO `budget_approved` VALUES (77, NULL, NULL, NULL, 18503310, 'Geotechnical Investigation', NULL, NULL, 32852000.00, 6866000.00, 39718000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 10:14:54');
INSERT INTO `budget_approved` VALUES (78, NULL, NULL, NULL, 18503311, 'Geotechnical Investigation(New)', NULL, NULL, 0.00, 11000000.00, 11000000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-03 09:52:17');
INSERT INTO `budget_approved` VALUES (79, NULL, NULL, NULL, 18503312, 'Electrical Resistivity test', NULL, NULL, 814000.00, 0.00, 814000.00, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-03 09:52:17');

-- --------------------------------------------------------

-- 
-- Table structure for table `section`
-- 

CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(255) DEFAULT NULL,
  `section_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `section`
-- 

INSERT INTO `section` VALUES (1, 'CIVIL', 1);
INSERT INTO `section` VALUES (2, 'ELECTRICAL', 2);
INSERT INTO `section` VALUES (3, 'MECHANICAL', 3);
INSERT INTO `section` VALUES (4, 'C & I', 4);
INSERT INTO `section` VALUES (5, 'PLANNING', 5);
INSERT INTO `section` VALUES (6, 'MANAGEMENT', 6);
INSERT INTO `section` VALUES (7, 'IT', 7);
INSERT INTO `section` VALUES (8, 'INDUSTRIAL SAFETY\r\n', 8);
INSERT INTO `section` VALUES (9, 'E & US', 9);
INSERT INTO `section` VALUES (10, 'HR', 10);


-- --------------------------------------------------------

-- 
-- Table structure for table `ts_registration`
-- 

CREATE TABLE `ts_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `work_desc` varchar(255) NOT NULL,
  `sanc_amount` bigint(20) NOT NULL,
  `usi` float(18,2) NOT NULL,
  `usi_obs` bigint(20) NOT NULL,
  `usi_pre_reg_bal` bigint(20) NOT NULL,
  `usi_prog_tot` bigint(20) NOT NULL,
  `usi_post_reg_bal` bigint(20) NOT NULL,
  `bcn` bigint(20) NOT NULL,
  `obs` bigint(20) NOT NULL,
  `pre_reg_bal` bigint(20) NOT NULL,
  `prog_tot` bigint(20) NOT NULL,
  `post_reg_bal` bigint(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `raised_by` varchar(255) NOT NULL,
  `reviewed_by` varchar(255) NOT NULL,
  `approved_by` varchar(255) NOT NULL,
  `reg_id` varchar(100) NOT NULL,
  `ts_copy_path` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- 
-- Dumping data for table `ts_registration`
-- 

INSERT INTO `ts_registration` VALUES (15, '2017-11-15', 'TS', 'Topography Survey work', 780500, 10100.01, 218800000, 218800000, 780500, 218019500, 18503309, 353000, 353000, 780500, -427500, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/1', '');
INSERT INTO `ts_registration` VALUES (16, '2017-11-27', 'TS', 'Geo-Technical Investigation', 44112400, 10100.01, 218800000, 218019500, 44892900, 173907100, 18503310, 39718000, 39718000, 44112400, -4394400, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/2', 'uploads/ts_2.pdf');
INSERT INTO `ts_registration` VALUES (17, '2018-01-25', 'TS', 'Cutting wild growth/ Bushes/ Vegetation', 1151000, 81100.01, 60500000, 60500000, 1151000, 59349000, 18503319, 852000, 852000, 1151000, -299000, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/3', 'uploads/ts_3.pdf ');
INSERT INTO `ts_registration` VALUES (18, '2018-03-28', 'TS', 'Hiring of manpower contract\r\n', 5300700, 82800.01, 645900000, 645900000, 5300700, 640599300, 18503307, 5150000, 5150000, 5300700, -150700, 'PLANNING', 'KVS', '', '', 'K56/PLG/TS/4', 'uploads/ts_4.pdf ');
INSERT INTO `ts_registration` VALUES (19, '2018-06-02', 'TS', 'Renovation of CCE office building', 3716000, 82210.01, 46100000, 46100000, 3716000, 42384000, 18503341, 6250000, 6250000, 3716000, 2534000, 'CIVIL', 'SBS', '', '', 'K56/CIV/TS/5', 'uploads/ts_5.pdf ');
INSERT INTO `ts_registration` VALUES (20, '2018-06-02', 'TS', 'Hiring of Security Services', 22770000, 14000.01, 780100000, 780100000, 22770000, 757330000, 18503324, 26400000, 26400000, 22770000, 3630000, 'HR', 'KVS', '', '', 'K56/HR/TS/6', 'uploads/ts_6.pdf ');
INSERT INTO `ts_registration` VALUES (21, '2018-06-06', 'TS', 'Bifurcation Fencing Between KGS and Kaiga 5&6\r\n', 24247000, 14000.01, 780100000, 757330000, 47017000, 733083000, 18503324, 26400000, 3630000, 47017000, -20617000, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/7', 'uploads/ts_7.pdf ');
INSERT INTO `ts_registration` VALUES (22, '2018-07-06', 'TS', 'Analysis of Raw Water & Recommendation of treatment for Kaiga 5&6\r\n', 1042500, 82800.01, 645900000, 640599300, 6343200, 639556800, 18503318, 1093000, 1093000, 1042500, 50500, 'CIVIL', '', '', '', 'K56/CIV/TS/8', 'uploads/ts_8.pdf ');
INSERT INTO `ts_registration` VALUES (23, '2018-07-07', 'TS', 'Providing structural consultancy for infrastructural works of Kaiga 5&6\r\n', 738200, 82800.01, 645900000, 639556800, 7081400, 638818600, 18503327, 3800000, 3800000, 738200, 3061800, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/9', 'uploads/ts_9.pdf ');
INSERT INTO `ts_registration` VALUES (24, '2018-09-07', 'TS', 'Providing Intellectual Services (NIRM)\r\n', 5457500, 10100.01, 218800000, 173907100, 50350400, 168449600, 18503315, 5153000, 5153000, 5457500, -304500, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/10', 'uploads/ts_10.pdf ');
INSERT INTO `ts_registration` VALUES (25, '2018-10-18', 'TS', 'Construction of IRB & Modification Kaiga-3&4 Time Office\r\n', 32644000, 81210.01, 235000000, 235000000, 32644000, 202356000, 18503326, 40300000, 40300000, 32644000, 7656000, 'CIVIL', 'SBS', '', '', 'K56/CIV/TS/11', 'uploads/ts_11.pdf ');
INSERT INTO `ts_registration` VALUES (26, '2019-01-17', 'TS', 'Hiring of manpower (additional Qty)\r\n', 275000, 82800.01, 645900000, 638818600, 7356400, 638543600, 18503308, 7000000, 7000000, 275000, 6725000, 'PLANNING', 'KVS', '', '', 'K56/PLG/TS/12', '');
INSERT INTO `ts_registration` VALUES (27, '2019-03-11', 'TS', 'Area lighting work along the bifurcation fencing between KGS 1 to 4 & Kaiga 5&6 project at Kaiga site\r\n', 2776000, 81430.01, 162400000, 162400000, 2776000, 159624000, 18503323, 20000000, 20000000, 2776000, 17224000, 'ELECTRICAL', 'MPK', '', '', 'K56/ELE/TS/13', 'uploads/ts_13.pdf ');
INSERT INTO `ts_registration` VALUES (28, '2019-04-15', 'TS', 'Providing QA Support to Geological Investigation Kaiga 5&6\r\n', 1735000, 10100.01, 218800000, 168449600, 52085400, 166714600, 18503311, 11000000, 11000000, 1735000, 9265000, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/14', 'uploads/ts_14.pdf ');
INSERT INTO `ts_registration` VALUES (29, '2019-04-16', 'TS', 'Providing a Maruti car to PD Kaiga-5&6 on hire basis for 3 Yrs\r\n', 1223000, 81500.01, 302000000, 302000000, 1223000, 300777000, 18503346, 2600000, 2600000, 1223000, 1377000, 'E & US', 'A M ALFANSO', '', '', 'K56/E&US/TS/15', 'uploads/ts_15.pdf ');
INSERT INTO `ts_registration` VALUES (30, '2019-04-22', 'TS', 'Carring out studies on potential for land slide & Rock fall at Kaiga 5&6.\r\n', 3349000, 10100.01, 218800000, 166714600, 55434400, 163365600, 18503311, 11000000, 9265000, 5084000, 5916000, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/16', 'uploads/ts_16.pdf ');
INSERT INTO `ts_registration` VALUES (31, '2019-04-30', 'TS', 'CCTV network along the bifurcation fencing between KGS 1-4 and Kaiga 5&6 at Kaiga site\r\n', 5700000, 81440.01, 345000000, 345000000, 5700000, 339300000, 18503324, 26400000, -20617000, 52717000, -26317000, 'PLANNING', '', '', '', 'K56/PLG/TS/17', 'uploads/ts_17.pdf ');
INSERT INTO `ts_registration` VALUES (32, '2019-05-25', 'TS', 'Hiring of man power for Kaiga 5&6\r\n', 17118472, 82800.01, 645900000, 638543600, 24474872, 621425128, 18503308, 7000000, 6725000, 17393472, -10393472, 'PLANNING', 'KVS', '', '', 'K56/PLG/TS/18', 'uploads/ts_18.pdf ');
INSERT INTO `ts_registration` VALUES (33, '2019-06-07', 'TS', 'Repair and Recondtioning of 1 MVA 6.6/0.433 KV Oil cooled Transformer at Kaiga site.\r\n', 390600, 81430.01, 162400000, 159624000, 3166600, 159233400, 18503329, 150000000, 150000000, 390600, 149609400, 'ELECTRICAL', 'MPK', '', '', 'K56/ELE/TS/19', 'uploads/ts_19.pdf ');
INSERT INTO `ts_registration` VALUES (34, '2019-11-10', 'TS', 'Construction of water draining arrangement cut off drain and Miscellaneous,  at Kaiga site, Kaiga\r\n', 207253903, 12000.01, 236200000, 236200000, 207253903, 28946097, 18503325, 150000000, 150000000, 207253903, -57253903, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/20', 'uploads/ts_20.pdf ');
INSERT INTO `ts_registration` VALUES (35, '2019-08-31', 'TS', 'Excavation, Consolidated Grouting, Confirmatory Sub-soil investigation Main Plant Civil Package -I for Kaiga 5&6\r\n', 1033435217, 20000.02, 22950000000, 22950000000, 1033435217, 21916564783, 18503336, 1137600000, 1137600000, 1033435217, 104164783, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/21', 'uploads/ts_21.pdf ');
INSERT INTO `ts_registration` VALUES (36, '2019-09-28', 'TS', 'Carrying out Soil investigation for cut of drain and water draining arrangement at Kaiga 5&6 Kaiga site. Karwar\r\n', 4692376, 10100.01, 218800000, 163365600, 60126776, 158673224, 18503311, 11000000, 5916000, 9776376, 1223624, 'CIVIL', 'SVG', '', '', 'K56/CIV/TS/22', 'uploads/ts_22.pdf ');
INSERT INTO `ts_registration` VALUES (37, '2019-10-04', 'TS', 'Design, Supply, Erection, Testing and Commissioing of HT & LT substations and associated works for construction power supply at Kaiga 5&6\r\n', 172320884, 81430.01, 162400000, 159233400, 175487484, -13087484, 18503329, 150000000, 149609400, 172711484, -22711484, 'ELECTRICAL', 'MPK', '', '', 'K56/ELE/TS/23', 'uploads/ts_23.pdf ');
INSERT INTO `ts_registration` VALUES (38, '2019-10-15', 'TS', 'Miscellaneous civil works required for development of main plant facility at Kaiga 5&6 Kaiga 581400\r\n', 4065504, 81100.01, 60500000, 59349000, 5216504, 55283496, 18503323, 20000000, 17224000, 6841504, 13158496, 'CIVIL', 'SBS', '', '', 'K56/CIV/TS/24', 'uploads/ts_24.pdf ');
INSERT INTO `ts_registration` VALUES (39, '2019-10-15', 'TS', 'Renovation of Switch gear Room at Solid waste plant and CCE office toilet, pantry at Kaiga site.\r\n', 3145700, 15000.01, 231500000, 231500000, 3145700, 228354300, 18503329, 150000000, -22711484, 175857184, -25857184, 'CIVIL', 'SBS', '', '', 'K56/CIV/TS/25', 'uploads/ts_25.pdf ');
INSERT INTO `ts_registration` VALUES (40, '2019-10-19', 'TS', 'Drilling of Borewell at Kaiga 5&6 plant site area Kaiga - 581400\r\n', 1290677, 81100.01, 60500000, 55283496, 6507181, 53992819, 18503323, 20000000, 13158496, 8132181, 11867819, 'CIVIL', 'SBS', '', '', 'K56/CIV/TS/26', 'uploads/ts_26.pdf ');

-- --------------------------------------------------------

-- 
-- Table structure for table `ts_wo_payments`
-- 

CREATE TABLE `ts_wo_payments` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `wo_num` bigint(10) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_type` varchar(10) NOT NULL,
  `bill_number` bigint(10) NOT NULL,
  `bill_amount` bigint(20) NOT NULL,
  `eic` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `usi` varchar(20) NOT NULL,
  `usi_obs` bigint(20) NOT NULL,
  `usi_pre_reg` bigint(20) NOT NULL,
  `usi_prog_tot` bigint(20) NOT NULL,
  `usi_post_reg` bigint(20) NOT NULL,
  `bcn` bigint(20) NOT NULL,
  `bcn_obs` bigint(20) NOT NULL,
  `bcn_pre_reg` bigint(20) NOT NULL,
  `bcn_prog_tot` bigint(20) NOT NULL,
  `bcn_post_reg` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `ts_wo_payments`
-- 

INSERT INTO `ts_wo_payments` VALUES (1, 500004, '2020-01-31', 'RA Bill', 1, 149838, 'S.V.Gajanana', 'CIVIL', '81100.01', 60500000, 60500000, 149838, 60350162, 18503319, 852000, 852000, 149838, 702162);
INSERT INTO `ts_wo_payments` VALUES (2, 500009, '2020-01-31', 'RA Bill', 1, 23502098, 'S.V.Gajanana', 'CIVIL', '14000.01', 780100000, 780100000, 23502098, 756597902, 18503324, 26400000, 26400000, 23502098, 2897902);
INSERT INTO `ts_wo_payments` VALUES (3, 500012, '2020-01-31', 'RA Bill', 1, 3890593, 'S.V.Gajanana', 'CIVIL', '10100.01', 218800000, 218800000, 3890593, 214909407, 18503311, 11000000, 11000000, 3890593, 7109407);
INSERT INTO `ts_wo_payments` VALUES (4, 500011, '2020-01-31', 'RA Bill', 1, 517114, 'S.V.Gajanana', 'CIVIL', '82800.01', 645900000, 645900000, 517114, 645382886, 18503327, 3800000, 3800000, 517114, 3282886);
INSERT INTO `ts_wo_payments` VALUES (5, 500016, '2020-01-31', 'RA Bill', 1, 2919537, 'S.V.Gajanana', 'CIVIL', '10100.01', 218800000, 214909407, 6810130, 211989870, 18503311, 11000000, 7109407, 6810130, 4189870);
INSERT INTO `ts_wo_payments` VALUES (6, 500003, '2020-01-31', 'RA Bill', 1, 37935279, 'S.V.Gajanana', 'CIVIL', '10100.01', 218800000, 211989870, 44745409, 174054591, 18503310, 39718000, 39718000, 37935279, 1782721);
INSERT INTO `ts_wo_payments` VALUES (7, 500014, '2020-01-31', 'RA Bill', 1, 19531373, 'Satish B. Shetty', 'CIVIL', '81210.01', 235000000, 235000000, 19531373, 215468627, 18503326, 40300000, 40300000, 19531373, 20768627);
INSERT INTO `ts_wo_payments` VALUES (8, 500019, '2020-01-31', 'RA Bill', 1, 1148000, 'Satish B. Shetty', 'CIVIL', '15000.01', 231500000, 231500000, 1148000, 230352000, 18503329, 150000000, 150000000, 1148000, 148852000);

-- --------------------------------------------------------

-- 
-- Table structure for table `ts_wo_payments_forecast`
-- 

CREATE TABLE `ts_wo_payments_forecast` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wo_num` bigint(10) NOT NULL,
  `forecast_month` varchar(10) NOT NULL,
  `forecast_amount` bigint(20) NOT NULL,
  `eic` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `ts_wo_payments_forecast`
-- 

INSERT INTO `ts_wo_payments_forecast` VALUES (1, 500004, 'March', 82000, 'S.V.Gajanana');
INSERT INTO `ts_wo_payments_forecast` VALUES (2, 500009, 'February', 2000000, 'S.V.Gajanana');
INSERT INTO `ts_wo_payments_forecast` VALUES (3, 500009, 'March', 1500000, 'S.V.Gajanana');
INSERT INTO `ts_wo_payments_forecast` VALUES (4, 500011, 'March', 115000, 'S.V.Gajanana');
INSERT INTO `ts_wo_payments_forecast` VALUES (5, 500003, 'March', 3250000, 'S.V.Gajanana');
INSERT INTO `ts_wo_payments_forecast` VALUES (6, 500014, 'February', 2200000, 'Satish B. Shetty');
INSERT INTO `ts_wo_payments_forecast` VALUES (7, 500014, 'March', 2300000, 'Satish B. Shetty');
INSERT INTO `ts_wo_payments_forecast` VALUES (8, 500019, 'February', 433000, 'Satish B. Shetty');
INSERT INTO `ts_wo_payments_forecast` VALUES (9, 500019, 'March', 715000, 'Satish B. Shetty');
INSERT INTO `ts_wo_payments_forecast` VALUES (10, 500021, 'March', 500000, 'Satish B. Shetty');

-- --------------------------------------------------------

-- 
-- Table structure for table `ts_wo_progress`
-- 

CREATE TABLE `ts_wo_progress` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `wo_num` bigint(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `progress` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `ts_wo_progress`
-- 

INSERT INTO `ts_wo_progress` VALUES (1, '2020-01-07', 500001, 'Started', 'Topograpy Instruments shifted to site location');
INSERT INTO `ts_wo_progress` VALUES (2, '2020-01-17', 500001, 'On Going', 'Land area survey started');
INSERT INTO `ts_wo_progress` VALUES (3, '2020-01-22', 500001, 'Completed', 'Land Area Survey Completed');

-- --------------------------------------------------------

-- 
-- Table structure for table `ts_wo_registration`
-- 

CREATE TABLE `ts_wo_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `ts_id` varchar(40) NOT NULL,
  `wo_num` bigint(20) NOT NULL,
  `wo_value` bigint(20) NOT NULL,
  `eic` varchar(20) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `usi` float(18,2) NOT NULL,
  `usi_obs` bigint(20) NOT NULL,
  `usi_pre_reg` bigint(20) NOT NULL,
  `usi_prog_tot` bigint(20) NOT NULL,
  `usi_post_reg` bigint(20) NOT NULL,
  `bcn` bigint(20) NOT NULL,
  `bcn_obs` bigint(20) NOT NULL,
  `bcn_pre_reg` bigint(20) NOT NULL,
  `bcn_prog_tot` bigint(20) NOT NULL,
  `bcn_post_reg` bigint(20) NOT NULL,
  `wo_copy_path` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

-- 
-- Dumping data for table `ts_wo_registration`
-- 

INSERT INTO `ts_wo_registration` VALUES (82, '2017-11-18', 'K56/CIV/TS/1', 500001, 693500, 'P.Mohan', '1', 10100.01, 218800000, 218800000, 693500, 218106500, 18503309, 353000, 353000, 693500, -340500, 'uploads/wo_1.pdf ');
INSERT INTO `ts_wo_registration` VALUES (83, '2018-05-14', 'K56/CIV/TS/2', 500003, 39717500, 'S.V.Gajanana', '11', 10100.01, 218800000, 218106500, 40411000, 178389000, 18503310, 39718000, 39718000, 39717500, 500, 'uploads/wo_2.pdf ');
INSERT INTO `ts_wo_registration` VALUES (84, '2018-03-27', 'K56/CIV/TS/3', 500004, 852500, 'S.V.Gajanana', '11', 81100.01, 60500000, 60500000, 852500, 59647500, 18503319, 852000, 852000, 852500, -500, 'uploads/wo_3.pdf ');
INSERT INTO `ts_wo_registration` VALUES (85, '2018-07-06', 'K56/PLG/TS/4', 500007, 5145600, 'Kishore V. Shetty', '12', 82800.01, 645900000, 645900000, 5145600, 640754400, 18503307, 5150000, 5150000, 5145600, 4400, 'uploads/wo_4.pdf ');
INSERT INTO `ts_wo_registration` VALUES (86, '2018-07-18', 'K56/CIV/TS/8', 500008, 992893, 'Kishore V. Shetty', '12', 82800.01, 645900000, 640754400, 6138493, 639761507, 18503318, 1093000, 1093000, 992893, 100107, 'uploads/wo_8.pdf ');
INSERT INTO `ts_wo_registration` VALUES (87, '2018-09-01', 'K56/CIV/TS/7', 500009, 21596845, 'S.V.Gajanana', '5', 14000.01, 780100000, 780100000, 21596845, 758503155, 18503324, 26400000, 26400000, 21596845, 4803155, 'uploads/wo_7.pdf ');
INSERT INTO `ts_wo_registration` VALUES (88, '2018-09-19', 'K56/CIV/TS/5', 500010, 3446249, 'Satish Shetty', '3', 82210.01, 46100000, 46100000, 3446249, 42653751, 18503341, 6250000, 6250000, 3446249, 2803751, 'uploads/wo_5.pdf ');
INSERT INTO `ts_wo_registration` VALUES (89, '2018-09-28', 'K56/CIV/TS/9', 500011, 636020, 'S.V.Gajanana', '2', 82800.01, 645900000, 639761507, 6774513, 639125487, 18503327, 3800000, 3800000, 636020, 3163980, 'uploads/wo_9.pdf ');
INSERT INTO `ts_wo_registration` VALUES (90, '2018-10-05', 'K56/CIV/TS/14', 500012, 5197664, 'S.V.Gajanana', '6', 10100.01, 218800000, 178389000, 45608664, 173191336, 18503311, 11000000, 11000000, 5197664, 5802336, 'uploads/wo_14.pdf ');
INSERT INTO `ts_wo_registration` VALUES (91, '2019-01-30', 'K56/HR/TS/6', 500013, 22897180, 'Rajesh Kumar Patra', '24', 14000.01, 780100000, 758503155, 44494025, 735605975, 18503324, 26400000, 4803155, 44494025, -18094025, 'uploads/wo_6.pdf ');
INSERT INTO `ts_wo_registration` VALUES (92, '2019-02-26', 'K56/CIV/TS/11', 500014, 29204205, 'Satish B. Shetty', '11', 81210.01, 235000000, 235000000, 29204205, 205795795, 18503326, 40300000, 40300000, 29204205, 11095795, 'uploads/wo_11.pdf ');
INSERT INTO `ts_wo_registration` VALUES (93, '2019-05-15', 'K56/ELE/TS/13', 500015, 2186244, 'M. P. Kademani', '4', 81430.01, 162400000, 162400000, 2186244, 160213756, 18503323, 20000000, 20000000, 2186244, 17813756, 'uploads/wo_13.pdf ');
INSERT INTO `ts_wo_registration` VALUES (94, '2019-10-23', 'K56/PLG/TS/18', 500017, 16688230, 'Kishore V. Shetty', '21', 82800.01, 645900000, 639125487, 23462743, 622437257, 18503308, 7000000, 7000000, 16688230, -9688230, 'uploads/wo_18.pdf ');
INSERT INTO `ts_wo_registration` VALUES (95, '2019-10-24', 'K56/ELE/TS/19', 500018, 371700, 'M. P. Kademani', '1', 81430.01, 162400000, 160213756, 2557944, 159842056, 18503329, 150000000, 150000000, 371700, 149628300, 'uploads/wo_19.pdf ');
INSERT INTO `ts_wo_registration` VALUES (96, '2020-01-23', 'K56/CIV/TS/25', 500019, 2640154, 'S.B.Shetty', '6', 15000.01, 231500000, 231500000, 2640154, 228859846, 18503329, 150000000, 149628300, 3011854, 146988146, 'uploads/wo_25.pdf ');

-- --------------------------------------------------------

-- 
-- Table structure for table `users_login1`
-- 

CREATE TABLE `users_login1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_no` int(11) DEFAULT NULL,
  `cc_no` int(11) DEFAULT NULL,
  `namee` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `section_code` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT 'c4ca4238a0b923820dcc509a6f75849b',
  `mobile` bigint(20) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `level` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- 
-- Dumping data for table `users_login1`
-- 

INSERT INTO `users_login1` VALUES (2, 1617834, 7011, 'VINOD NAYAK', 'IT', 7, 'vrnayak123', 9480474242, 'vrnayak@npcil.co.in', 1);
INSERT INTO `users_login1` VALUES (3, 1600095, 7001, 'Test User', 'IT', 7, 'default123', 9448291700, 'pmohan@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (4, 1604341, 7002, 'K. V. SHETTY', 'PLANNING', 5, 'default123', 9449874107, 'kvshetty@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (5, 1601318, 7003, 'S V GAJANANA', 'CIVIL', 1, 'default123', 9448999140, 'svgajanana@npcil.co.in', 1);
INSERT INTO `users_login1` VALUES (6, 1601288, 7004, 'SATISH B SHETTY', 'CIVIL', 1, 'default123', 9448291738, 'sb_shetty@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (7, 1718631, 7005, 'DEVENDRA KUMAR', 'ELECTRICAL', 2, 'default123', 9448991764, 'devendrakumar@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (8, 1604970, 7006, 'JAKEERAHUSEN AMINSAB ASKI', 'CIVIL', 1, 'default123', 9448999796, 'jaaski@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (9, 1603795, 7007, 'PRABHAKARRAO ASADHI', 'CIVIL', 1, 'default123', 9448100615, 'pasadhi@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (10, 1629431, 7008, 'NUNAVATH MOHAN', 'CIVIL', 1, 'default123', 9480824747, 'n.mohan@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (11, 9136185, 7009, 'J.S.RUHAL', 'PLANNING', 5, 'default123', 9448075162, 'jsruhal@npcil.co.in', 1);
INSERT INTO `users_login1` VALUES (12, 1607995, 7012, 'H. N. RAMESHA', 'CIVIL', 1, 'default123', 8277937891, 'hnramesha@npcil.co.in', 1);
INSERT INTO `users_login1` VALUES (13, 1804006, 7013, 'A M DESNAVI', 'MANAGEMENT', 6, 'default123', 9422036666, 'amdesnavi@npcil.co.in', 1);
INSERT INTO `users_login1` VALUES (14, 1603817, 7014, 'M P KADEMANI', 'ELECTRICAL', 2, 'default123', 9448999145, 'mpkademani@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (16, 1612298, 7016, 'B. N. NAGENDRAKUMAR', 'PLANNING', 5, 'default123', 9449874035, 'bnnkumar@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (17, 1622919, 7017, 'MAHADEV. B. UPARE', 'ELECTRICAL', 2, 'default123', 9448999149, 'mbupare@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (18, 1622072, 7018, 'VIJAYARAVI C SATHI', 'INDUSTRIAL SAFETY\r\n', 8, 'default123', 9448991781, 'sathi@npcil.co.in', 2);
INSERT INTO `users_login1` VALUES (20, 1629431, 7008, 'NUNAVATH MOHAN', 'CIVIL', 1, 'default123', 9480824747, 'n.mohan@npcil.co.in;', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `usi`
-- 

CREATE TABLE `usi` (
  `usi` float(18,2) NOT NULL,
  `details` varchar(255) NOT NULL,
  `usi_cost` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `usi`
-- 

INSERT INTO `usi` VALUES (10100.01, 'Site Investigation (Geological, Geotech. & other inv./ survey', '218800000.00');
INSERT INTO `usi` VALUES (11100.01, 'Land acquisition for plant site and township including rehabilitation and public welfare and NDP ( For Green Field Project only)', '3742900000.00');
INSERT INTO `usi` VALUES (12000.01, 'Preparation including levelling and dressing of the land, approach roads, drains etc', '236200000.00');
INSERT INTO `usi` VALUES (13000.01, 'Site Access & Aprroach Road', '1112800000.00');
INSERT INTO `usi` VALUES (14000.01, 'Fences-Security & Boundary, also includes USI 81240.01', '780100000.00');
INSERT INTO `usi` VALUES (15000.01, 'Site Improvement including green belt development etc.', '231500000.00');
INSERT INTO `usi` VALUES (16000.01, 'Area dewatering', '72400000.00');
INSERT INTO `usi` VALUES (20000.02, 'Main Plant Civil & Infrastuructur Works ( Civil works associated with RBs, NBs, CB and PCB, Sabs, tunnels and trenches, D2O Upgrading Plant, WMP, Stack and SMR, work shop, NF Building, Switchyard Control Building, roads, Admin Bldg, Canteen, Ware Houses, ', '22950000000.00');
INSERT INTO `usi` VALUES (23600.00, 'Induced Draught Colling Tower Package', '1316600000.00');
INSERT INTO `usi` VALUES (31000.00, 'Reactor erection package', '1022300000.00');
INSERT INTO `usi` VALUES (21810.02, 'Liner for inner containment ', '393500000.00');
INSERT INTO `usi` VALUES (21810.01, 'Liner for following : SFSB, TLB, Fm vault, Fm service area, Airlock barrels', '94500000.00');
INSERT INTO `usi` VALUES (30000.02, 'Primary piping package-erection and commissioning 9 Including Erection of D2O HXs, Storage tanks, pumps, Steam generators, Reactor Headers, Pressiroser', '1165200000.00');
INSERT INTO `usi` VALUES (73000.02, 'Ventilation package-Erection and Commissioning', '280700000.00');
INSERT INTO `usi` VALUES (35000.00, 'Erection of Fuel Handling Mechnical Equipment covered under all above Packages', '48100000.00');
INSERT INTO `usi` VALUES (40000.01, 'Turbo Generator, MSR and Condenser', '3547900000.00');
INSERT INTO `usi` VALUES (40000.02, 'TI package excluding TG, MSR & condenser', '6268800000.00');
INSERT INTO `usi` VALUES (71200.00, 'CCW package including NDCT', '7267300000.00');
INSERT INTO `usi` VALUES (71120.02, 'Plant water package erection and O&M', '305200000.00');
INSERT INTO `usi` VALUES (71120.70, 'Plant water system Civil', '531900000.00');
INSERT INTO `usi` VALUES (7120.08, 'Seismic qualified storage facility for Emergemcy Storage Pond', '339200000.00');
INSERT INTO `usi` VALUES (71000.02, 'Common Services Package- Erection', '593700000.00');
INSERT INTO `usi` VALUES (50000.01, 'Electrical Systems', '821800000.00');
INSERT INTO `usi` VALUES (53530.00, 'Emergency Diesel Generator Sets Package- Erection and Commissioning', '116000000.00');
INSERT INTO `usi` VALUES (60000.04, 'Control Centre Ins. Package- Erection and Commissioning', '539100000.00');
INSERT INTO `usi` VALUES (60000.02, 'Field Instrumentation package including FHC- erection and commissioning', '405400000.00');
INSERT INTO `usi` VALUES (77200.01, 'Mechnical Maintenance Shops', '100300000.00');
INSERT INTO `usi` VALUES (77400.01, 'Control maintenance Shops', '100300000.00');
INSERT INTO `usi` VALUES (77500.01, 'Electrical Maintenancen Shops', '100300000.00');
INSERT INTO `usi` VALUES (77900.01, 'Miscellaneous Maintenance Shops ( including fuel handling Systems)', '147900000.00');
INSERT INTO `usi` VALUES (77900.02, 'Chemical Lab- Shop etc', '100300000.00');
INSERT INTO `usi` VALUES (77900.03, 'Miscellaneous Chemicals etc. and other operational - commissioning requirement', '147900000.00');
INSERT INTO `usi` VALUES (81100.01, 'Construction work area site improvement', '60500000.00');
INSERT INTO `usi` VALUES (81210.01, 'Construction of offices', '235000000.00');
INSERT INTO `usi` VALUES (81220.01, 'Storage & Warhouse', '36400000.00');
INSERT INTO `usi` VALUES (81230.01, ' Canteen ( For Operation Time)', '35200000.00');
INSERT INTO `usi` VALUES (81250.01, 'Fire Protection & Safety', '74600000.00');
INSERT INTO `usi` VALUES (81260.01, 'First Aid Centre ( Temp)', '7200000.00');
INSERT INTO `usi` VALUES (81280.01, 'Workshops', '23300000.00');
INSERT INTO `usi` VALUES (81310.01, 'Buildings & Equipment for Testing, QC and Surveillance', '15700000.00');
INSERT INTO `usi` VALUES (81410.01, 'Construction of Water Supply & Sewage', '74900000.00');
INSERT INTO `usi` VALUES (81430.01, 'Construction of Electrical Power', '162400000.00');
INSERT INTO `usi` VALUES (81440.01, 'Communication System', '345000000.00');
INSERT INTO `usi` VALUES (81450.01, 'Compressed air Services', '7600000.00');
INSERT INTO `usi` VALUES (81500.01, 'Transportation, Hiring of transportation for officials & material handling equipment and material handling Facilities', '302000000.00');
INSERT INTO `usi` VALUES (81700.02, 'Miscellaneous Equipment including Crawler Crane, and other ranes and material handling equipments and hiring of material handling equip', '499200000.00');
INSERT INTO `usi` VALUES (82210.01, 'Construction office maintenance - stationary and consumables', '46100000.00');
INSERT INTO `usi` VALUES (82220.01, 'Storage and warehouse maintenance', '19200000.00');
INSERT INTO `usi` VALUES (82230.01, 'Canteen Operation', '12700000.00');
INSERT INTO `usi` VALUES (82240.01, 'Security (CISF salaries)', '288200000.00');
INSERT INTO `usi` VALUES (82250.01, 'Fire protection & safety Operation', '20300000.00');
INSERT INTO `usi` VALUES (82260.01, 'First Aid Centre operation', '20400000.00');
INSERT INTO `usi` VALUES (82310.01, 'Building & Equipment O&M', '4900000.00');
INSERT INTO `usi` VALUES (82410.01, 'Construction Water supply & water charges and Sewage maintenance', '191500000.00');
INSERT INTO `usi` VALUES (82430.01, 'Construction system maintenance & charges', '859600000.00');
INSERT INTO `usi` VALUES (82440.01, 'Communication system maintenance & Charges', '180800000.00');
INSERT INTO `usi` VALUES (82450.01, 'Compressed air services maintenance', '1800000.00');
INSERT INTO `usi` VALUES (82500.01, 'Transportation & material handling Facilities maintenance', '16000000.00');
INSERT INTO `usi` VALUES (82700.01, 'Miscellaneous Equipment- O & M', '3700000.00');
INSERT INTO `usi` VALUES (82800.01, 'Miscellaneous Expenditure for Sercives', '645900000.00');
INSERT INTO `usi` VALUES (91100.01, 'Township-site and improvements', '290600000.00');
INSERT INTO `usi` VALUES (91210.01, 'Construction of residential buildings Including CISF', '2095600000.00');
INSERT INTO `usi` VALUES (91220.01, 'Permanent Community facilities', '1243500000.00');
INSERT INTO `usi` VALUES (91230.01, 'Township water supply and sewage', '111700000.00');
INSERT INTO `usi` VALUES (91240.01, 'Electrical power facilities', '38900000.00');
INSERT INTO `usi` VALUES (91250.01, 'Communication system and other IT Facility', '170900000.00');
INSERT INTO `usi` VALUES (91260.01, 'Township Transport services', '10800000.00');
INSERT INTO `usi` VALUES (91270.01, 'Security', '4700000.00');
INSERT INTO `usi` VALUES (91290.01, 'other Services', '22800000.00');
INSERT INTO `usi` VALUES (91300.01, 'Construction Colony First Cost', '83500000.00');
INSERT INTO `usi` VALUES (92200.01, 'Township Residential Building/ Estate Management', '127700000.00');
INSERT INTO `usi` VALUES (92220.01, 'Permanent Community Facilities maintenance', '22900000.00');
INSERT INTO `usi` VALUES (92230.01, 'Township water supply and sewage Charges', '31700000.00');
INSERT INTO `usi` VALUES (92240.01, 'Electrical powr Facilities maintenance and Charges', '167500000.00');
INSERT INTO `usi` VALUES (92250.01, 'Communication system maintenance and Charges', '40800000.00');
INSERT INTO `usi` VALUES (92260.01, 'Township Transport maintenance', '10900000.00');
INSERT INTO `usi` VALUES (92270.01, 'Security O & M', '11700000.00');
INSERT INTO `usi` VALUES (92290.01, 'Other Services maintenance', '37100000.00');
INSERT INTO `usi` VALUES (92300.01, 'Construction Colony First Cost Estate Management', '9700000.00');
INSERT INTO `usi` VALUES (81790.01, 'ESL Civil Works', '37800000.00');
INSERT INTO `usi` VALUES (81790.02, 'Survey Vehicle', '2100000.00');
INSERT INTO `usi` VALUES (81790.03, 'Instruments and Equipments with centralised Air Conditioning', '59900000.00');
INSERT INTO `usi` VALUES (81790.04, 'Public information & off site emergency Control Centre (OECC) Building and Instruments &  Equip. including Centralised Air- conditioning facility', '31900000.00');
INSERT INTO `usi` VALUES (2000.01, 'Commissioning Fuel costs', '1823700000.00');
INSERT INTO `usi` VALUES (4200.01, 'Field management and Superintendence', '5050500000.00');
