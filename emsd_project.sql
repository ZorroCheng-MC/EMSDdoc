-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 10.16.146.157    Database: emsd
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cms_id_matched` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `innoportal_upload_date` datetime DEFAULT NULL,
  `cms_expiry_date` datetime DEFAULT NULL,
  `wish_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `soln_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `project_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `project_title_chi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `match_thro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `funding_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `test_site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `total_po_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `po_issued` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `po_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `actual_exp_1718` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `actual_exp_1819` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `actual_exp_1920` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `actual_exp_2021` varchar(255) DEFAULT NULL,
  `projected_exp_1920` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `projected_exp_2021` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `projected_exp_2122` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `projected_exp_2223` varchar(255) DEFAULT NULL,
  `projected_rem_exp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `matched_date` datetime DEFAULT NULL,
  `project_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `project_and_report_status` varchar(255) DEFAULT NULL,
  `special_categories` varchar(255) DEFAULT NULL,
  `interim_report_submission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'no',
  `mnv_report_submission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'no',
  `interim_report_upload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'no',
  `mnv_report_upload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'no',
  `mnv_intrm_pub_date` datetime DEFAULT NULL,
  `mnv_final_pub_date` datetime DEFAULT NULL,
  `cms_uploaded_interim_report` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cms_uploaded_mnv_report` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itf_scheme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itf_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `antic_proj_start_date` datetime DEFAULT NULL,
  `antic_proj_completion_date` datetime DEFAULT NULL,
  `year_of_support_for_itf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itf_project_ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime DEFAULT NULL,
  `matched` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `project_proposing_emsd_arm` text,
  `project_proposing_emsd_branch` text,
  `project_proposing_emsd_div` text,
  `project_proposing_emsd_sub_div` text,
  `project_emsd_contact_name_eng` text,
  `project_emsd_contact_name_chi` text,
  `project_emsd_contact_post_short` text,
  `project_emsd_contact_post_eng` text,
  `project_emsd_contact_post_chi` text,
  `project_emsd_contact_email` text,
  `project_emsd_contact_tel` text,
  `same_person_wish` text,
  `project_emsd_contact_tel_2` text,
  `po_number_2` text,
  `po_number_3` text,
  `other_funding_type` text,
  `cost_centre_num` text NOT NULL,
  `itf_sche_applied_other` text,
  `project_client_dept` text,
  `project_image` text,
  `percent_completion` decimal(20,0) NOT NULL,
  `project_emsd_contact_post_title_eng` enum('Mr.','Mrs.','Miss','') NOT NULL,
  `project_emsd_contact_post_title_chi` enum('先生','太太','小姐','') NOT NULL,
  `project_is_innoteam` text,
  `project_innoteam_round` text,
  `project_int_challenge_no` text,
  `project_int_challenge_title` text,
  `monetary_benefits` text,
  `financial_benefit_remarks` text,
  `annual_return` text,
  `projectcol` text,
  `investment_per_year` text,
  `system_life_expectancy` text,
  `test_scale` text,
  `test_site_chi` text,
  `test_scale_chi` text,
  `projected_exp_2324` varchar(255) DEFAULT NULL,
  `projected_exp_2425` varchar(255) DEFAULT NULL,
  `projected_exp_2526` varchar(255) DEFAULT NULL,
  `projected_exp_2627` varchar(255) DEFAULT NULL,
  `projected_exp_2728` varchar(255) DEFAULT NULL,
  `projected_exp_2829` varchar(255) DEFAULT NULL,
  `projected_exp_2930` varchar(255) DEFAULT NULL,
  `actual_exp_2122` varchar(255) DEFAULT NULL,
  `actual_exp_2223` varchar(255) DEFAULT NULL,
  `actual_exp_2324` varchar(255) DEFAULT NULL,
  `actual_exp_2425` varchar(255) DEFAULT NULL,
  `actual_exp_2526` varchar(255) DEFAULT NULL,
  `actual_exp_2627` varchar(255) DEFAULT NULL,
  `actual_exp_2728` text,
  `actual_exp_2829` text,
  `actual_exp_2930` text,
  `intpmis_interim_filename` varchar(510) DEFAULT NULL,
  `intpmis_final_filename` varchar(510) DEFAULT NULL,
  `cms_interim_filename` text,
  `cms_final_filename` text,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `cms_intrm_pub_date` datetime DEFAULT NULL,
  `cms_final_pub_date` datetime DEFAULT NULL,
  `reported_month` datetime DEFAULT '0000-00-00 00:00:00',
  `overdue_rpt_date` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-09  9:59:16
