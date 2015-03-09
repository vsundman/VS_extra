# WordPress MySQL database migration
#
# Generated: Monday 9. March 2015 16:04 UTC
# Hostname: localhost
# Database: `redentity`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `redentity_commentmeta`
#

DROP TABLE IF EXISTS `redentity_commentmeta`;


#
# Table structure of table `redentity_commentmeta`
#

CREATE TABLE `redentity_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_commentmeta`
#

#
# End of data contents of table `redentity_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `redentity_comments`
#

DROP TABLE IF EXISTS `redentity_comments`;


#
# Table structure of table `redentity_comments`
#

CREATE TABLE `redentity_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_comments`
#
INSERT INTO `redentity_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-03-06 05:18:24', '2015-03-06 05:18:24', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `redentity_comments`
# --------------------------------------------------------



#
# Delete any existing table `redentity_links`
#

DROP TABLE IF EXISTS `redentity_links`;


#
# Table structure of table `redentity_links`
#

CREATE TABLE `redentity_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_links`
#

#
# End of data contents of table `redentity_links`
# --------------------------------------------------------



#
# Delete any existing table `redentity_nf_objectmeta`
#

DROP TABLE IF EXISTS `redentity_nf_objectmeta`;


#
# Table structure of table `redentity_nf_objectmeta`
#

CREATE TABLE `redentity_nf_objectmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_nf_objectmeta`
#
INSERT INTO `redentity_nf_objectmeta` ( `id`, `object_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'date_updated', '2015-03-09'),
(2, 1, 'form_title', 'Contact Form'),
(3, 1, 'show_title', '0'),
(4, 1, 'save_subs', '1'),
(5, 1, 'logged_in', '0'),
(6, 1, 'append_page', '12'),
(7, 1, 'ajax', '1'),
(8, 1, 'clear_complete', '1'),
(9, 1, 'hide_complete', '1'),
(10, 1, 'success_msg', 'Your form has been successfully submitted.'),
(11, 1, 'email_from', ''),
(12, 1, 'email_type', 'html'),
(13, 1, 'user_email_msg', 'Thank you so much for contacting us. We will get back to you shortly.'),
(14, 1, 'user_email_fields', '0'),
(15, 1, 'admin_email_msg', ''),
(16, 1, 'admin_email_fields', '1'),
(17, 1, 'admin_attach_csv', '0'),
(18, 1, 'email_from_name', ''),
(19, 2, 'date_updated', '2014-09-09'),
(20, 2, 'active', '1'),
(21, 2, 'name', 'Email User'),
(22, 2, 'type', 'email'),
(23, 2, 'email_format', 'html'),
(24, 2, 'attach_csv', '1'),
(25, 2, 'from_name', ''),
(26, 2, 'from_address', ''),
(27, 2, 'reply_to', ''),
(28, 2, 'to', 'field_2'),
(29, 2, 'cc', ''),
(30, 2, 'bcc', ''),
(31, 2, 'email_subject', 'Thank you for contacting us!'),
(32, 2, 'email_message', 'Thank you so much for contacting us. We will get back to you shortly.'),
(33, 2, 'redirect_url', ''),
(34, 2, 'success_message_loc', 'ninja_forms_display_before_fields'),
(35, 2, 'success_msg', ''),
(36, 3, 'date_updated', '2014-09-09'),
(37, 3, 'active', '1'),
(38, 3, 'name', 'Success Message'),
(39, 3, 'type', 'success_message'),
(40, 3, 'email_format', 'html'),
(41, 3, 'attach_csv', '0'),
(42, 3, 'from_name', ''),
(43, 3, 'from_address', ''),
(44, 3, 'reply_to', ''),
(45, 3, 'to', ''),
(46, 3, 'cc', ''),
(47, 3, 'bcc', ''),
(48, 3, 'email_subject', ''),
(49, 3, 'email_message', ''),
(50, 3, 'redirect_url', ''),
(51, 3, 'success_message_loc', 'ninja_forms_display_after_fields'),
(52, 3, 'success_msg', 'Your form has been successfully submitted.'),
(53, 3, 'text_message_number', ''),
(54, 3, 'text_message_carrier', '0'),
(55, 3, 'text_message_message', ''),
(56, 4, 'date_updated', '2014-09-09'),
(57, 4, 'active', '1'),
(58, 4, 'name', 'Email Admin'),
(59, 4, 'type', 'email'),
(60, 4, 'email_format', 'html'),
(61, 4, 'attach_csv', '1'),
(62, 4, 'from_name', ''),
(63, 4, 'from_address', ''),
(64, 4, 'reply_to', 'field_2'),
(65, 4, 'to', ''),
(66, 4, 'cc', ''),
(67, 4, 'bcc', ''),
(68, 4, 'email_subject', 'Ninja Form Submission'),
(69, 4, 'email_message', '[ninja_forms_all_fields]'),
(70, 4, 'redirect_url', ''),
(71, 4, 'success_message_loc', 'ninja_forms_display_before_fields'),
(72, 4, 'success_msg', ''),
(73, 4, 'text_message_number', ''),
(74, 4, 'text_message_carrier', '0'),
(75, 4, 'text_message_message', ''),
(76, 1, 'not_logged_in_msg', ''),
(77, 1, 'sub_limit_number', ''),
(78, 1, 'sub_limit_msg', '') ;

#
# End of data contents of table `redentity_nf_objectmeta`
# --------------------------------------------------------



#
# Delete any existing table `redentity_nf_objects`
#

DROP TABLE IF EXISTS `redentity_nf_objects`;


#
# Table structure of table `redentity_nf_objects`
#

CREATE TABLE `redentity_nf_objects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_nf_objects`
#
INSERT INTO `redentity_nf_objects` ( `id`, `type`) VALUES
(1, 'form'),
(2, 'notification'),
(3, 'notification'),
(4, 'notification') ;

#
# End of data contents of table `redentity_nf_objects`
# --------------------------------------------------------



#
# Delete any existing table `redentity_nf_relationships`
#

DROP TABLE IF EXISTS `redentity_nf_relationships`;


#
# Table structure of table `redentity_nf_relationships`
#

CREATE TABLE `redentity_nf_relationships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `child_type` varchar(255) NOT NULL,
  `parent_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_nf_relationships`
#
INSERT INTO `redentity_nf_relationships` ( `id`, `child_id`, `parent_id`, `child_type`, `parent_type`) VALUES
(1, 2, 1, 'notification', 'form'),
(2, 3, 1, 'notification', 'form'),
(3, 4, 1, 'notification', 'form') ;

#
# End of data contents of table `redentity_nf_relationships`
# --------------------------------------------------------



#
# Delete any existing table `redentity_ninja_forms_fav_fields`
#

DROP TABLE IF EXISTS `redentity_ninja_forms_fav_fields`;


#
# Table structure of table `redentity_ninja_forms_fav_fields`
#

CREATE TABLE `redentity_ninja_forms_fav_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_type` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_ninja_forms_fav_fields`
#
INSERT INTO `redentity_ninja_forms_fav_fields` ( `id`, `row_type`, `type`, `order`, `data`, `name`) VALUES
(2, 0, '_list', 0, 'a:10:{s:5:"label";s:14:"State Dropdown";s:9:"label_pos";s:4:"left";s:9:"list_type";s:8:"dropdown";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:3:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:8:"selected";s:1:"0";}i:1;a:3:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:8:"selected";s:1:"0";}i:2;a:3:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:8:"selected";s:1:"0";}i:3;a:3:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:8:"selected";s:1:"0";}i:4;a:3:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:8:"selected";s:1:"0";}i:5;a:3:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:8:"selected";s:1:"0";}i:6;a:3:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:8:"selected";s:1:"0";}i:7;a:3:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:8:"selected";s:1:"0";}i:8;a:3:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:8:"selected";s:1:"0";}i:9;a:3:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:8:"selected";s:1:"0";}i:10;a:3:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:8:"selected";s:1:"0";}i:11;a:3:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:8:"selected";s:1:"0";}i:12;a:3:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:8:"selected";s:1:"0";}i:13;a:3:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:8:"selected";s:1:"0";}i:14;a:3:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:8:"selected";s:1:"0";}i:15;a:3:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:8:"selected";s:1:"0";}i:16;a:3:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:8:"selected";s:1:"0";}i:17;a:3:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:8:"selected";s:1:"0";}i:18;a:3:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:8:"selected";s:1:"0";}i:19;a:3:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:8:"selected";s:1:"0";}i:20;a:3:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:8:"selected";s:1:"0";}i:21;a:3:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:8:"selected";s:1:"0";}i:22;a:3:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:8:"selected";s:1:"0";}i:23;a:3:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:8:"selected";s:1:"0";}i:24;a:3:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:8:"selected";s:1:"0";}i:25;a:3:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:8:"selected";s:1:"0";}i:26;a:3:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:8:"selected";s:1:"0";}i:27;a:3:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:8:"selected";s:1:"0";}i:28;a:3:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:8:"selected";s:1:"0";}i:29;a:3:{s:5:"label";s:13:"New Hampshire";s:5:"value";s:2:"NH";s:8:"selected";s:1:"0";}i:30;a:3:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:8:"selected";s:1:"0";}i:31;a:3:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:8:"selected";s:1:"0";}i:32;a:3:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:8:"selected";s:1:"0";}i:33;a:3:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:8:"selected";s:1:"0";}i:34;a:3:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:8:"selected";s:1:"0";}i:35;a:3:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:8:"selected";s:1:"0";}i:36;a:3:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:8:"selected";s:1:"0";}i:37;a:3:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:8:"selected";s:1:"0";}i:38;a:3:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:8:"selected";s:1:"0";}i:39;a:3:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:8:"selected";s:1:"0";}i:40;a:3:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:8:"selected";s:1:"0";}i:41;a:3:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:8:"selected";s:1:"0";}i:42;a:3:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:8:"selected";s:1:"0";}i:43;a:3:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:8:"selected";s:1:"0";}i:44;a:3:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:8:"selected";s:1:"0";}i:45;a:3:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:8:"selected";s:1:"0";}i:46;a:3:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:8:"selected";s:1:"0";}i:47;a:3:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:8:"selected";s:1:"0";}i:48;a:3:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:8:"selected";s:1:"0";}i:49;a:3:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:8:"selected";s:1:"0";}i:50;a:3:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:8:"selected";s:1:"0";}}}s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'State Dropdown'),
(3, 0, '_spam', 0, 'a:6:{s:9:"label_pos";s:4:"left";s:5:"label";s:18:"Anti-Spam Question";s:6:"answer";s:16:"Anti-Spam Answer";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Anti-Spam'),
(4, 0, '_submit', 0, 'a:4:{s:5:"label";s:6:"Submit";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Submit'),
(5, 0, '_tax', 0, 'a:11:{s:5:"label";s:3:"Tax";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:19:"payment_field_group";s:1:"1";s:11:"payment_tax";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";s:11:"calc_option";s:1:"0";s:4:"calc";s:0:"";}', 'Tax'),
(6, 0, '_text', 0, 'a:19:{s:5:"label";s:10:"First Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"1";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'First Name'),
(7, 0, '_text', 0, 'a:19:{s:5:"label";s:9:"Last Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"1";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Last Name'),
(8, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 1";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"1";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 1'),
(9, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 2";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"1";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 2'),
(10, 0, '_text', 0, 'a:23:{s:5:"label";s:4:"City";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"1";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'City'),
(11, 0, '_list', 0, 'a:16:{s:5:"label";s:5:"State";s:9:"label_pos";s:5:"above";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:4:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:1;a:4:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:2;a:4:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:3;a:4:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:4;a:4:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:5;a:4:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:6;a:4:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:7;a:4:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:8;a:4:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:9;a:4:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:10;a:4:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:11;a:4:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:12;a:4:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:13;a:4:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:14;a:4:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:15;a:4:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:16;a:4:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:17;a:4:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:18;a:4:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:19;a:4:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:20;a:4:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:21;a:4:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:22;a:4:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:23;a:4:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:24;a:4:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:25;a:4:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:26;a:4:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:27;a:4:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:28;a:4:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:29;a:4:{s:5:"label";s:13:"New Hampshire";s:5:"value";s:2:"NH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:30;a:4:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:31;a:4:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:32;a:4:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:33;a:4:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:34;a:4:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:35;a:4:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:36;a:4:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:37;a:4:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:38;a:4:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:39;a:4:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:40;a:4:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:41;a:4:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:42;a:4:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:43;a:4:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:44;a:4:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:45;a:4:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:46;a:4:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:47;a:4:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:48;a:4:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:49;a:4:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:50;a:4:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}}}s:9:"list_type";s:8:"dropdown";s:10:"user_state";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:13:"populate_term";s:0:"";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'State'),
(12, 0, '_text', 0, 'a:23:{s:5:"label";s:15:"Zip / Post Code";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Zip / Post Code'),
(13, 0, '_country', 0, 'a:10:{s:5:"label";s:7:"Country";s:9:"label_pos";s:5:"above";s:13:"default_value";s:2:"US";s:21:"user_info_field_group";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Country'),
(14, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Email'),
(15, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Phone";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:14:"(999) 999-9999";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"1";s:10:"user_email";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Phone'),
(16, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:9:"sub_total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:9:"Sub Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";s:0:"";s:7:"calc_eq";s:0:"";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"0";s:17:"payment_sub_total";s:1:"1";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Sub Total'),
(17, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:5:"total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:5:"Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";a:5:{i:0;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}i:1;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"69";}i:2;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"15";}i:3;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"61";}i:4;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}}s:7:"calc_eq";s:5:"5 + 5";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"1";s:17:"payment_sub_total";s:1:"0";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Total'),
(92, 0, '_credit_card', 0, 'a:6:{s:5:"label";s:11:"Credit Card";s:19:"payment_field_group";s:1:"1";s:3:"req";s:1:"0";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";}', 'Credit Card') ;

#
# End of data contents of table `redentity_ninja_forms_fav_fields`
# --------------------------------------------------------



#
# Delete any existing table `redentity_ninja_forms_fields`
#

DROP TABLE IF EXISTS `redentity_ninja_forms_fields`;


#
# Table structure of table `redentity_ninja_forms_fields`
#

CREATE TABLE `redentity_ninja_forms_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `fav_id` int(11) DEFAULT NULL,
  `def_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_ninja_forms_fields`
#
INSERT INTO `redentity_ninja_forms_fields` ( `id`, `form_id`, `type`, `order`, `data`, `fav_id`, `def_id`) VALUES
(1, 1, '_text', 0, 'a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(2, 1, '_text', 1, 'a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 14),
(3, 1, '_textarea', 2, 'a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(4, 1, '_spam', 3, 'a:10:{s:5:"label";s:25:"What is thirteen minus 6?";s:9:"label_pos";s:4:"left";s:11:"spam_answer";s:1:"7";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0),
(5, 1, '_submit', 4, 'a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0) ;

#
# End of data contents of table `redentity_ninja_forms_fields`
# --------------------------------------------------------



#
# Delete any existing table `redentity_options`
#

DROP TABLE IF EXISTS `redentity_options`;


#
# Table structure of table `redentity_options`
#

CREATE TABLE `redentity_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_options`
#
INSERT INTO `redentity_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://valeriesundman.com/redentity', 'yes'),
(2, 'home', 'http://valeriesundman.com/redentity', 'yes'),
(3, 'blogname', 'Redentity', 'yes'),
(4, 'blogdescription', 'Let us Brand you!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'valeriec@san.rr.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:27:"ninja-forms/ninja-forms.php";i:1;s:36:"theme_helper-master/theme-helper.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";i:3;s:27:"wp-pagenavi/wp-pagenavi.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'prism', 'yes'),
(42, 'stylesheet', 'prism-child', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '1', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:3;a:3:{s:5:"title";s:12:"Child Themed";s:4:"text";s:25:"Creatd by Valerie Sundman";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:27:"wp-pagenavi/wp-pagenavi.php";s:14:"__return_false";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '10', 'yes'),
(85, 'page_on_front', '4', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'redentity_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:4;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:6:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";i:5;s:10:"calendar-3";}s:12:"sidebar-main";a:0:{}s:15:"sidebar-footer1";a:0:{}s:15:"sidebar-footer2";a:0:{}s:15:"sidebar-footer3";a:0:{}s:15:"sidebar-footer4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:7:{i:1425921504;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1425929160;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1425964407;a:1:{s:24:"ninja_forms_daily_action";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1425964408;a:1:{s:20:"nf_maybe_delete_form";a:1:{s:32:"fe0b93ca214a68210e7bc5a7b10fd4b9";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{s:7:"form_id";i:1;}}}}i:1425964704;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1425964822;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, 'can_compress_scripts', '1', 'yes'),
(126, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425619131;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(127, 'current_theme', 'Child Theme for prism', 'yes'),
(128, 'theme_mods_prism-child', 'a:27:{i:0;b:0;s:10:"slider_one";s:0:"";s:16:"slider_title_one";s:0:"";s:22:"slider_one_description";s:0:"";s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:9:"main_menu";i:2;}s:13:"tracking_code";s:0:"";s:10:"home_title";s:12:"Our Services";s:15:"home_menu_title";s:8:"services";s:14:"home_title_one";s:17:"Branding/Identity";s:14:"home_title_two";s:10:"Web Design";s:16:"home_title_three";s:8:"Printing";s:15:"home_title_four";s:5:"Video";s:8:"cta_text";s:0:"";s:14:"feedback_title";s:12:"Testimonials";s:19:"feedback_menu_title";s:12:"testimonials";s:23:"tslider_one_description";s:96:""I loved working with Redentity! They helped me take my Real Estate business to the next level!"";s:23:"tslider_two_description";s:88:""The people are so friendly and understanding, plus they offer great competitive prices"";s:13:"contact_title";s:15:"Our Information";s:13:"contact_email";s:19:"redentity@gmail.com";s:13:"contact_phone";s:12:"888-777-7777";s:14:"address_detail";s:13:"San Diego, CA";s:18:"home_contact_title";s:11:"Contact Us!";s:23:"home_menu_contact_title";s:7:"contact";s:18:"contact_form_title";s:17:"Send us a message";s:24:"prism_footer_footer_text";s:0:"";s:11:"tslider_one";s:86:"http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-09-19.14.54.jpg";s:11:"tslider_two";s:86:"http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-04-11-12.32.43.jpg";}', 'yes') ;
INSERT INTO `redentity_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(129, 'theme_switched', '', 'yes'),
(130, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"349";s:6:"height";s:3:"349";s:4:"crop";i:1;}', 'yes'),
(131, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"362";s:6:"height";s:3:"362";s:4:"crop";i:1;}', 'yes'),
(132, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";i:0;}', 'yes'),
(133, 'recently_activated', 'a:0:{}', 'yes'),
(134, 'pagenavi_options', 'a:15:{s:10:"pages_text";s:36:"Page %CURRENT_PAGE% of %TOTAL_PAGES%";s:12:"current_text";s:13:"%PAGE_NUMBER%";s:9:"page_text";s:13:"%PAGE_NUMBER%";s:10:"first_text";s:13:"&laquo; First";s:9:"last_text";s:12:"Last &raquo;";s:9:"prev_text";s:7:"&laquo;";s:9:"next_text";s:7:"&raquo;";s:12:"dotleft_text";s:3:"...";s:13:"dotright_text";s:3:"...";s:9:"num_pages";i:5;s:23:"num_larger_page_numbers";i:3;s:28:"larger_page_numbers_multiple";i:10;s:11:"always_show";b:0;s:16:"use_pagenavi_css";b:1;s:5:"style";i:1;}', 'yes'),
(140, 'theme_mods_prism', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425619355;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:12:"sidebar-main";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:15:"sidebar-footer1";N;s:15:"sidebar-footer2";N;s:15:"sidebar-footer3";N;s:15:"sidebar-footer4";N;}}}', 'yes'),
(141, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(147, 'category_children', 'a:0:{}', 'yes'),
(148, 'widget_nav_menu', 'a:2:{i:3;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(149, 'widget_calendar', 'a:2:{i:3;a:1:{s:5:"title";s:8:"Calendar";}s:12:"_multiwidget";i:1;}', 'yes'),
(176, 'typework_children', 'a:0:{}', 'yes'),
(178, 'rewrite_rules', 'a:92:{s:12:"portfolio/?$";s:29:"index.php?post_type=portfolio";s:42:"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:37:"portfolio/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:29:"portfolio/page/([0-9]{1,})/?$";s:47:"index.php?post_type=portfolio&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:37:"portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"portfolio/([^/]+)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:50:"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:45:"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:38:"portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:45:"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:30:"portfolio/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:26:"portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"typework/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?typework=$matches[1]&feed=$matches[2]";s:44:"typework/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?typework=$matches[1]&feed=$matches[2]";s:37:"typework/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?typework=$matches[1]&paged=$matches[2]";s:19:"typework/([^/]+)/?$";s:30:"index.php?typework=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(223, 'nf_convert_notifications_complete', '1', 'yes'),
(224, 'nf_convert_subs_step', 'complete', 'yes'),
(225, 'nf_upgrade_notice', 'closed', 'yes'),
(226, 'nf_update_email_settings_complete', '1', 'yes'),
(227, 'nf_email_fav_updated', '1', 'yes'),
(228, 'nf_convert_forms_complete', '1', 'yes'),
(229, 'ninja_forms_settings', 'a:17:{s:11:"date_format";s:5:"d/m/Y";s:15:"currency_symbol";s:1:"$";s:13:"req_div_label";s:80:"Fields marked with an <span class="ninja-forms-req-symbol">*</span> are required";s:16:"req_field_symbol";s:18:"<strong>*</strong>";s:15:"req_error_label";s:48:"Please ensure all required fields are completed.";s:15:"req_field_error";s:24:"This is a required field";s:10:"spam_error";s:47:"Please answer the anti-spam question correctly.";s:14:"honeypot_error";s:34:"Please leave the spam field blank.";s:18:"timed_submit_error";s:31:"Please wait to submit the form.";s:16:"javascript_error";s:54:"You cannot submit the form without Javascript enabled.";s:13:"invalid_email";s:35:"Please enter a valid email address.";s:13:"process_label";s:10:"Processing";s:17:"password_mismatch";s:36:"The passwords provided do not match.";s:10:"preview_id";i:40;s:7:"version";s:5:"2.9.6";s:19:"fix_form_email_from";i:1;s:18:"fix_field_reply_to";i:1;}', 'yes') ;

#
# End of data contents of table `redentity_options`
# --------------------------------------------------------



#
# Delete any existing table `redentity_postmeta`
#

DROP TABLE IF EXISTS `redentity_postmeta`;


#
# Table structure of table `redentity_postmeta`
#

CREATE TABLE `redentity_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_postmeta`
#
INSERT INTO `redentity_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1425658615:1'),
(4, 4, '_wp_page_template', 'default'),
(5, 7, '_wp_attached_file', '2015/03/2015-01-22-17.21.02.png'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:800;s:4:"file";s:31:"2015/03/2015-01-22-17.21.02.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"2015-01-22-17.21.02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"2015-01-22-17.21.02-300x188.png";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:32:"2015-01-22-17.21.02-1024x640.png";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:9:"image/png";}s:23:"post_feature_full_width";a:4:{s:4:"file";s:31:"2015-01-22-17.21.02-680x300.png";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"post_feature_thumb";a:4:{s:4:"file";s:31:"2015-01-22-17.21.02-368x243.png";s:5:"width";i:368;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";}s:19:"product-image-large";a:4:{s:4:"file";s:31:"2015-01-22-17.21.02-680x300.png";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:19:"product-image-thumb";a:4:{s:4:"file";s:31:"2015-01-22-17.21.02-370x243.png";s:5:"width";i:370;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(7, 8, '_edit_last', '1'),
(8, 8, '_edit_lock', '1425880115:1'),
(9, 8, '_wp_page_template', 'default'),
(10, 10, '_edit_last', '1'),
(11, 10, '_wp_page_template', 'default'),
(12, 10, '_edit_lock', '1425658584:1'),
(13, 12, '_edit_last', '1'),
(14, 12, '_wp_page_template', 'default'),
(15, 12, '_edit_lock', '1425877993:1'),
(16, 14, '_edit_last', '1'),
(17, 14, '_wp_page_template', 'default'),
(18, 14, '_edit_lock', '1425882634:1'),
(19, 2, '_edit_lock', '1425620092:1'),
(20, 16, '_menu_item_type', 'post_type'),
(21, 16, '_menu_item_menu_item_parent', '0'),
(22, 16, '_menu_item_object_id', '14'),
(23, 16, '_menu_item_object', 'page'),
(24, 16, '_menu_item_target', ''),
(25, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 16, '_menu_item_xfn', ''),
(27, 16, '_menu_item_url', ''),
(29, 17, '_menu_item_type', 'post_type'),
(30, 17, '_menu_item_menu_item_parent', '0'),
(31, 17, '_menu_item_object_id', '12'),
(32, 17, '_menu_item_object', 'page'),
(33, 17, '_menu_item_target', ''),
(34, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 17, '_menu_item_xfn', ''),
(36, 17, '_menu_item_url', ''),
(38, 18, '_menu_item_type', 'post_type'),
(39, 18, '_menu_item_menu_item_parent', '0'),
(40, 18, '_menu_item_object_id', '10'),
(41, 18, '_menu_item_object', 'page'),
(42, 18, '_menu_item_target', ''),
(43, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 18, '_menu_item_xfn', ''),
(45, 18, '_menu_item_url', ''),
(47, 19, '_menu_item_type', 'post_type'),
(48, 19, '_menu_item_menu_item_parent', '0'),
(49, 19, '_menu_item_object_id', '8'),
(50, 19, '_menu_item_object', 'page'),
(51, 19, '_menu_item_target', ''),
(52, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 19, '_menu_item_xfn', ''),
(54, 19, '_menu_item_url', ''),
(56, 20, '_menu_item_type', 'post_type'),
(57, 20, '_menu_item_menu_item_parent', '0'),
(58, 20, '_menu_item_object_id', '4'),
(59, 20, '_menu_item_object', 'page'),
(60, 20, '_menu_item_target', ''),
(61, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 20, '_menu_item_xfn', ''),
(63, 20, '_menu_item_url', ''),
(64, 24, '_edit_last', '1'),
(65, 24, '_edit_lock', '1425658538:1'),
(68, 26, '_wp_attached_file', '2015/03/2014-02-09-19.14.54.jpg'),
(69, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2448;s:6:"height";i:3264;s:4:"file";s:31:"2015/03/2014-02-09-19.14.54.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"2014-02-09-19.14.54-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"2014-02-09-19.14.54-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"2014-02-09-19.14.54-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:23:"post_feature_full_width";a:4:{s:4:"file";s:31:"2014-02-09-19.14.54-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"post_feature_thumb";a:4:{s:4:"file";s:31:"2014-02-09-19.14.54-368x243.jpg";s:5:"width";i:368;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}s:19:"product-image-large";a:4:{s:4:"file";s:31:"2014-02-09-19.14.54-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"product-image-thumb";a:4:{s:4:"file";s:31:"2014-02-09-19.14.54-370x243.jpg";s:5:"width";i:370;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.600000000000000088817841970012523233890533447265625;s:6:"credit";s:0:"";s:6:"camera";s:16:"SAMSUNG-SGH-I747";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1391973294;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.7";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(70, 27, '_wp_attached_file', '2015/03/2014-04-11-12.32.43.jpg'),
(71, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2448;s:6:"height";i:3264;s:4:"file";s:31:"2015/03/2014-04-11-12.32.43.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"2014-04-11-12.32.43-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"2014-04-11-12.32.43-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"2014-04-11-12.32.43-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:23:"post_feature_full_width";a:4:{s:4:"file";s:31:"2014-04-11-12.32.43-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"post_feature_thumb";a:4:{s:4:"file";s:31:"2014-04-11-12.32.43-368x243.jpg";s:5:"width";i:368;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}s:19:"product-image-large";a:4:{s:4:"file";s:31:"2014-04-11-12.32.43-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"product-image-thumb";a:4:{s:4:"file";s:31:"2014-04-11-12.32.43-370x243.jpg";s:5:"width";i:370;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.600000000000000088817841970012523233890533447265625;s:6:"credit";s:0:"";s:6:"camera";s:16:"SAMSUNG-SGH-I747";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1397219563;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.7";s:3:"iso";s:3:"125";s:13:"shutter_speed";s:17:"0.058823529411765";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(72, 28, '_edit_last', '1'),
(73, 28, '_edit_lock', '1425661156:1'),
(74, 28, '_thumbnail_id', '7'),
(75, 30, '_edit_last', '1'),
(76, 30, '_edit_lock', '1425662696:1'),
(77, 31, '_wp_attached_file', '2015/03/2013-12-09-02.47.01.png'),
(78, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:1280;s:4:"file";s:31:"2015/03/2013-12-09-02.47.01.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"2013-12-09-02.47.01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"2013-12-09-02.47.01-169x300.png";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:32:"2013-12-09-02.47.01-576x1024.png";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:23:"post_feature_full_width";a:4:{s:4:"file";s:31:"2013-12-09-02.47.01-680x300.png";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"post_feature_thumb";a:4:{s:4:"file";s:31:"2013-12-09-02.47.01-368x243.png";s:5:"width";i:368;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";}s:19:"product-image-large";a:4:{s:4:"file";s:31:"2013-12-09-02.47.01-680x300.png";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:19:"product-image-thumb";a:4:{s:4:"file";s:31:"2013-12-09-02.47.01-370x243.png";s:5:"width";i:370;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(79, 30, '_thumbnail_id', '31'),
(80, 33, '_edit_last', '1'),
(81, 33, '_edit_lock', '1425662752:1'),
(82, 34, '_wp_attached_file', '2015/03/2014-02-14-15.38.06.jpg'),
(83, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2448;s:6:"height";i:3264;s:4:"file";s:31:"2015/03/2014-02-14-15.38.06.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"2014-02-14-15.38.06-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"2014-02-14-15.38.06-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"2014-02-14-15.38.06-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:23:"post_feature_full_width";a:4:{s:4:"file";s:31:"2014-02-14-15.38.06-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"post_feature_thumb";a:4:{s:4:"file";s:31:"2014-02-14-15.38.06-368x243.jpg";s:5:"width";i:368;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}s:19:"product-image-large";a:4:{s:4:"file";s:31:"2014-02-14-15.38.06-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"product-image-thumb";a:4:{s:4:"file";s:31:"2014-02-14-15.38.06-370x243.jpg";s:5:"width";i:370;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.600000000000000088817841970012523233890533447265625;s:6:"credit";s:0:"";s:6:"camera";s:16:"SAMSUNG-SGH-I747";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1392392286;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.7";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(84, 33, '_thumbnail_id', '34'),
(85, 36, '_edit_last', '1'),
(86, 36, '_edit_lock', '1425663375:1'),
(87, 37, '_wp_attached_file', '2015/03/2014-02-12-06.44.48.jpg'),
(88, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2448;s:6:"height";i:3264;s:4:"file";s:31:"2015/03/2014-02-12-06.44.48.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"2014-02-12-06.44.48-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"2014-02-12-06.44.48-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"2014-02-12-06.44.48-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:23:"post_feature_full_width";a:4:{s:4:"file";s:31:"2014-02-12-06.44.48-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"post_feature_thumb";a:4:{s:4:"file";s:31:"2014-02-12-06.44.48-368x243.jpg";s:5:"width";i:368;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}s:19:"product-image-large";a:4:{s:4:"file";s:31:"2014-02-12-06.44.48-680x300.jpg";s:5:"width";i:680;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"product-image-thumb";a:4:{s:4:"file";s:31:"2014-02-12-06.44.48-370x243.jpg";s:5:"width";i:370;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.600000000000000088817841970012523233890533447265625;s:6:"credit";s:0:"";s:6:"camera";s:16:"SAMSUNG-SGH-I747";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1392187488;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.7";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(89, 36, '_thumbnail_id', '37') ;

#
# End of data contents of table `redentity_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `redentity_posts`
#

DROP TABLE IF EXISTS `redentity_posts`;


#
# Table structure of table `redentity_posts`
#

CREATE TABLE `redentity_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_posts`
#
INSERT INTO `redentity_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-03-06 05:18:24', '2015-03-06 05:18:24', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-03-06 05:18:24', '2015-03-06 05:18:24', '', 0, 'http://valeriesundman.com/redentity/?p=1', 0, 'post', '', 1),
(2, 1, '2015-03-06 05:18:24', '2015-03-06 05:18:24', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://valeriesundman.com/redentity/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-03-06 05:18:24', '2015-03-06 05:18:24', '', 0, 'http://valeriesundman.com/redentity/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-03-06 05:18:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-06 05:18:26', '0000-00-00 00:00:00', '', 0, 'http://valeriesundman.com/redentity/?p=3', 0, 'post', '', 0),
(4, 1, '2015-03-06 05:20:39', '2015-03-06 05:20:39', '', 'Front Page', '', 'publish', 'closed', 'closed', '', 'front-page', '', '', '2015-03-06 16:16:55', '2015-03-06 16:16:55', '', 0, 'http://valeriesundman.com/redentity/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-03-06 05:20:39', '2015-03-06 05:20:39', '', 'front page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-03-06 05:20:39', '2015-03-06 05:20:39', '', 4, 'http://valeriesundman.com/redentity/?p=5', 0, 'revision', '', 0),
(6, 1, '2015-03-06 05:22:58', '2015-03-06 05:22:58', 'Welcome', 'front page', '', 'inherit', 'open', 'open', '', '4-autosave-v1', '', '', '2015-03-06 05:22:58', '2015-03-06 05:22:58', '', 4, 'http://valeriesundman.com/redentity/?p=6', 0, 'revision', '', 0),
(7, 1, '2015-03-06 05:23:31', '2015-03-06 05:23:31', '', '2015-01-22 17.21.02', '', 'inherit', 'open', 'open', '', '2015-01-22-17-21-02', '', '', '2015-03-06 16:17:35', '2015-03-06 16:17:35', '', 24, 'http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2015-03-06 05:36:38', '2015-03-06 05:36:38', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2015-03-09 05:50:51', '2015-03-09 05:50:51', '', 0, 'http://valeriesundman.com/redentity/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-03-06 05:36:38', '2015-03-06 05:36:38', '', 'work', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-03-06 05:36:38', '2015-03-06 05:36:38', '', 8, 'http://valeriesundman.com/redentity/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-03-06 05:36:45', '2015-03-06 05:36:45', '', 'Blog', '', 'publish', 'open', 'closed', '', 'blog', '', '', '2015-03-06 16:16:24', '2015-03-06 16:16:24', '', 0, 'http://valeriesundman.com/redentity/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-03-06 05:36:45', '2015-03-06 05:36:45', '', 'blog', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-03-06 05:36:45', '2015-03-06 05:36:45', '', 10, 'http://valeriesundman.com/redentity/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-03-06 05:37:01', '2015-03-06 05:37:01', '', 'Contact', '', 'publish', 'closed', 'open', '', 'contact', '', '', '2015-03-09 05:15:32', '2015-03-09 05:15:32', '', 0, 'http://valeriesundman.com/redentity/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-03-06 05:37:01', '2015-03-06 05:37:01', '', 'Contact', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-06 05:37:01', '2015-03-06 05:37:01', '', 12, 'http://valeriesundman.com/redentity/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-03-06 05:37:10', '2015-03-06 05:37:10', '<h1 style="text-align: center;">OUR WONDERFUL CLIENTS</h1>\r\n<h2 style="text-align: center;">We offer you the chance to work with the best talent without having to hire them in-house. Count on us for extensive knowledge in branding, web development, video and printing.</h2>\r\n\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title" style="text-align: left;">Healthcare</h2>\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title">Real Estate</h2>\r\n<ul>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n</ul>\r\n</div>', 'Clients', '', 'publish', 'closed', 'open', '', 'clients', '', '', '2015-03-09 05:35:19', '2015-03-09 05:35:19', '', 0, 'http://valeriesundman.com/redentity/?page_id=14', 0, 'page', '', 0),
(15, 1, '2015-03-06 05:37:10', '2015-03-06 05:37:10', '', 'Clients', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-03-06 05:37:10', '2015-03-06 05:37:10', '', 14, 'http://valeriesundman.com/redentity/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-03-06 05:39:26', '2015-03-06 05:39:26', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2015-03-06 05:39:26', '2015-03-06 05:39:26', '', 0, 'http://valeriesundman.com/redentity/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2015-03-06 05:39:26', '2015-03-06 05:39:26', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2015-03-06 05:39:26', '2015-03-06 05:39:26', '', 0, 'http://valeriesundman.com/redentity/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2015-03-06 05:39:26', '2015-03-06 05:39:26', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2015-03-06 05:39:26', '2015-03-06 05:39:26', '', 0, 'http://valeriesundman.com/redentity/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2015-03-06 05:39:26', '2015-03-06 05:39:26', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2015-03-06 05:39:26', '2015-03-06 05:39:26', '', 0, 'http://valeriesundman.com/redentity/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2015-03-06 05:39:26', '2015-03-06 05:39:26', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2015-03-06 05:39:26', '2015-03-06 05:39:26', '', 0, 'http://valeriesundman.com/redentity/?p=20', 5, 'nav_menu_item', '', 0),
(21, 1, '2015-03-06 16:16:24', '2015-03-06 16:16:24', '', 'Blog', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-03-06 16:16:24', '2015-03-06 16:16:24', '', 10, 'http://valeriesundman.com/redentity/10-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2015-03-06 16:16:40', '2015-03-06 16:16:40', '', 'Portfolio', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-03-06 16:16:40', '2015-03-06 16:16:40', '', 8, 'http://valeriesundman.com/redentity/8-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2015-03-06 16:16:55', '2015-03-06 16:16:55', '', 'Front Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-03-06 16:16:55', '2015-03-06 16:16:55', '', 4, 'http://valeriesundman.com/redentity/4-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-03-06 16:17:43', '2015-03-06 16:17:43', 'A sample post.\r\n\r\n<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02.png"><img class="alignnone size-medium wp-image-7" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02-300x188.png" alt="2015-01-22 17.21.02" width="300" height="188" /></a>', 'Another Post', '', 'publish', 'open', 'open', '', 'another-post', '', '', '2015-03-06 16:18:00', '2015-03-06 16:18:00', '', 0, 'http://valeriesundman.com/redentity/?p=24', 0, 'post', '', 0),
(25, 1, '2015-03-06 16:17:43', '2015-03-06 16:17:43', 'A sample post.\r\n\r\n<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02.png"><img class="alignnone size-medium wp-image-7" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02-300x188.png" alt="2015-01-22 17.21.02" width="300" height="188" /></a>', 'Another Post', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2015-03-06 16:17:43', '2015-03-06 16:17:43', '', 24, 'http://valeriesundman.com/redentity/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2015-03-06 16:31:43', '2015-03-06 16:31:43', '', '2014-02-09 19.14.54', '', 'inherit', 'open', 'open', '', '2014-02-09-19-14-54', '', '', '2015-03-06 16:31:43', '2015-03-06 16:31:43', '', 0, 'http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-09-19.14.54.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2015-03-06 16:32:11', '2015-03-06 16:32:11', '', '2014-04-11 12.32.43', '', 'inherit', 'open', 'open', '', '2014-04-11-12-32-43', '', '', '2015-03-06 16:32:11', '2015-03-06 16:32:11', '', 0, 'http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-04-11-12.32.43.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2015-03-06 16:49:29', '2015-03-06 16:49:29', '<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02.png"><img class="alignnone size-medium wp-image-7" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02-300x188.png" alt="2015-01-22 17.21.02" width="300" height="188" /></a>\r\n\r\nblah blah blah', 'Branding', 'excerpt of the portfolio piece', 'publish', 'closed', 'closed', '', 'branding', '', '', '2015-03-06 17:01:38', '2015-03-06 17:01:38', '', 0, 'http://valeriesundman.com/redentity/?post_type=portfolio&#038;p=28', 0, 'portfolio', '', 0),
(29, 1, '2015-03-06 16:49:29', '2015-03-06 16:49:29', '<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02.png"><img class="alignnone size-medium wp-image-7" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2015-01-22-17.21.02-300x188.png" alt="2015-01-22 17.21.02" width="300" height="188" /></a>\r\n\r\nblah blah blah', 'Branding', 'excerpt of the portfolio piece', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2015-03-06 16:49:29', '2015-03-06 16:49:29', '', 28, 'http://valeriesundman.com/redentity/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2015-03-06 17:27:18', '2015-03-06 17:27:18', '<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2013-12-09-02.47.01.png"><img class="alignnone size-medium wp-image-31" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2013-12-09-02.47.01-169x300.png" alt="2013-12-09 02.47.01" width="169" height="300" /></a>\r\n\r\nweb stuff!!!', 'web stuff', 'excerpt of web stuff', 'publish', 'closed', 'closed', '', 'web-stuff', '', '', '2015-03-06 17:27:18', '2015-03-06 17:27:18', '', 0, 'http://valeriesundman.com/redentity/?post_type=portfolio&#038;p=30', 0, 'portfolio', '', 0),
(31, 1, '2015-03-06 17:26:59', '2015-03-06 17:26:59', '', '2013-12-09 02.47.01', '', 'inherit', 'open', 'open', '', '2013-12-09-02-47-01', '', '', '2015-03-06 17:26:59', '2015-03-06 17:26:59', '', 30, 'http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2013-12-09-02.47.01.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2015-03-06 17:27:18', '2015-03-06 17:27:18', '<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2013-12-09-02.47.01.png"><img class="alignnone size-medium wp-image-31" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2013-12-09-02.47.01-169x300.png" alt="2013-12-09 02.47.01" width="169" height="300" /></a>\r\n\r\nweb stuff!!!', 'web stuff', 'excerpt of web stuff', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-06 17:27:18', '2015-03-06 17:27:18', '', 30, 'http://valeriesundman.com/redentity/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-03-06 17:28:15', '2015-03-06 17:28:15', '<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-14-15.38.06.jpg"><img class="alignnone size-medium wp-image-34" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-14-15.38.06-225x300.jpg" alt="2014-02-14 15.38.06" width="225" height="300" /></a>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'video', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'publish', 'closed', 'closed', '', 'video', '', '', '2015-03-06 17:28:15', '2015-03-06 17:28:15', '', 0, 'http://valeriesundman.com/redentity/?post_type=portfolio&#038;p=33', 0, 'portfolio', '', 0),
(34, 1, '2015-03-06 17:27:30', '2015-03-06 17:27:30', '', '2014-02-14 15.38.06', '', 'inherit', 'open', 'open', '', '2014-02-14-15-38-06', '', '', '2015-03-06 17:27:30', '2015-03-06 17:27:30', '', 33, 'http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-14-15.38.06.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2015-03-06 17:28:15', '2015-03-06 17:28:15', '<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-14-15.38.06.jpg"><img class="alignnone size-medium wp-image-34" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-14-15.38.06-225x300.jpg" alt="2014-02-14 15.38.06" width="225" height="300" /></a>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'video', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'inherit', 'open', 'open', '', '33-revision-v1', '', '', '2015-03-06 17:28:15', '2015-03-06 17:28:15', '', 33, 'http://valeriesundman.com/redentity/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2015-03-06 17:28:37', '2015-03-06 17:28:37', '<img class="alignnone size-medium wp-image-37" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-12-06.44.48-225x300.jpg" alt="2014-02-12 06.44.48" width="225" height="300" />\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha', 'web', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha', 'publish', 'closed', 'closed', '', 'web', '', '', '2015-03-06 17:38:38', '2015-03-06 17:38:38', '', 0, 'http://valeriesundman.com/redentity/?post_type=portfolio&#038;p=36', 0, 'portfolio', '', 0),
(37, 1, '2015-03-06 17:28:25', '2015-03-06 17:28:25', '', '2014-02-12 06.44.48', '', 'inherit', 'open', 'open', '', '2014-02-12-06-44-48', '', '', '2015-03-06 17:28:25', '2015-03-06 17:28:25', '', 36, 'http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-12-06.44.48.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2015-03-06 17:28:37', '2015-03-06 17:28:37', '<a href="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-12-06.44.48.jpg"><img class="alignnone size-medium wp-image-37" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-12-06.44.48-225x300.jpg" alt="2014-02-12 06.44.48" width="225" height="300" /></a>\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha', 'web', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-03-06 17:28:37', '2015-03-06 17:28:37', '', 36, 'http://valeriesundman.com/redentity/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2015-03-06 17:38:38', '2015-03-06 17:38:38', '<img class="alignnone size-medium wp-image-37" src="http://valeriesundman.com/redentity/wp-content/uploads/2015/03/2014-02-12-06.44.48-225x300.jpg" alt="2014-02-12 06.44.48" width="225" height="300" />\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha\r\n\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha', 'web', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-03-06 17:38:38', '2015-03-06 17:38:38', '', 36, 'http://valeriesundman.com/redentity/36-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2015-03-09 05:13:28', '0000-00-00 00:00:00', 'This is a preview of how this form will appear on your website', 'ninja_forms_preview_page', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-09 05:13:28', '0000-00-00 00:00:00', '', 0, 'http://valeriesundman.com/redentity/?page_id=40', 0, 'page', '', 0),
(41, 1, '2015-03-09 05:35:23', '2015-03-09 05:35:23', '<h1 style="text-align: center;">OUR WONDERFUL CLIENTS</h1>\r\n<h2 style="text-align: center;">We offer you the chance to work with the best talent without having to hire them in-house. Count on us for extensive knowledge in branding, web development, video and printing.</h2>\r\n\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title" style="text-align: left;">Healthcare</h2>\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title">Real Estate</h2>\r\n<ul>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n</ul>\r\n</div>', 'Clients', '', 'inherit', 'closed', 'open', '', '14-autosave-v1', '', '', '2015-03-09 05:35:23', '2015-03-09 05:35:23', '', 14, 'http://valeriesundman.com/redentity/14-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2015-03-09 05:26:33', '2015-03-09 05:26:33', '<h1 style="text-align: center;">OUR WONDERFUL CLIENTS</h1>\r\n<h2 style="text-align: center;">We offer you the chance to work with the best talent without having to hire them in-house. Count on us for extensive knowledge in branding, web development, video and printing.</h2>\r\n&nbsp;\r\n<div class="page-head__hero hero--relative hero"></div>\r\n<div class="wrap-all-the-things"><section class="page__group thirds  thirds--3 client-list">\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title" style="text-align: left;">Healthcare</h2>\r\n<article class="thirds__group thirds__group--1">\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n	<li>Dr Damon</li>\r\n	<li>Smile Specialists</li>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n	<li>Panorama Orthopedic</li>\r\n	<li>Sage Dental</li>\r\n	<li>Dr Carrillo</li>\r\n	<li>Eppard Ortho</li>\r\n	<li>Rocky Mountain Orthodontics</li>\r\n</ul>\r\n</article></div>\r\n</section></div>\r\n&nbsp;\r\n<h2 class="aligncenter thirds__title">Real Estate</h2>\r\n<article class="thirds__group thirds__group--1">\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n	<li>Dr Damon</li>\r\n	<li>Smile Specialists</li>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n	<li>Panorama Orthopedic</li>\r\n	<li>Sage Dental</li>\r\n	<li>Dr Carrillo</li>\r\n	<li>Eppard Ortho</li>\r\n	<li>Rocky Mountain Orthodontics</li>\r\n</ul>\r\n</article>&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Clients', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-03-09 05:26:33', '2015-03-09 05:26:33', '', 14, 'http://valeriesundman.com/redentity/14-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-03-09 05:31:22', '2015-03-09 05:31:22', '<h1 style="text-align: center;">OUR WONDERFUL CLIENTS</h1>\r\n<h2 style="text-align: center;">We offer you the chance to work with the best talent without having to hire them in-house. Count on us for extensive knowledge in branding, web development, video and printing.</h2>\r\n<div class="wrap-all-the-things"><section class="page__group thirds  thirds--3 client-list">\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title" style="text-align: left;">Healthcare</h2>\r\n<article class="thirds__group thirds__group--1">\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n	<li>Dr Damon</li>\r\n	<li>Smile Specialists</li>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n	<li>Panorama Orthopedic</li>\r\n	<li>Sage Dental</li>\r\n	<li>Dr Carrillo</li>\r\n	<li>Eppard Ortho</li>\r\n	<li>Rocky Mountain Orthodontics</li>\r\n</ul>\r\n</article></div>\r\n</section></div>\r\n<h2 class="aligncenter thirds__title">Real Estate</h2>\r\n<article class="thirds__group thirds__group--1">\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n	<li>Dr Damon</li>\r\n	<li>Smile Specialists</li>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n	<li>Panorama Orthopedic</li>\r\n	<li>Sage Dental</li>\r\n	<li>Dr Carrillo</li>\r\n	<li>Eppard Ortho</li>\r\n	<li>Rocky Mountain Orthodontics</li>\r\n</ul>\r\n</article>&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Clients', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-03-09 05:31:22', '2015-03-09 05:31:22', '', 14, 'http://valeriesundman.com/redentity/14-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-03-09 05:32:21', '2015-03-09 05:32:21', '<h1 style="text-align: center;">OUR WONDERFUL CLIENTS</h1>\r\n<h2 style="text-align: center;">We offer you the chance to work with the best talent without having to hire them in-house. Count on us for extensive knowledge in branding, web development, video and printing.</h2>\r\n<div class="wrap-all-the-things"><section class="page__group thirds  thirds--3 client-list">\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title" style="text-align: left;">Healthcare</h2>\r\n<article class="thirds__group thirds__group--1">\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n</ul>\r\n</article></div>\r\n</section></div>\r\n<h2 class="aligncenter thirds__title">Real Estate</h2>\r\n<article class="thirds__group thirds__group--1">\r\n<ul>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n</ul>\r\n</article>&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Clients', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-03-09 05:32:21', '2015-03-09 05:32:21', '', 14, 'http://valeriesundman.com/redentity/14-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-03-09 05:32:54', '2015-03-09 05:32:54', '<h1 style="text-align: center;">OUR WONDERFUL CLIENTS</h1>\r\n<h2 style="text-align: center;">We offer you the chance to work with the best talent without having to hire them in-house. Count on us for extensive knowledge in branding, web development, video and printing.</h2>\r\n<div class="wrap-all-the-things"><section class="page__group thirds  thirds--3 client-list">\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title" style="text-align: left;">Healthcare</h2>\r\n<article class="thirds__group thirds__group--1">\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n</ul>\r\n</article></div>\r\n</section></div>\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title">Real Estate</h2>\r\n<article class="thirds__group thirds__group--1">\r\n<ul>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n</ul>\r\n</article>\r\n</div>', 'Clients', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-03-09 05:32:54', '2015-03-09 05:32:54', '', 14, 'http://valeriesundman.com/redentity/14-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2015-03-09 05:35:19', '2015-03-09 05:35:19', '<h1 style="text-align: center;">OUR WONDERFUL CLIENTS</h1>\r\n<h2 style="text-align: center;">We offer you the chance to work with the best talent without having to hire them in-house. Count on us for extensive knowledge in branding, web development, video and printing.</h2>\r\n\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title" style="text-align: left;">Healthcare</h2>\r\n<ul>\r\n	<li>i-ortho</li>\r\n	<li>Miller-ortho</li>\r\n	<li>202 MedSpa</li>\r\n	<li>Dr Zamora</li>\r\n	<li>e3</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="thirds__inner">\r\n<h2 class="aligncenter thirds__title">Real Estate</h2>\r\n<ul>\r\n	<li>North Georgia Pediatric Dentistry</li>\r\n	<li>Garrett Ortho</li>\r\n	<li>Korne Ortho</li>\r\n</ul>\r\n</div>', 'Clients', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-03-09 05:35:19', '2015-03-09 05:35:19', '', 14, 'http://valeriesundman.com/redentity/14-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `redentity_posts`
# --------------------------------------------------------



#
# Delete any existing table `redentity_term_relationships`
#

DROP TABLE IF EXISTS `redentity_term_relationships`;


#
# Table structure of table `redentity_term_relationships`
#

CREATE TABLE `redentity_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_term_relationships`
#
INSERT INTO `redentity_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(24, 1, 0),
(28, 3, 0),
(30, 4, 0),
(33, 5, 0),
(36, 4, 0) ;

#
# End of data contents of table `redentity_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `redentity_term_taxonomy`
#

DROP TABLE IF EXISTS `redentity_term_taxonomy`;


#
# Table structure of table `redentity_term_taxonomy`
#

CREATE TABLE `redentity_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_term_taxonomy`
#
INSERT INTO `redentity_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'typework', '', 0, 1),
(4, 4, 'typework', '', 0, 2),
(5, 5, 'typework', '', 0, 1) ;

#
# End of data contents of table `redentity_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `redentity_terms`
#

DROP TABLE IF EXISTS `redentity_terms`;


#
# Table structure of table `redentity_terms`
#

CREATE TABLE `redentity_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_terms`
#
INSERT INTO `redentity_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'branding', 'branding', 0),
(4, 'web', 'web', 0),
(5, 'video', 'video', 0) ;

#
# End of data contents of table `redentity_terms`
# --------------------------------------------------------



#
# Delete any existing table `redentity_usermeta`
#

DROP TABLE IF EXISTS `redentity_usermeta`;


#
# Table structure of table `redentity_usermeta`
#

CREATE TABLE `redentity_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_usermeta`
#
INSERT INTO `redentity_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'vsundman'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'redentity_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'redentity_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'default_password_nag', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:"23ab69598ec18024bc28dc919b198bda44866327bee235699fd6605f752bbcef";a:4:{s:10:"expiration";i:1425923672;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36";s:5:"login";i:1425750872;}s:64:"817e7c1dbdb5451bb7e628bc01596a4f232ec79f3cb1db9e04d0f4a976e6cbe6";a:4:{s:10:"expiration";i:1426049259;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36";s:5:"login";i:1425876459;}}'),
(16, 1, 'redentity_user-settings', 'libraryContent=upload&unfold=1&mfold=o&editor=html'),
(17, 1, 'redentity_user-settings-time', '1425879315'),
(18, 1, 'redentity_dashboard_quick_press_last_post_id', '3'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(21, 1, 'closedpostboxes_page', 'a:2:{i:0;s:12:"postimagediv";i:1;s:20:"ninja_forms_selector";}'),
(22, 1, 'metaboxhidden_page', 'a:7:{i:0;s:12:"postimagediv";i:1;s:20:"ninja_forms_selector";i:2;s:12:"revisionsdiv";i:3;s:10:"postcustom";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}') ;

#
# End of data contents of table `redentity_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `redentity_users`
#

DROP TABLE IF EXISTS `redentity_users`;


#
# Table structure of table `redentity_users`
#

CREATE TABLE `redentity_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `redentity_users`
#
INSERT INTO `redentity_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vsundman', '$P$BeBzbMMaAR1ZS6krha.uakLrK5epfC1', 'vsundman', 'valeriec@san.rr.com', '', '2015-03-06 05:18:24', '', 0, 'vsundman') ;

#
# End of data contents of table `redentity_users`
# --------------------------------------------------------

#
# Add constraints back in
#

