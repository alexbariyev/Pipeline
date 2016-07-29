-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2013 at 04:14 AM
-- Server version: 5.5.23
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brucemcm_v5_external`
--

-- --------------------------------------------------------

--
-- Table structure for table `attritions_content`
--

DROP TABLE IF EXISTS `attritions_content`;
CREATE TABLE IF NOT EXISTS `attritions_content` (
  `attrition_content_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bgColor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `triangle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `toolTip` text COLLATE utf8_unicode_ci NOT NULL,
  `box_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `overBgColor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`attrition_content_id`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `attritions_content`
--

INSERT INTO `attritions_content` (`attrition_content_id`, `page_id`, `name`, `bgColor`, `triangle`, `toolTip`, `box_title`, `description`, `overBgColor`) VALUES
(14, 1, '<b>Select NILEX</b>', 'grey', 'none', 'none', '', 'none', ''),
(13, 1, '<b>NME</b>', 'pink', 'none', 'none', '', 'none', '');

-- --------------------------------------------------------

--
-- Table structure for table `attrition_pages`
--

DROP TABLE IF EXISTS `attrition_pages`;
CREATE TABLE IF NOT EXISTS `attrition_pages` (
  `attrition_page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `attrition_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`attrition_page_id`),
  KEY `page_id` (`page_id`),
  KEY `attrition_id` (`attrition_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=185 ;

--
-- Dumping data for table `attrition_pages`
--

INSERT INTO `attrition_pages` (`attrition_page_id`, `page_id`, `attrition_id`) VALUES
(175, 14, 13),
(174, 13, 13),
(173, 12, 13),
(172, 11, 13),
(171, 10, 13),
(170, 9, 13),
(169, 8, 13),
(168, 7, 13),
(167, 1, 13),
(184, 14, 14),
(183, 13, 14),
(182, 12, 14),
(181, 11, 14),
(180, 10, 14),
(179, 9, 14),
(178, 8, 14),
(177, 7, 14),
(176, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `cells_content`
--

DROP TABLE IF EXISTS `cells_content`;
CREATE TABLE IF NOT EXISTS `cells_content` (
  `cell_content_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bgColor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `triangle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `animation` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `toolTip` text COLLATE utf8_unicode_ci NOT NULL,
  `box_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `overBgColor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_area` enum('Oncology','Bio-Medicines','Diabetes','Research') COLLATE utf8_unicode_ci NOT NULL,
  `display_business` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - inactive / 1 - active',
  PRIMARY KEY (`cell_content_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=124 ;

--
-- Dumping data for table `cells_content`
--

INSERT INTO `cells_content` (`cell_content_id`, `position`, `name`, `bgColor`, `triangle`, `animation`, `toolTip`, `box_title`, `description`, `overBgColor`, `business_area`, `display_business`) VALUES
(2, 2, 'Liprotamase pancreas insuff', 'pink', 'none', 'on', 'New Molecular Entity.', 'Liprotamase ', 'LY3031642 (liprotamase) is a biologic entity that combines three biotechnology-produced enzymes. LY3031642 is being studied for the treatment of exocrine pancreatic enzyme insufficiency including in patients with cystic fibrosis.&lt;br /&gt;&lt;br&gt; For more information on liprotamase clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY3031642" target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;\r\n', '', 'Bio-Medicines', 1),
(110, 0, 'p38 MAP inh &lt;h6&gt;I&lt;/h6&gt;&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'p38 MAP Kinase Inhibitor &lt;h6&gt;&lt;b&gt;I&lt;/b&gt;&lt;/h6&gt;', '"p38 MAP Kinase Inhibitor &lt;h6&gt;I&lt;/h6&gt;" is a chemical entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(6, 41, 'Ramucirumab &lt;br&gt;solid tumors', 'pink', 'none', 'on', 'New Molecular Entity.', 'Ramucirumab (ra" mue sir'' ue mab) (IMC-1121B)', 'LY3009806 (ramucirumab) is a biologic entity that binds to the extracellular domain of vascular endothelial growth factor receptor-2 (VEGFR-2). LY3009806 is being studied for the treatment of a variety of cancers, such as metastatic breast, colorectal and gastric cancers.&lt;br /&gt;\r\n&lt;br&gt; For more information on ramucirumab clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=ramucirumab"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(7, 40, 'Enzastaurin &lt;br&gt; DLBCL', 'pink', 'none', 'on', 'New Molecular Entity.', 'Enzastaurin (en  za  store''  in)', 'LY317615 (enzastaurin) is a chemical entity that inhibits the protein kinase C&beta; and AKT pathways. LY317615 is being studied for the treatment of diffuse large B-cell lymphoma (DLBCL).&lt;br /&gt;&lt;br&gt; For more information on enzastaurin clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=enzastaurin"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(8, 39, 'Edivoxetine&lt;br&gt; depression', 'pink', 'none', 'on', 'New Molecular Entity.', 'Edivoxetine (e" di vox'' e teen)', 'LY2216684 (edivoxetine) is a chemical entity that inhibits the reuptake of norepinephrine. LY2216684 is being studied as an add-on therapy for major depressive disorder and as a monotherapy for pediatric attention deficit hyperactivity disorder (ADHD).&lt;br /&gt;&lt;br&gt; For more information on edivoxetine clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2216684"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Bio-Medicines', 1),
(9, 45, 'Solanezumab&lt;br&gt;Alzheimer''s', 'pink', 'none', 'on', 'New Molecular Entity.', 'Solanezumab (soe" la nez'' ue mab) ', 'LY2062430 (solanezumab) is a biologic entity that binds to soluble monomeric forms of amyloid &szlig; (Ab) after it is produced. LY2062430 is being studied for its potential to slow the progression of Alzheimer''s disease.\r\n\r\n\r\n&lt;br /&gt;&lt;br&gt; For more information on solanezumab clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=solanezumab"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt; \r\n', '', 'Bio-Medicines', 1),
(10, 37, 'Tabalumab&lt;br&gt; RA/lupus', 'pink', 'none', 'on', 'New Molecular Entity.', 'Tabalumab (ta bal'' ue mab)', 'LY2127399 (tabalumab) is a fully human immunoglobulin G subclass 4 (IgG4) monoclonal antibody. It is a biologic entity that inhibits the BAFF (B-cell activating factor) protein. LY2127399 is being studied for the treatment of rheumatoid arthritis, lupus and multiple myeloma.&lt;br /&gt;&lt;br&gt; For more information on tabalumab clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2127399"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\nNOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Bio-Medicines', 1),
(11, 46, 'Necitumumab &lt;br&gt;squamous NSCLC', 'pink', 'none', 'on', 'New Molecular Entity.', 'Necitumumab (ne&rdquo; si toom'' oo mab) (IMC-11F8)', 'LY3012211 (necitumumab) is a biologic entity that works against the epidermal growth factor receptor (EGFR). LY3012211 is being studied for the treatment of squamous non-small cell lung cancer.&lt;br /&gt;\r\n&lt;br&gt; For more information on necitumumab clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=necitumumab"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(12, 43, 'Dulaglutide&lt;br&gt; diabetes', 'pink', 'none', 'on', 'New Molecular Entity.', 'Dulaglutide (doo" la gloo'' tide)', 'LY2189265 (dulaglutide), a glucagon-like peptide-1 analog, is a biologic entity being studied as a once-weekly treatment for type 2 diabetes. &lt;br /&gt;\r\n&lt;br&gt; For more information on dulaglutide clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=dulaglutide"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\nNOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Diabetes', 1),
(72, 113, 'Myostatin MAb &lt;br&gt; disuse atrophy', 'pink', 'none', 'on', 'New Molecular Entity.', 'Anti-Myostatin Monoclonal Antibody', 'LY2495655 (anti-myostatin monoclonal antibody) is a biologic entity that binds and neutralizes myostatin protein. LY2495655 is being studied for the treatment of disuse muscle atrophy and cancer cachexia. &lt;br /&gt;&lt;br&gt; For more information on LY2495655 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2495655"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 0),
(13, 38, '*Empagliflozin&lt;br&gt;diabetes', 'pink', 'none', 'on', 'New Molecular Entity.', '*Empagliflozin', 'Empagliflozin (BI10773) is a chemical entity that inhibits the sodium glucose co-transporter-2 (SGLT 2). BI10773 is being studied as a treatment for type 2 diabetes.&lt;br /&gt;&lt;br&gt; For more information on empagliflozin clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=bi10773"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Diabetes', 1),
(14, 49, 'Ixekizumab&lt;br&gt;psoriasis/PsA', 'pink', 'none', 'on', 'New Molecular Entity.', 'Ixekizumab (ix" e kiz'' ue mab)', 'LY2439821 (ixekizumab) is a biologic entity that neutralizes a soluble factor called interleukin-17A (IL-17). LY2439821 is being studied for the treatment of psoriasis and psoriatic arthritis. &lt;br /&gt;&lt;br&gt; For more information on ixekizumab clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2439821"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Bio-Medicines', 1),
(76, 19, 'Insulin lispro&lt;br&gt; diabetes', 'grey', 'none', 'on', 'NILEX.', 'Insulin Lispro (in'' su lin  lis'' proe)', 'LY275585 (insulin lispro) is a biologic entity being studied for the treatment of type 1 and 2 diabetes. ', '', 'Diabetes', 1),
(119, 0, 'depression', 'pink', 'achived_milestone_molecule', 'on', 'New Molecular Entity. ', 'Depression', 'LY2940094 is a chemical entity being studied for the treatment of depression.\r\n\r\n&lt;br /&gt;&lt;br&gt; For more information on LY2940094 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2940094"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 0),
(19, 57, 'Cixutumumab&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Cixutumumab (siks" ue tue'' mue mab) (IMC-A12)', 'LY3012217 (cixutumumab) is a biologic entity that inhibits the binding of IGF-1 and IGF-2 ligands to the IGF-1R. LY3012217 is being studied for the treatment of non-small cell lung cancer.&lt;br /&gt;&lt;br&gt; For more information on LY3012217 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=IMC-A12"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(21, 44, 'Pomaglumetad &lt;br&gt; CNS disorder', 'pink', 'none', 'on', 'New Molecular Entity.', 'Pomaglumetad Methionil (poe" ma gloo'' me tad &lt;br&gt;me thÄ« Å nil)', 'LY2140023 monohydrate (pomaglumetad methionil) is a chemical entity agonist of the metabotropic glutamate 2/3 receptors. It is being evaluated in a Phase I biomarker study.', '', 'Research', 1),
(118, 0, 'cancer', 'pink', 'achived_milestone_molecule', 'on', 'New Molecular Entity.', 'Cancer', 'LY2812176 is a biologic entity being studied for the treatment of cancer.\r\n\r\n&lt;br /&gt;&lt;br&gt; For more information on LY2812176 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2812176"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(22, 61, 'Evacetrapib&lt;br&gt;CV disease', 'pink', 'none', 'on', 'New Molecular Entity.', 'Evacetrapib (e" va set'' ra pib)', 'LY2484595 (evacetrapib) is a chemical entity that inhibits cholesteryl ester transfer protein (CETP). LY2484595 is being studied for the prevention of cardiovascular events.&lt;br /&gt;&lt;br&gt; For more information on evacetrapib clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2484595"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Bio-Medicines', 1),
(24, 55, 'Baricitinib &lt;br&gt;RA', 'pink', 'achived_milestone_molecule', 'on', 'New Molecular Entity.', 'Baricitinib (bar" i sye'' ti nib)', 'LY3009104 (baricitinib)  is a chemical entity that inhibits the activity of the Janus (JAK) 1 and 2 enzymes. LY3009104 is being studied for the treatment of rheumatoid arthritis, psoriasis and diabetic nephropathy.&lt;br /&gt;&lt;br&gt; For more information on baricitinib clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY3009104"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Bio-Medicines', 1),
(25, 79, 'Glucagon-R antag &lt;br&gt; diabetes', 'pink', 'none', 'on', 'New Molecular Entity.', 'Glucagon Receptor Antagonist', 'LY2409021 (glucagon receptor antagonist) is a chemical entity that blocks glucagon signaling. LY2409021 is being studied for the treatment of type 2 diabetes.&lt;br /&gt;&lt;br&gt; For more information on LY2409021 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2409021"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 0),
(117, 0, 'PI3 kinase/&lt;br&gt;mTOR inh&lt;br&gt;cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'PI3 Kinase/mTOR Inhibitor', '"PI3 Kinase/mTOR dual inhibitor" is a chemical entity being studied for the treatment of cancer. ', '', 'Oncology', 1),
(27, 56, 'Blosozumab &lt;br&gt; osteoporosis', 'pink', 'none', 'on', 'New Molecular Entity.', 'Blosozumab (bloe soz'' ue mab)', 'LY2541546 (blosozumab) is a biologic entity that binds and neutralizes sclerostin. LY2541546 is being studied as a treatment for osteoporosis.&lt;br /&gt;&lt;br&gt; For more information on blosozumab clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2541546"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 0),
(28, 51, 'Chk1 inh &lt;h6&gt;I&lt;/h6&gt;&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Checkpoint Kinase 1 Inhibitor &lt;h6&gt; I&lt;/h6&gt;', 'LY2603618 (Chk-1 inhibitor &lt;h6&gt;I&lt;/h6&gt;) is a chemical entity that inhibits checkpoint kinase 1 (Chk1), a global regulator of the mammalian cell cycle. LY2603618 is being studied for the treatment of a variety of cancers, such as pancreatic cancer and non-small cell lung cancer.&lt;br /&gt;&lt;br&gt; For more information on LY2603618 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2603618"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(29, 63, 'Litronesib&lt;br&gt;cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Litronesib (lit ron nes'' ib)', 'LY2523355 (litronesib) is a chemical entity that inhibits the mitotic kinesin Eg5. LY2523355 is being studied for the treatment of a variety of cancers.&lt;br /&gt;&lt;br&gt; For more information on litronesib clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2523355"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(32, 70, 'Icrucumab&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Icrucumab (eye kroo'' kue mab) (IMC-18F1)', 'LY3012212 (icrucumab) is a biologic entity designed to target the human vascular endothelial growth factor receptor-1 (VEGFR1) and block the binding of VEGF-A, VEGF-B and placental growth factor (PlGF). LY3012212 is being studied for the treatment of bladder cancer.&lt;br /&gt;&lt;br&gt; For more information on icrucumab clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=IMC-18F1"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(33, 50, 'TGF &Beta; MAb&lt;br&gt; CRD', 'pink', 'none', 'on', 'New Molecular Entity.', 'Transforming Growth Factor-&szlig; Monoclonal Antibody ', 'LY2382770 (transforming growth factor-&szlig; monoclonal antibody) is a biologic entity that neutralizes activity of TGF-&szlig;1. LY2382770 is being studied for the treatment of diabetic nephropathy.&lt;br /&gt;&lt;br&gt; For more information on LY2382770 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2382770"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 0),
(34, 73, 'Novel Basal&lt;br&gt; Insulin&lt;br&gt;  diabetes', 'pink', 'none', 'on', 'New Molecular Entity.', 'Novel Basal Insulin Analog', 'LY2605541 (basal insulin analog) is a biologic entity that is a novel basal insulin analog. LY2605541 is being studied for the treatment of type 1 and 2 diabetes.&lt;br /&gt;&lt;br&gt; For more information on novel basal insulin analog clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=ly2605541"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Diabetes', 1),
(35, 96, 'p70/AKT inh&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'p70 S6 Kinase/AKT Dual Inhibitor', '"p70 S6 Kinase/AKT Dual Inhibitor" is a chemical entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(36, 85, 'IL-1 &Beta; MAb &lt;br&gt;CV disease', 'pink', 'none', 'on', 'New Molecular Entity.', 'IL-1 &szlig; Monoclonal Antibody', '"IL-1 Beta Monoclonal Antibody" is a biologic entity being studied for the treatment of cardiovascular disease.', '', 'Research', 0),
(37, 64, 'TGF-&Beta;R1 inh&lt;br&gt;cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'TGF-&szlig;RI Kinase Inhibitor', 'LY2157299 (TGF-&szlig; RI kinase inhibitor) is a chemical entity kinase inhibitor designed to selectively block transforming growth factor-&beta; signaling. LY2157299 is being studied for the treatment of a variety of cancers, such as liver cancer and brain cancer.&lt;br /&gt;&lt;br&gt; For more information on LY2157299 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2157299"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(38, 92, 'diabetes', 'pink', 'lost_molecule', 'on', 'New Molecular Entity.', 'Diabetes', 'New biologic entity.', '', 'Research', 0),
(41, 112, 'FGF receptor inh &lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'FGF Receptor Inhibitor', '"FGF Receptor Inhibitor" is a chemical entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(42, 75, 'GSK3&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'GSK3 Inhibitor', 'LY2090314 (GSK3 inhibitor) is a chemical entity that is an ATP-competitive inhibitor of glycogen synthase kinase-3&beta;. LY2090314 is being studied for the treatment of cancer.&lt;br /&gt;&lt;br&gt; For more information on LY2090314 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2090314"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(43, 67, '11&beta;-HSD1 inh&lt;br&gt; diabetes', 'pink', 'none', 'on', 'New Molecular Entity.', '11&beta;-HSD1 Inhibitor', 'LY2523199 (11&szlig;-HSD1 inhibitor) is a chemical entity that inhibits beta-hydroxysteroid dehydrogenase type 1. LY2523199 is being studied for the treatment of type 2 diabetes.\r\n\r\n&lt;br /&gt;&lt;br&gt; For more information on LY2523199 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2523199"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 0),
(109, 0, 'c-Met MAb&lt;br&gt;cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'c-Met Monoclonal Antibody', 'LY2875358 (c-Met monoclonal antibody) is a biologic entity that binds to the hepatocyte growth factor receptor with neutralization and internalization activities. LY2875358 is being studied for the treatment of cancer. &lt;br /&gt;&lt;br&gt; For more information on LY2875358 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2875358"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(47, 118, 'Gem prodrug &lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Gemcitabine Prodrug', '"Gemcitabine Prodrug" is a chemical entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(120, 0, 'diabetes', 'pink', 'achived_milestone_molecule', 'on', 'New Molecular Entity. ', 'Diabetes', 'New biologic entity.', '', 'Research', 0),
(50, 98, 'cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Cancer', 'New biologic entity.', '', 'Oncology', 1),
(51, 95, 'Hedgehog antag &lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Hedgehog/SMO Antagonist', 'LY2940680 (hedgehog/SMO antagonist) is a chemical entity that binds to the SMO receptor and inhibits Sonic hedgehog-dependent expression of genes. LY2940680 is being studied for the treatment of cancer.&lt;br /&gt;&lt;br&gt; For more information on LY2940680 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2940680"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(52, 119, 'NOTCH inh&lt;br&gt; cancer', 'pink', 'achived_milestone_molecule', 'on', 'New Molecular Entity.', 'NOTCH Inhibitor', '"NOTCH Inhibitor" is a chemical entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(55, 86, 'diabetes', 'pink', 'none', 'on', 'New Molecular Entity.', 'Diabetes', 'New biologic entity.', '', 'Research', 0),
(56, 111, 'Chk1 inh &lt;h6&gt;II&lt;/h6&gt;&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Chk1 Inhibitor &lt;h6&gt;&lt;b&gt;II&lt;/b&gt;&lt;/h6&gt;', 'LY2606368 (Chk1 Inhibitor &lt;h6&gt;II&lt;/h6&gt;) is a chemical entity that inhibits checkpoint kinase 1 (Chk1), a global regulator of the mammalian cell cycle. LY2606368 is being studied for the treatment of cancer.&lt;br /&gt;&lt;br&gt; For more information on LY2606368 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2606368"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;\r\n', '', 'Oncology', 1),
(57, 105, 'CDK 4/6 inh&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'CDK 4/6 Dual Inhibitor', 'LY2835219 (CDK 4/6 dual inhibitor) is a chemical entity that inhibits the cyclin dependent kinases (CDK) 4 and 6 and blocks phosphorylation of the Rb tumor suppressor protein. LY2835219 is being studied for the treatment of cancer. &lt;br /&gt;&lt;br&gt; For more information on LY2835219 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2835219"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(121, 0, 'diabetes', 'pink', 'achived_milestone_molecule', 'on', 'New Molecular Entity. ', 'Diabetes', 'New chemical entity.', '', 'Research', 0),
(113, 0, 'chronic kidney&lt;br&gt; disease', 'pink', 'none', 'on', 'New Molecular Entity.', 'Chronic Kidney Disease', 'New biologic entity.', '', 'Research', 0),
(61, 106, 'Ferroportin MAb&lt;br&gt; anemia', 'pink', 'none', 'on', 'New Molecular Entity.', 'Ferroportin Monoclonal Antibody', '"Ferroportin Monoclonal Antibody" is a biologic entity being studied for the treatment of anemia.', '', 'Oncology', 1),
(62, 101, 'Hepcidin MAb &lt;br&gt; anemia', 'pink', 'none', 'on', 'New Molecular Entity.', 'Hepcidin Monoclonal Antibody', '"Hepcidin Monoclonal Antibody" is a biologic entity being studied for the treatment of anemia.', '', 'Oncology', 1),
(63, 90, 'p38 MAP inh &lt;h6&gt;II&lt;/h6&gt;&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'p38 MAP Kinase Inhibitor &lt;h6&gt;&lt;b&gt;II&lt;/b&gt;&lt;/h6&gt;', '"p38 MAP Kinase Inhibitor &lt;h6&gt;II&lt;/h6&gt;" is a chemical entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(66, 117, 'c-Met inh &lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'c-Met Inhibitor', '"c-Met Inhibitor" is a chemical entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(67, 107, 'JAK2 inh&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'JAK2 Inhibitor', 'LY2784544 (JAK2 inhibitor) is a chemical entity that inhibits the activity of the Janus (JAK) 2 enzyme. LY2784544 is being studied for the treatment of myeloproliferative neoplasms.&lt;br /&gt;&lt;br&gt; For more information on LY2784544 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2784544"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;\r\n', '', 'Oncology', 1),
(68, 81, 'Olaratumab&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'Olaratumab (oh lar" a tue'' mab) (IMC-3G3)', 'LY3012207 (olaratumab) is a biologic entity that targets the platelet derived growth factor receptor alpha (PDGFR&alpha;). LY3012207 is being studied for the treatment of non-small cell lung cancer.&lt;br /&gt;&lt;br&gt; For more information on olaratumab clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=IMC-3G3"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(69, 110, '&beta; secretase inh&lt;br&gt;Alzheimer''s', 'pink', 'none', 'on', 'New Molecular Entity.', '&beta; Secretase Inhibitor', 'LY2886721 (&szlig; secretase inhibitor) is a chemical entity that blocks the formation of A&szlig; resulting from the cleavage of amyloid precursor protein (APP). LY2886721 is being studied for its ability to slow the progression of Alzheimer''s disease.&lt;br /&gt;&lt;br&gt; For more information on LY2886721 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2886721"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 0),
(71, 114, 'VEGFR3 MAb &lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'VEGFR3 Monoclonal Antibody', '"VEGFR3 Monoclonal Antibody" is a biologic entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(107, 0, 'diabetes', 'pink', 'none', 'on', 'New Molecular Entity.', 'Diabetes', 'New biologic entity.', '', 'Research', 0),
(95, 94, 'CXCR4 pept inh&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'CXCR4 Peptide Inhibitor', 'LY2510924 (CXCR4 peptide inhibitor) is a biologic entity that antagonizes ligand binding to the CXC chemokine receptor 4. LY2510924 is being studied for the treatment of cancer.&lt;br /&gt;&lt;br&gt; For more information on LY2510924 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2510924"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Oncology', 1),
(89, 103, 'MR antagonist&lt;br&gt;CRD', 'pink', 'none', 'on', 'New Molecular Entity.', 'Mineralocorticoid Receptor Antagonist', 'LY2623091 (mineralocorticoid receptor antagonist) is a chemical entity that inhibits the interaction between aldosterone and its receptor. LY2623091 is being studied for the treatment of renal disease associated with diabetes.&lt;br /&gt;&lt;br&gt; For more information on LY2623091 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2623091" target="_blank"&gt;&lt;u&gt;here&lt;/u&gt;.&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 0),
(91, 99, 'migraine&lt;br&gt;prevention', 'pink', 'none', 'on', 'New Molecular Entity.', 'Migraine Prevention', 'LY2951742 is a biologic entity being studied for the prophylaxis of migraine.\r\n&lt;br /&gt;&lt;br&gt; For more information on LY2951742 clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=LY2951742"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Research', 1),
(92, 116, 'bipolar&lt;br&gt;disorder', 'pink', 'none', 'on', 'New Molecular Entity.', 'Bipolar Disorder', 'New chemical entity.', '', 'Research', 0),
(96, 108, 'RON MAb&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'RON Monoclonal Antibody', '"RON Monoclonal Antibody" is a biologic entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(102, 109, '*New Ins Glar Product&lt;br&gt;diabetes ', 'pink', 'none', 'on', 'New Molecular Entity.', '*New Insulin Glargine Product', 'LY2963016 (new insulin glargine product) is a biologic entity that is a basal insulin. It is being studied for the treatment of type 1 and 2 diabetes.&lt;br /&gt;&lt;br&gt; For more information on new insulin glargine product clinical studies, click &lt;a href="http://clinicaltrials.gov/ct2/results?term=ly2963016"target="_blank"&gt;here&lt;/A&gt;.&lt;/u&gt;&lt;/a&gt;&lt;br /&gt;\r\n&lt;br&gt; &lt;p style="font-size:10px;"&gt;\r\n NOTE: If you click on the link above it will take you to a site maintained by a third party, which is solely responsible for its content.&lt;/p&gt;', '', 'Diabetes', 1),
(103, 0, 'CV disease', 'pink', 'none', 'on', 'New Molecular Entity.', 'Cardiovascular Disease', 'New biologic entity.', '', 'Research', 0),
(104, 0, 'CSF-1R MAb&lt;br&gt; cancer', 'pink', 'none', 'on', 'New Molecular Entity.', 'CSF-1R Monoclonal Antibody', '"CSF-1R Monoclonal Antibody" is a biologic entity being studied for the treatment of cancer.', '', 'Oncology', 1),
(108, 0, 'osteoarthritis&lt;br&gt;pain', 'pink', 'none', 'on', 'New Molecular Entity.', 'Osteoarthritis Pain', 'New chemical entity.', '', 'Research', 0),
(116, 0, 'insomnia', 'pink', 'lost_molecule', 'on', 'New Molecular Entity.', 'Insomnia', 'New chemical entity.', '', 'Research', 0),
(112, 0, 'CV disease', 'pink', 'lost_molecule', 'on', 'New Molecular Entity.', 'Cardiovascular Disease', 'New chemical entity.', '', 'Research', 0),
(115, 0, 'cognitive impair schizophrenia', 'pink', 'none', 'on', 'New Molecular Entity.', 'Cognitive Impairment in Schizophrenia', 'New chemical entity. ', '', 'Research', 0),
(122, 0, 'diabetes', 'pink', 'achived_milestone_molecule', 'on', 'New Molecular Entity. ', 'Diabetes', 'New chemical entity.', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cell_pages`
--

DROP TABLE IF EXISTS `cell_pages`;
CREATE TABLE IF NOT EXISTS `cell_pages` (
  `cell_page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cell_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`cell_page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9486 ;

--
-- Dumping data for table `cell_pages`
--

INSERT INTO `cell_pages` (`cell_page_id`, `cell_id`, `page_id`) VALUES
(8968, 62, 13),
(9386, 71, 13),
(8950, 96, 13),
(9265, 116, 13),
(9100, 35, 13),
(9235, 63, 13),
(9464, 52, 13),
(9440, 67, 13),
(9434, 51, 13),
(9022, 113, 13),
(8971, 47, 13),
(8974, 41, 13),
(8977, 61, 13),
(9428, 95, 13),
(8989, 66, 13),
(9422, 56, 13),
(9413, 57, 13),
(9250, 112, 13),
(9338, 91, 13),
(9455, 120, 13),
(9010, 92, 13),
(9404, 69, 13),
(8983, 50, 13),
(9398, 89, 13),
(9016, 55, 13),
(9359, 38, 13),
(9169, 36, 13),
(9461, 122, 13),
(9443, 32, 13),
(9446, 37, 13),
(9449, 68, 13),
(9431, 42, 13),
(9284, 117, 13),
(8953, 29, 13),
(9458, 121, 13),
(9395, 25, 13),
(9308, 34, 13),
(9476, 72, 13),
(9392, 43, 13),
(8779, 27, 13),
(9425, 19, 13),
(9419, 28, 13),
(9401, 33, 13),
(9256, 22, 13),
(9473, 24, 14),
(9365, 14, 14),
(8698, 6, 13),
(9479, 11, 13),
(8695, 7, 13),
(9166, 9, 13),
(9163, 8, 13),
(9374, 21, 13),
(8686, 13, 13),
(8896, 12, 13),
(9353, 10, 14),
(9019, 107, 13),
(9028, 103, 13),
(9148, 115, 13),
(9147, 115, 10),
(9485, 76, 13),
(9470, 118, 13),
(9469, 118, 11),
(9142, 110, 13),
(8818, 2, 14),
(9484, 76, 8),
(9027, 103, 7),
(9234, 63, 11),
(8949, 96, 11),
(8948, 96, 1),
(9427, 95, 11),
(8952, 29, 11),
(9249, 112, 7),
(9264, 116, 10),
(9018, 107, 8),
(9017, 107, 1),
(9009, 92, 10),
(9008, 92, 1),
(9454, 120, 8),
(8982, 50, 11),
(9337, 91, 10),
(9021, 113, 7),
(8988, 66, 11),
(9439, 67, 11),
(9336, 91, 1),
(8981, 50, 1),
(9433, 51, 11),
(9412, 57, 11),
(8976, 61, 11),
(9448, 68, 11),
(9460, 122, 8),
(9463, 52, 11),
(8967, 62, 11),
(9403, 69, 10),
(9397, 89, 8),
(9396, 89, 1),
(9015, 55, 8),
(9358, 38, 8),
(9426, 95, 1),
(8987, 66, 1),
(9475, 72, 9),
(9020, 113, 1),
(9385, 71, 11),
(9411, 57, 1),
(9432, 51, 1),
(9438, 67, 1),
(9472, 24, 13),
(9099, 35, 11),
(8817, 2, 13),
(8973, 41, 11),
(9141, 110, 11),
(8970, 47, 11),
(8697, 6, 11),
(9263, 116, 1),
(8694, 7, 11),
(9421, 56, 11),
(9165, 9, 10),
(9462, 52, 1),
(8685, 13, 8),
(8966, 62, 1),
(8895, 12, 8),
(9402, 69, 1),
(9478, 11, 11),
(8975, 61, 1),
(9352, 10, 13),
(8893, 102, 13),
(9364, 14, 13),
(9410, 109, 13),
(9442, 32, 11),
(9146, 115, 1),
(9424, 19, 11),
(9468, 118, 1),
(9445, 37, 11),
(9373, 21, 10),
(9255, 22, 7),
(9457, 121, 8),
(9471, 24, 1),
(9248, 112, 1),
(9447, 68, 1),
(9430, 42, 11),
(9283, 117, 11),
(9282, 117, 1),
(8778, 27, 9),
(8951, 29, 1),
(9418, 28, 11),
(9423, 19, 1),
(9140, 110, 1),
(9417, 28, 1),
(9483, 76, 1),
(9441, 32, 1),
(9400, 33, 8),
(8777, 27, 1),
(9307, 34, 8),
(9399, 33, 1),
(9098, 35, 1),
(9409, 109, 11),
(9168, 36, 7),
(9306, 34, 1),
(9444, 37, 1),
(9394, 25, 8),
(9357, 38, 1),
(9391, 43, 8),
(9167, 36, 1),
(8972, 41, 1),
(9254, 22, 1),
(9429, 42, 1),
(9363, 14, 1),
(9390, 43, 1),
(9164, 9, 1),
(9456, 121, 1),
(8696, 6, 1),
(9408, 109, 1),
(9477, 11, 1),
(9184, 108, 13),
(8684, 13, 1),
(8969, 47, 1),
(8894, 12, 1),
(9420, 56, 1),
(9162, 8, 10),
(9233, 63, 1),
(9372, 21, 1),
(9459, 122, 1),
(8693, 7, 1),
(9351, 10, 1),
(9453, 120, 1),
(8816, 2, 1),
(9014, 55, 1),
(9393, 25, 1),
(9474, 72, 1),
(9384, 71, 1),
(9161, 8, 1),
(8892, 102, 8),
(8891, 102, 1),
(9026, 103, 1),
(8980, 104, 13),
(8979, 104, 11),
(8978, 104, 1),
(9183, 108, 10),
(9182, 108, 1),
(9467, 119, 13),
(9466, 119, 10),
(9465, 119, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cell_page_postitions`
--

DROP TABLE IF EXISTS `cell_page_postitions`;
CREATE TABLE IF NOT EXISTS `cell_page_postitions` (
  `cell_page_position_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cell_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  `position` int(11) unsigned NOT NULL,
  PRIMARY KEY (`cell_page_position_id`),
  KEY `cell_id` (`cell_id`,`page_id`,`position`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=313 ;

--
-- Dumping data for table `cell_page_postitions`
--

INSERT INTO `cell_page_postitions` (`cell_page_position_id`, `cell_id`, `page_id`, `position`) VALUES
(2, 2, 1, 1),
(262, 110, 11, 100),
(291, 118, 13, 64),
(259, 109, 13, 69),
(8, 76, 1, 7),
(249, 107, 1, 95),
(282, 115, 13, 102),
(12, 10, 1, 39),
(13, 13, 1, 42),
(14, 8, 1, 45),
(15, 7, 1, 47),
(16, 6, 1, 49),
(17, 12, 1, 41),
(18, 21, 1, 114),
(19, 9, 1, 46),
(20, 11, 1, 48),
(21, 14, 1, 38),
(22, 33, 1, 58),
(23, 28, 1, 67),
(25, 24, 1, 37),
(26, 27, 1, 59),
(27, 19, 1, 69),
(29, 22, 1, 40),
(31, 29, 1, 75),
(32, 37, 1, 77),
(33, 43, 1, 55),
(288, 117, 13, 113),
(36, 32, 1, 73),
(37, 34, 1, 44),
(303, 121, 13, 99),
(39, 42, 1, 71),
(41, 25, 1, 56),
(43, 68, 1, 76),
(45, 36, 1, 91),
(46, 55, 1, 96),
(274, 113, 13, 94),
(50, 63, 1, 116),
(52, 38, 1, 97),
(297, 120, 13, 98),
(54, 95, 1, 70),
(55, 51, 1, 72),
(56, 35, 1, 117),
(298, 121, 1, 99),
(58, 50, 1, 106),
(59, 91, 1, 63),
(268, 112, 7, 94),
(61, 62, 1, 111),
(284, 116, 10, 93),
(63, 89, 1, 57),
(252, 108, 1, 103),
(65, 57, 1, 66),
(66, 61, 1, 108),
(67, 67, 1, 74),
(68, 96, 1, 118),
(69, 102, 1, 43),
(70, 69, 1, 60),
(71, 56, 1, 68),
(72, 41, 1, 109),
(73, 72, 1, 61),
(74, 71, 1, 119),
(76, 92, 1, 101),
(77, 66, 1, 105),
(78, 47, 1, 110),
(79, 52, 1, 112),
(290, 118, 11, 56),
(81, 22, 7, 37),
(82, 36, 7, 91),
(299, 122, 1, 100),
(258, 109, 11, 55),
(87, 76, 8, 7),
(88, 13, 8, 38),
(89, 12, 8, 37),
(90, 33, 8, 58),
(91, 43, 8, 55),
(92, 34, 8, 40),
(93, 25, 8, 56),
(94, 55, 8, 92),
(95, 38, 8, 93),
(96, 89, 8, 57),
(97, 102, 8, 39),
(100, 27, 9, 55),
(270, 50, 11, 92),
(261, 110, 1, 115),
(281, 115, 10, 92),
(104, 8, 10, 37),
(105, 21, 10, 95),
(106, 9, 10, 38),
(302, 121, 8, 96),
(296, 120, 8, 94),
(113, 91, 10, 57),
(251, 107, 13, 95),
(115, 69, 10, 55),
(116, 92, 10, 91),
(119, 7, 11, 37),
(120, 6, 11, 39),
(121, 11, 11, 38),
(122, 28, 11, 58),
(124, 19, 11, 60),
(126, 29, 11, 66),
(127, 37, 11, 68),
(287, 117, 11, 99),
(129, 32, 11, 64),
(130, 42, 11, 62),
(131, 68, 11, 67),
(273, 113, 7, 92),
(134, 63, 11, 101),
(135, 95, 11, 61),
(136, 51, 11, 63),
(137, 35, 11, 102),
(267, 112, 1, 92),
(139, 62, 11, 97),
(285, 116, 13, 104),
(141, 57, 11, 57),
(142, 61, 11, 94),
(143, 67, 11, 65),
(144, 96, 11, 103),
(145, 56, 11, 59),
(146, 41, 11, 95),
(245, 72, 9, 56),
(148, 71, 11, 104),
(149, 66, 11, 91),
(150, 47, 11, 96),
(151, 52, 11, 98),
(244, 103, 13, 93),
(156, 2, 13, 1),
(289, 118, 1, 65),
(275, 108, 10, 94),
(162, 76, 13, 7),
(243, 102, 13, 43),
(280, 115, 1, 102),
(166, 10, 13, 39),
(167, 13, 13, 42),
(168, 8, 13, 45),
(169, 7, 13, 47),
(170, 6, 13, 49),
(171, 12, 13, 41),
(172, 21, 13, 114),
(173, 9, 13, 46),
(174, 11, 13, 48),
(175, 14, 13, 38),
(176, 33, 13, 58),
(177, 28, 13, 60),
(179, 24, 13, 37),
(180, 27, 13, 59),
(181, 19, 13, 68),
(183, 22, 13, 40),
(185, 29, 13, 75),
(186, 37, 13, 77),
(187, 43, 13, 55),
(269, 112, 13, 92),
(286, 117, 1, 113),
(190, 32, 13, 73),
(191, 34, 13, 44),
(301, 122, 13, 100),
(193, 42, 13, 71),
(255, 109, 1, 64),
(195, 25, 13, 56),
(197, 68, 13, 76),
(199, 36, 13, 91),
(200, 55, 13, 96),
(272, 113, 1, 94),
(204, 63, 13, 116),
(206, 38, 13, 97),
(295, 120, 1, 98),
(208, 95, 13, 70),
(209, 51, 13, 72),
(210, 35, 13, 117),
(300, 122, 8, 95),
(212, 50, 13, 106),
(213, 91, 13, 63),
(283, 116, 1, 104),
(215, 62, 13, 111),
(263, 110, 13, 115),
(217, 89, 13, 57),
(250, 107, 8, 91),
(219, 57, 13, 65),
(220, 61, 13, 108),
(221, 67, 13, 74),
(222, 96, 13, 118),
(223, 69, 13, 66),
(224, 56, 13, 67),
(225, 41, 13, 109),
(226, 72, 13, 61),
(227, 71, 13, 119),
(229, 92, 13, 101),
(230, 66, 13, 105),
(231, 47, 13, 110),
(232, 52, 13, 112),
(233, 2, 14, 1),
(234, 10, 14, 39),
(235, 14, 14, 38),
(236, 24, 14, 37),
(238, 103, 1, 93),
(239, 103, 7, 93),
(240, 104, 1, 107),
(241, 104, 11, 93),
(242, 104, 13, 107),
(254, 108, 13, 103),
(292, 119, 1, 62),
(293, 119, 10, 56),
(294, 119, 13, 62);

-- --------------------------------------------------------

--
-- Table structure for table `full_legend`
--

DROP TABLE IF EXISTS `full_legend`;
CREATE TABLE IF NOT EXISTS `full_legend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `full_legend`
--

INSERT INTO `full_legend` (`id`, `name`, `content`) VALUES
(1, 'top_p', '<p>Thank you for visiting Lilly&rsquo;s Clinical Development Pipeline website. This interactive page is designed to help you better understand the information contained on the site, particularly as it relates to the molecules Lilly is currently developing for patients worldwide who are waiting. We encourage you to click on the content on this page &ndash; including the dates on the left, the abbreviations below and the terms in the legend to the right &ndash; for helpful definitions and background information. Additionally, below are responses to some frequently asked questions regarding the site&rsquo;s information and how it is displayed.&nbsp;</p>\r\n<p class="MsoNormal">&nbsp;</p>\r\n<p class="MsoNormal">We hope that after exploring this page, you find Lilly&rsquo;s Clinical Development Pipeline website educational and easy to navigate.&nbsp;</p>'),
(2, 'abbrev', '<p><strong>Disease-related</strong></p>\r\n<ul>\r\n<li><strong>ACS:</strong> acute coronary syndrome</li>\r\n<li><strong>CRD:</strong> chronic renal (kidney) disease</li>\r\n<li><strong>CV:</strong> cardiovascular</li>\r\n<li><strong>DLBCL:</strong> diffuse large b-cell lymphoma</li>\r\n<li><strong>EPI:</strong> exocrine pancreatic insufficiency</li>\r\n<li><strong>NSCLC:</strong> non-small cell lung cancer</li>\r\n<li><strong>RA:</strong> rheumatoid arthritis&nbsp;</li>\r\n</ul>\r\n<p><br /><strong>Molecule-related</strong></p>\r\n<ul>\r\n<li><strong>Antag:</strong> antagonist</li>\r\n<li><strong><span style="font-family: verdana, helvetica, arial, sans-serif; font-size: 12px;">&beta;</span></strong>: beta</li>\r\n<li><strong>Inh:</strong> inhibitor</li>\r\n<li><strong>MAb:</strong>&nbsp;monoclonal antibody</li>\r\n<li><strong>Pept</strong>: peptide</li>\r\n</ul>'),
(3, 'faq', '<p><strong>What is the significance of the position of a molecule within a particular phase of development (Phase I, II, III or Regulatory Review) as compared to other molecules in that same phase?&nbsp;</strong></p>\r\n<p>Molecules are grouped by therapeutic area, but there is no significance to a molecule&rsquo;s placement within a phase.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>What is the significance of the indications listed for each molecule?&nbsp;</strong></p>\r\n<p>For each molecule, the lead indication, or indication that is furthest along in clinical development, is listed in the molecule&rsquo;s &ldquo;box&rdquo; on the pipeline overview page. If a molecule is being studied for multiple indications, <em>select</em> additional indications will be listed in the molecule&rsquo;s full description, which is displayed once you click the molecule&rsquo;s box on the pipeline overview page.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>For New Indication or Line Extension (NILEX) molecules, the indication listed is the lead indication undergoing clinical study and not the indication which is already approved by the U.S. Food and Drug Administration (FDA). &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Why are some molecules not identified and simply referred to by therapeutic area (e.g., diabetes)?&nbsp;</strong></p>\r\n<p>For competitive reasons, some pipeline molecules are not identified; in those instances, only the therapeutic area in which the molecule is being studied is listed.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>How does Lilly determine when a molecule enters a particular phase of clinical development?&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p>- Lilly considers Phase I clinical development to be underway once the first <span style="text-decoration: underline;"><strong>human</strong> </span>dose has been given.</p>\r\n<p>- Lilly considers Phase II clinical development to be underway once the first <span style="text-decoration: underline;"><strong>efficacy</strong> </span>dose has been given.</p>\r\n<p>- Lilly considers Phase III clinical development to be underway once the first <span style="text-decoration: underline;"><strong>registration</strong> </span>dose has been given.</p>\r\n<p>- Lilly considers regulatory review to be underway when the first <span style="text-decoration: underline;"><strong>submission</strong></span> has been has been made.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>How does Lilly define First Human Dose?</strong></p>\r\n<p>Lilly defines First Human Dose as the date of the first dose administered in the initial clinical study of the molecule given to healthy volunteers. This is typically a single dose pharmacokinetic safety study (study of how the investigational medicine acts on the body over a period of time, from a safety perspective). This dose may be active LY, placebo or comparator.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>In some cases, like oncology and autoimmunity, the First Human Dose is given to patients with the disease the molecule is being studied to treat.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>How does Lilly define of First Efficacy Dose?</strong></p>\r\n<p>Lilly defines First Efficacy Dose as the date of the first dose administered to patients with the disease the molecule is being studied to treat, in a clinical study in which efficacy is a primary endpoint. The outcome of the clinical study should provide meaningful data on efficacy that drives a decision on whether or not to pursue development of the targeted indication for the molecule. This dose may be active LY, placebo or comparator. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>How does Lilly define First Registration Dose?</strong></p>\r\n<p>Lilly defines First Registration Dose as the date of the first dose administered in the first large-scale pivotal study designed or intended to support registration in a major market (U.S., EU or Japan). This may occur before all Phase II studies have been completed. This dose may be active LY, placebo or comparator.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>How does Lilly define First Submission?</strong></p>\r\n<p>Lilly defines First Submission as the initial submission of a regulatory dossier to a health authority to obtain regulatory approval for Lilly to market any indication or product form of a potential new medicine in one of the major markets (U.S., EU, China or Japan). &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Why are some molecules listed on the pipeline website in Phase II clinical development, but noted as Phase I on ClinicalTrials.gov?</strong></p>\r\n<p>Lilly defines the start of Phase II as the first dose in a clinical study for the purpose of evaluating efficacy, whether that occurs in a Phase I cohort or a separate Phase II study. Some oncology pipeline molecules are considered by Lilly to be in Phase II clinical development, although ClinicalTrials.gov lists them as Phase I based on a Phase I study.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Why are only some of Lilly&rsquo;s Phase I studies listed on ClinicalTrials.gov?&nbsp;</strong></p>\r\n<p>Registry of a Phase I clinical study on ClinicalTrials.gov is not required by the FDA. Lilly began registering all Phase I clinical studies commencing on or after October 1, 2010 as part of a PhRMA commitment. Some Phase I studies were initiated prior to this time frame, and therefore are not registered on ClinicalTrials.gov.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Why are some molecules in the pipeline followed by a I or II?&nbsp;</strong></p>\r\n<p>In some cases, the pipeline includes two or more molecules that act on the same disease target (e.g., Chk inh I and Chk inh II, both in Phase II development). To distinguish these molecules until a nonproprietary name is granted, they are numbered on Lilly&rsquo;s pipeline website.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>What is a commercial collaboration?&nbsp;</strong></p>\r\n<p>Some pipeline molecules will be commercialized (sold and marketed) with other companies after the medicine is approved. This is referred to as a commercial collaboration.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Commercial collaborations include:</strong></p>\r\n<p>- Empaglaflozin (from Boehringer Ingelheim)</p>\r\n<p>- Necitumumab (with Bristol-Myers Squibb)</p>\r\n<p>- New Insulin Glargine product (with Boehringer Ingelheim)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>What is the difference between a chemical and biologic entity?&nbsp;</strong></p>\r\n<p>A new chemical entity is a molecule that is chemically derived, or synthesized through chemical processes. These are referred to as small molecules and are typically administered orally. A new biologic entity is comprised of biological products such as proteins, peptides or antibodies. These are referred to as large molecules and are typically administered intravenously.&nbsp;</p>'),
(4, 'description', '* Commercial Collaboration');

-- --------------------------------------------------------

--
-- Table structure for table `general_information`
--

DROP TABLE IF EXISTS `general_information`;
CREATE TABLE IF NOT EXISTS `general_information` (
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `name` (`name`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_information`
--

INSERT INTO `general_information` (`name`, `value`) VALUES
('data_last_update', 'January 21, 2013'),
('since', 'October 17, 2012'),
('pipeline_info', '<b>Pipeline Disclaimer</b><br />The information included on this site reflects Eli Lilly and Company''s clinical development pipeline and is not intended for promotional purposes. It includes both new molecular entities as well as select new indications or line extensions of currently-approved products, that are in clinical development. There are significant risks and uncertainties in pharmaceutical research and development. Scientific and regulatory hurdles may cause pipeline molecules to be discontinued, delayed or fail to reach the market. There can be no guarantee that pipeline molecules will receive regulatory approval or that they will prove to be commercially successful. Information is current as of January 21, 2013. Lilly assumes no duty to update this information. \r\n<br><br>\r\nFor competitive reasons, some pipeline molecules are not identified; in those instances, only the therapeutic area in which the molecule is being studied is listed.'),
('clinical_trials', 'Please note:  If you click <a href="http://www.clinicaltrials.gov" TARGET="_blank"><u>this link</u></a> you will be leaving Lilly.com    '),
('title_1', 'Regulatory Review'),
('title_2', 'Select New Indication or Line Extension (NILEX)'),
('title_3', 'Phase III'),
('title_4', 'Phase II'),
('title_5', 'Phase I'),
('top_description', 'Lilly currently has an unprecedented number of molecules in clinical development. The company is generating potential biotech solutions alongside more traditional chemistry-based work in order to deliver innovative treatments to patients for a wide range of diseases, including cancer, diabetes, osteoporosis, rheumatoid arthritis and Alzheimer''s disease.<br /><br />One of Lilly''s most promising areas of research and development concerns personalized medicine, more broadly defined as tailored therapies. The ultimate goal is to provide improved outcomes for individual patients.<br /><br />For a look at the unique molecules in Lilly''s clinical development pipeline, please explore our interactive pipeline website below.'),
('video_description', 'Learn more about the Lilly Interactive Pipeline Website from Jan Lundberg, Ph.D., executive vice president of science and technology, Lilly, and president, Lilly Research Laboratories'),
('phase_1_desc', 'Investigates the safety of a molecule, how it behaves in the human body and possible side effects in a small number of healthy people who do not have the disease.'),
('phase_1_molecules', '34'),
('phase_2_desc', 'Investigates a molecules efficacy and short-term side effect profile in a small number of patients who have the disease.'),
('phase_2_molecules', '24'),
('phase_3_desc', 'Seeks definitive proof of a molecules efficacy and safety profile in a large number of patients who have the disease.'),
('phase_3_molecules', '9'),
('regulatory_desc', 'New Drug Application (NDA) is filed with the U.S. Food and Drug Administration (FDA).'),
('regulatory_molecules', '3'),
('nilex_desc', 'A medicine being investigated to treat a different disease or for which a different formulation is being studied.'),
('nilex_molecules', '11'),
('bottom_description', 'The following information reflects Eli Lilly and Company''s clinical development pipeline and is not intended for promotional purposes. It includes both new molecular entities as well as select new indications or line extensions of currently-approved products, that are currently in clinical development. For competitive reasons, some pipeline molecules are not identified; in those instances, only the therapeutic area in which the molecule is being evaluated is listed.There are significant risks and uncertainties in pharmaceutical research and development. Scientific and regulatory hurdles may cause pipeline molecules to be discontinued, delayed or fail to reach the market. There can be no guarantee that pipeline molecules will receive regulatory approval or that they will prove to be commercially successful. Information on the following slide is current as of June 16, 2011. Lilly assumes no duty to update this information.'),
('analytics', '<!-- START OF SmartSource Data Collector TAG -->\r\n<!-- Copyright (c) 1996-2010 WebTrends Inc.  All rights reserved. -->\r\n<!-- Version: 9.3.0 -->\r\n<!-- Tag Builder Version: 3.1  -->\r\n<!-- Created: 2/10/2011 5:17:20 PM -->\r\n<script src="webtrends.js" type="text/javascript"></script>\r\n<!-- ----------------------------------------------------------------------------------- -->\r\n<!-- Warning: The two script blocks below must remain inline. Moving them to an external -->\r\n<!-- JavaScript include file can cause serious problems with cross-domain tracking.      -->\r\n<!-- ----------------------------------------------------------------------------------- -->\r\n<script type="text/javascript">\r\n//<![CDATA[\r\nvar _tag=new WebTrends();\r\n_tag.dcsGetId();\r\n//]]>\r\n</script>\r\n<script type="text/javascript">\r\n//<![CDATA[\r\n_tag.dcsCustom=function(){\r\n// Add custom parameters here.\r\n//_tag.DCSext.param_name=param_value;\r\n}\r\n_tag.dcsCollect();\r\n//]]>\r\n</script>\r\n<noscript>\r\n<div><img alt="DCSIMG" id="DCSIMG" width="1" height="1" src="http://statse.webtrendslive.com/dcskykqjqvz5bd05pjea7z15r_7k3s/njs.gif?dcsuri=/nojavascript&amp;WT.js=No&amp;WT.tv=9.3.0&amp;WT.dcssip=www.lilly.com,lilly.com,elilly.com"/></div>\r\n</noscript>\r\n<!-- END OF SmartSource Data Collector TAG -->');

-- --------------------------------------------------------

--
-- Table structure for table `legend`
--

DROP TABLE IF EXISTS `legend`;
CREATE TABLE IF NOT EXISTS `legend` (
  `legend_id` int(11) NOT NULL AUTO_INCREMENT,
  `legend_identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `legend_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `legend_tooltip` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`legend_id`),
  KEY `legend_identifier` (`legend_identifier`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `legend`
--

INSERT INTO `legend` (`legend_id`, `legend_identifier`, `legend_name`, `legend_tooltip`) VALUES
(1, 'new_molecule', 'New Molecule', 'Indicates a molecule that has entered Lilly&#039;s clinical development pipeline through acquisition.'),
(2, 'achived_milestone_molecule', 'Molecule That Achieved Milestone ', 'Indicates that a molecule has progressed from an earlier phase of clinical development into the next phase of development or has completed registration phase studies and has been submitted for regulatory review. '),
(3, 'scientific_name_given', 'Nonproprietary Name Granted', 'A nonproprietary name (also known as an established name or generic name) is a unique name for a molecule that follows naming conventions to reflect the characteristics of the molecule while distinguishing it from others that are available or in development. Nonproprietary names are proposed by the pharmaceutical company developing the molecule and recognized by official agencies (the United States Adopted Names Council, or USAN, in the U.S.) for general public use. The nonproprietary names are not subject to proprietary (trademark) rights like trade or brand names. &lt;br /&gt;&lt;br /&gt;A nonproprietary name may be granted at varying stages of clinical development and this timing does not have any significance in terms of the development status of the molecule. '),
(4, 'later_phase_molecule', 'Later Phase Indication Terminated', 'Indicates that the most advanced clinical study for a molecule has been terminated; however, Lilly plans to continue investigating the molecule for one or more additional indications in earlier phases of development.'),
(5, 'lost_molecule', 'Lost Through Attrition', 'Indicates that a molecule is no longer in active clinical development. The molecule will be removed from Lillyâ€™s pipeline website at the next update. ');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) unsigned NOT NULL,
  `page_description` text COLLATE utf8_unicode_ci NOT NULL,
  `page_attrition_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `page_position` int(11) unsigned NOT NULL,
  PRIMARY KEY (`page_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `parent_id`, `page_description`, `page_attrition_description`, `page_position`) VALUES
(1, 'Home', 0, '', '*Commercial Collaboration<br/><br/>', 1),
(7, 'Cardiovascular', 0, '', '* Commercial Collaboration', 3),
(8, 'Diabetes', 0, '', '* Commercial Collaboration', 4),
(9, 'Musculoskeletal', 0, '', '* Commercial Collaboration', 5),
(10, 'Neuroscience', 0, '', '* Commercial Collaboration', 6),
(11, 'Oncology', 0, '', '* Commercial Collaboration', 7),
(12, 'Urology', 0, '', '* Commercial Collaboration', 8),
(13, 'Emerging Markets', 0, 'The <b>Emerging Markets</b> business area will commercialize all Lilly approved products in the emerging markets which encompass all geographies EXCEPT Australia, Canada, Europe, Japan, New Zealand, and the United States.', '* Commercial Collaboration', 9),
(14, 'Autoimmunity', 0, '', '* Commercial Collaboration', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`),
  KEY `password` (`password`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `last_update`) VALUES
(1, 'admin', 'cc03e747a6afbbcbf8be7668acfebee5', 'alin.istrate@olivestudio.net', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
