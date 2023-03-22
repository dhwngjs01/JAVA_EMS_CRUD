-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.11.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- java_ems_crud 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `java_ems_crud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `java_ems_crud`;

-- 테이블 java_ems_crud.ems_machine 구조 내보내기
CREATE TABLE IF NOT EXISTS `ems_machine` (
  `machine_no` text DEFAULT NULL,
  `machine_model` text DEFAULT NULL,
  `machine_weight` text DEFAULT NULL,
  `machine_year` text DEFAULT NULL,
  `machine_group` text DEFAULT NULL,
  `machine_type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 java_ems_crud.ems_machine:~3 rows (대략적) 내보내기
DELETE FROM `ems_machine`;
INSERT INTO `ems_machine` (`machine_no`, `machine_model`, `machine_weight`, `machine_year`, `machine_group`, `machine_type`) VALUES
	('1', 'dfw-55', '20', '7', '생산관리2부', '지게차'),
	('2', 'awb-100', '8', '18', '생산관리1부', '굴삭기'),
	('3', 'dcx-150', '12', '6', '생산관리1부', '굴삭기');

-- 테이블 java_ems_crud.ems_record 구조 내보내기
CREATE TABLE IF NOT EXISTS `ems_record` (
  `record_no` text DEFAULT NULL,
  `machine_no` text DEFAULT NULL,
  `record_tel` text DEFAULT NULL,
  `record_belong` text DEFAULT NULL,
  `record_dept` text DEFAULT NULL,
  `record_manager` text DEFAULT NULL,
  `record_uniq` text DEFAULT NULL,
  `record_money` text DEFAULT NULL,
  `record_etc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 java_ems_crud.ems_record:~5 rows (대략적) 내보내기
DELETE FROM `ems_record`;
INSERT INTO `ems_record` (`record_no`, `machine_no`, `record_tel`, `record_belong`, `record_dept`, `record_manager`, `record_uniq`, `record_money`, `record_etc`) VALUES
	('1', '1', '1324', '인하장비', '영업관리1부', '오주헌', 'A1001', '24000', '20191216-점검'),
	('2', '1', '1324', '인하장비', '영업관리1부', '오주헌', 'A2018', '14000', '20191216-수리'),
	('3', '2', '1324', '인하장비', '영업관리2부', '박땡땡', 'A3021', '35000', '20191216-점검'),
	('4', '2', '1324', '인하장비', '영업관리2부', '박땡땡', 'A6201', '35000', '20191216-수리'),
	('5', '1', '1324', '인하장비', '영업관리1부', '오주헌', 'B3241', '12500', '20191216-점검');

-- 테이블 java_ems_crud.ems_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `ems_user` (
  `user_id` text DEFAULT NULL,
  `user_pw` text DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `user_dept` text DEFAULT NULL,
  `user_job` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 java_ems_crud.ems_user:~1 rows (대략적) 내보내기
DELETE FROM `ems_user`;
INSERT INTO `ems_user` (`user_id`, `user_pw`, `user_name`, `user_dept`, `user_job`) VALUES
	('user', '1234', '사용자', '장비유지보수', '팀장');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
