# WordPress MySQL database migration
#
# Generated: Monday 23. February 2015 16:59 UTC
# Hostname: localhost
# Database: `vsundman_wp`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_gde_profiles`
#

DROP TABLE IF EXISTS `wp_gde_profiles`;


#
# Table structure of table `wp_gde_profiles`
#

CREATE TABLE `wp_gde_profiles` (
  `profile_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(64) NOT NULL,
  `profile_desc` varchar(255) DEFAULT NULL,
  `profile_data` longtext NOT NULL,
  UNIQUE KEY `profile_id` (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_gde_profiles`
#
INSERT INTO `wp_gde_profiles` ( `profile_id`, `profile_name`, `profile_desc`, `profile_data`) VALUES
(1, 'default', 'This is the default profile, used when no profile is specified.', 'a:22:{s:6:"viewer";s:8:"standard";s:13:"default_width";s:4:"100%";s:14:"default_height";s:5:"500px";s:9:"tb_mobile";s:7:"default";s:8:"tb_flags";s:0:"";s:10:"tb_fullscr";s:7:"default";s:10:"tb_fullwin";s:3:"new";s:11:"tb_fulluser";s:2:"no";s:8:"tb_print";s:2:"no";s:10:"vw_bgcolor";s:7:"#EBEBEB";s:10:"vw_pbcolor";s:7:"#DADADA";s:6:"vw_css";s:0:"";s:8:"vw_flags";s:0:"";s:8:"language";s:5:"en_US";s:8:"base_url";s:51:"http://localhost/portfolio_site/wp-content/uploads/";s:9:"link_show";s:3:"all";s:9:"link_mask";s:2:"no";s:10:"link_block";s:2:"no";s:9:"link_text";s:23:"Download (%TYPE, %SIZE)";s:8:"link_pos";s:5:"below";s:10:"link_force";s:2:"no";s:5:"cache";s:2:"on";}'),
(2, 'max-doc-security', 'Hide document location and text selection, prevent downloads', 'a:22:{s:6:"viewer";s:8:"enhanced";s:13:"default_width";s:4:"100%";s:14:"default_height";s:5:"500px";s:9:"tb_mobile";s:7:"default";s:8:"tb_flags";s:0:"";s:10:"tb_fullscr";s:6:"viewer";s:10:"tb_fullwin";s:3:"new";s:11:"tb_fulluser";s:2:"no";s:8:"tb_print";s:2:"no";s:10:"vw_bgcolor";s:7:"#EBEBEB";s:10:"vw_pbcolor";s:7:"#DADADA";s:6:"vw_css";s:0:"";s:8:"vw_flags";s:0:"";s:8:"language";s:5:"en_US";s:8:"base_url";s:51:"http://localhost/portfolio_site/wp-content/uploads/";s:9:"link_show";s:4:"none";s:9:"link_mask";s:2:"no";s:10:"link_block";s:3:"yes";s:9:"link_text";s:0:"";s:8:"link_pos";s:5:"below";s:10:"link_force";s:2:"no";s:5:"cache";s:2:"on";}'),
(3, 'dark', 'Dark-colored theme, example of custom CSS option', 'a:22:{s:6:"viewer";s:8:"enhanced";s:13:"default_width";s:4:"100%";s:14:"default_height";s:5:"500px";s:9:"tb_mobile";s:7:"default";s:8:"tb_flags";s:0:"";s:10:"tb_fullscr";s:6:"viewer";s:10:"tb_fullwin";s:3:"new";s:11:"tb_fulluser";s:2:"no";s:8:"tb_print";s:2:"no";s:10:"vw_bgcolor";s:0:"";s:10:"vw_pbcolor";s:0:"";s:6:"vw_css";s:92:"http://localhost/portfolio_site/wp-content/plugins/google-document-embedder/css/gde-dark.css";s:8:"vw_flags";s:0:"";s:8:"language";s:5:"en_US";s:8:"base_url";s:51:"http://localhost/portfolio_site/wp-content/uploads/";s:9:"link_show";s:3:"all";s:9:"link_mask";s:2:"no";s:10:"link_block";s:2:"no";s:9:"link_text";s:23:"Download (%TYPE, %SIZE)";s:8:"link_pos";s:5:"below";s:10:"link_force";s:2:"no";s:5:"cache";s:2:"on";}') ;

#
# End of data contents of table `wp_gde_profiles`
# --------------------------------------------------------



#
# Delete any existing table `wp_gde_secure`
#

DROP TABLE IF EXISTS `wp_gde_secure`;


#
# Table structure of table `wp_gde_secure`
#

CREATE TABLE `wp_gde_secure` (
  `code` varchar(10) NOT NULL,
  `url` varchar(255) NOT NULL,
  `murl` varchar(100) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `autoexpire` enum('Y','N') NOT NULL DEFAULT 'N',
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_gde_secure`
#

#
# End of data contents of table `wp_gde_secure`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf_objectmeta`
#

DROP TABLE IF EXISTS `wp_nf_objectmeta`;


#
# Table structure of table `wp_nf_objectmeta`
#

CREATE TABLE `wp_nf_objectmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_nf_objectmeta`
#
INSERT INTO `wp_nf_objectmeta` ( `id`, `object_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'date_updated', '2014-09-09'),
(2, 1, 'active', '1'),
(3, 1, 'name', 'Email User'),
(4, 1, 'type', 'email'),
(5, 1, 'email_format', 'html'),
(6, 1, 'attach_csv', '1'),
(7, 1, 'from_name', ''),
(8, 1, 'from_address', ''),
(9, 1, 'reply_to', ''),
(10, 1, 'to', 'field_2'),
(11, 1, 'cc', ''),
(12, 1, 'bcc', ''),
(13, 1, 'email_subject', 'Thank you for contacting us!'),
(14, 1, 'email_message', 'Thank you so much for contacting us. We will get back to you shortly.'),
(15, 1, 'redirect_url', ''),
(16, 1, 'success_message_loc', 'ninja_forms_display_before_fields'),
(17, 1, 'success_msg', ''),
(18, 2, 'date_updated', '2014-09-09'),
(19, 2, 'active', '1'),
(20, 2, 'name', 'Success Message'),
(21, 2, 'type', 'success_message'),
(22, 2, 'email_format', 'html'),
(23, 2, 'attach_csv', '0'),
(24, 2, 'from_name', ''),
(25, 2, 'from_address', ''),
(26, 2, 'reply_to', ''),
(27, 2, 'to', ''),
(28, 2, 'cc', ''),
(29, 2, 'bcc', ''),
(30, 2, 'email_subject', ''),
(31, 2, 'email_message', ''),
(32, 2, 'redirect_url', ''),
(33, 2, 'success_message_loc', 'ninja_forms_display_after_fields'),
(34, 2, 'success_msg', 'Your form has been successfully submitted.'),
(35, 3, 'date_updated', '2014-09-09'),
(36, 3, 'active', '1'),
(37, 3, 'name', 'Email Admin'),
(38, 3, 'type', 'email'),
(39, 3, 'email_format', 'html'),
(40, 3, 'attach_csv', '1'),
(41, 3, 'from_name', ''),
(42, 3, 'from_address', ''),
(43, 3, 'reply_to', 'field_2'),
(44, 3, 'to', ''),
(45, 3, 'cc', ''),
(46, 3, 'bcc', ''),
(47, 3, 'email_subject', 'Ninja Form Submission'),
(48, 3, 'email_message', '<table><tbody><tr id="ninja_forms_field_1"><td>Name:</td><td>[ninja_forms_field id=1]</td></tr><tr id="ninja_forms_field_2"><td>Email:</td><td>[ninja_forms_field id=2]</td></tr><tr id="ninja_forms_field_3"><td>Message:</td><td>[ninja_forms_field id=3]</td></tr></tbody></table>'),
(49, 3, 'redirect_url', ''),
(50, 3, 'success_message_loc', 'ninja_forms_display_before_fields'),
(51, 3, 'success_msg', '') ;

#
# End of data contents of table `wp_nf_objectmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf_objects`
#

DROP TABLE IF EXISTS `wp_nf_objects`;


#
# Table structure of table `wp_nf_objects`
#

CREATE TABLE `wp_nf_objects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_nf_objects`
#
INSERT INTO `wp_nf_objects` ( `id`, `type`) VALUES
(1, 'notification'),
(2, 'notification'),
(3, 'notification') ;

#
# End of data contents of table `wp_nf_objects`
# --------------------------------------------------------



#
# Delete any existing table `wp_nf_relationships`
#

DROP TABLE IF EXISTS `wp_nf_relationships`;


#
# Table structure of table `wp_nf_relationships`
#

CREATE TABLE `wp_nf_relationships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `child_type` varchar(255) NOT NULL,
  `parent_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_nf_relationships`
#
INSERT INTO `wp_nf_relationships` ( `id`, `child_id`, `parent_id`, `child_type`, `parent_type`) VALUES
(1, 1, 1, 'notification', 'form'),
(2, 2, 1, 'notification', 'form'),
(3, 3, 1, 'notification', 'form') ;

#
# End of data contents of table `wp_nf_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_ninja_forms`
#

DROP TABLE IF EXISTS `wp_ninja_forms`;


#
# Table structure of table `wp_ninja_forms`
#

CREATE TABLE `wp_ninja_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_ninja_forms`
#
INSERT INTO `wp_ninja_forms` ( `id`, `data`, `date_updated`) VALUES
(1, 'a:18:{s:10:"form_title";s:12:"Contact Form";s:10:"show_title";s:1:"0";s:9:"save_subs";s:1:"1";s:9:"logged_in";s:1:"0";s:11:"append_page";s:0:"";s:4:"ajax";s:1:"0";s:12:"landing_page";s:0:"";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:11:"success_msg";s:42:"Your form has been successfully submitted.";s:10:"email_from";s:0:"";s:10:"email_type";s:4:"html";s:14:"user_email_msg";s:69:"Thank you so much for contacting us. We will get back to you shortly.";s:17:"user_email_fields";s:1:"0";s:15:"admin_email_msg";s:0:"";s:18:"admin_email_fields";s:1:"1";s:16:"admin_attach_csv";s:1:"0";s:15:"email_from_name";s:0:"";}', '2014-09-09 15:20:50') ;

#
# End of data contents of table `wp_ninja_forms`
# --------------------------------------------------------



#
# Delete any existing table `wp_ninja_forms_fav_fields`
#

DROP TABLE IF EXISTS `wp_ninja_forms_fav_fields`;


#
# Table structure of table `wp_ninja_forms_fav_fields`
#

CREATE TABLE `wp_ninja_forms_fav_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_type` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_ninja_forms_fav_fields`
#
INSERT INTO `wp_ninja_forms_fav_fields` ( `id`, `row_type`, `type`, `order`, `data`, `name`) VALUES
(2, 0, '_list', 0, 'a:10:{s:5:"label";s:14:"State Dropdown";s:9:"label_pos";s:4:"left";s:9:"list_type";s:8:"dropdown";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:3:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:8:"selected";s:1:"0";}i:1;a:3:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:8:"selected";s:1:"0";}i:2;a:3:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:8:"selected";s:1:"0";}i:3;a:3:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:8:"selected";s:1:"0";}i:4;a:3:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:8:"selected";s:1:"0";}i:5;a:3:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:8:"selected";s:1:"0";}i:6;a:3:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:8:"selected";s:1:"0";}i:7;a:3:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:8:"selected";s:1:"0";}i:8;a:3:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:8:"selected";s:1:"0";}i:9;a:3:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:8:"selected";s:1:"0";}i:10;a:3:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:8:"selected";s:1:"0";}i:11;a:3:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:8:"selected";s:1:"0";}i:12;a:3:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:8:"selected";s:1:"0";}i:13;a:3:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:8:"selected";s:1:"0";}i:14;a:3:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:8:"selected";s:1:"0";}i:15;a:3:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:8:"selected";s:1:"0";}i:16;a:3:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:8:"selected";s:1:"0";}i:17;a:3:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:8:"selected";s:1:"0";}i:18;a:3:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:8:"selected";s:1:"0";}i:19;a:3:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:8:"selected";s:1:"0";}i:20;a:3:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:8:"selected";s:1:"0";}i:21;a:3:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:8:"selected";s:1:"0";}i:22;a:3:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:8:"selected";s:1:"0";}i:23;a:3:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:8:"selected";s:1:"0";}i:24;a:3:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:8:"selected";s:1:"0";}i:25;a:3:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:8:"selected";s:1:"0";}i:26;a:3:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:8:"selected";s:1:"0";}i:27;a:3:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:8:"selected";s:1:"0";}i:28;a:3:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:8:"selected";s:1:"0";}i:29;a:3:{s:5:"label";s:13:"New Hampshire";s:5:"value";s:2:"NH";s:8:"selected";s:1:"0";}i:30;a:3:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:8:"selected";s:1:"0";}i:31;a:3:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:8:"selected";s:1:"0";}i:32;a:3:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:8:"selected";s:1:"0";}i:33;a:3:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:8:"selected";s:1:"0";}i:34;a:3:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:8:"selected";s:1:"0";}i:35;a:3:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:8:"selected";s:1:"0";}i:36;a:3:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:8:"selected";s:1:"0";}i:37;a:3:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:8:"selected";s:1:"0";}i:38;a:3:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:8:"selected";s:1:"0";}i:39;a:3:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:8:"selected";s:1:"0";}i:40;a:3:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:8:"selected";s:1:"0";}i:41;a:3:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:8:"selected";s:1:"0";}i:42;a:3:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:8:"selected";s:1:"0";}i:43;a:3:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:8:"selected";s:1:"0";}i:44;a:3:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:8:"selected";s:1:"0";}i:45;a:3:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:8:"selected";s:1:"0";}i:46;a:3:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:8:"selected";s:1:"0";}i:47;a:3:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:8:"selected";s:1:"0";}i:48;a:3:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:8:"selected";s:1:"0";}i:49;a:3:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:8:"selected";s:1:"0";}i:50;a:3:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:8:"selected";s:1:"0";}}}s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'State Dropdown'),
(3, 0, '_spam', 0, 'a:6:{s:9:"label_pos";s:4:"left";s:5:"label";s:18:"Anti-Spam Question";s:6:"answer";s:16:"Anti-Spam Answer";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Anti-Spam'),
(4, 0, '_submit', 0, 'a:4:{s:5:"label";s:6:"Submit";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Submit') ;

#
# End of data contents of table `wp_ninja_forms_fav_fields`
# --------------------------------------------------------



#
# Delete any existing table `wp_ninja_forms_fields`
#

DROP TABLE IF EXISTS `wp_ninja_forms_fields`;


#
# Table structure of table `wp_ninja_forms_fields`
#

CREATE TABLE `wp_ninja_forms_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `fav_id` int(11) DEFAULT NULL,
  `def_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_ninja_forms_fields`
#
INSERT INTO `wp_ninja_forms_fields` ( `id`, `form_id`, `type`, `order`, `data`, `fav_id`, `def_id`) VALUES
(1, 1, '_text', 0, 'a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(2, 1, '_text', 1, 'a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 14),
(3, 1, '_textarea', 2, 'a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(4, 1, '_spam', 3, 'a:10:{s:5:"label";s:25:"What is thirteen minus 6?";s:9:"label_pos";s:4:"left";s:11:"spam_answer";s:1:"7";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0),
(5, 1, '_submit', 4, 'a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0) ;

#
# End of data contents of table `wp_ninja_forms_fields`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5340 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/portfolio_site', 'yes'),
(2, 'blogname', 'Valerie Sundman', 'yes'),
(3, 'blogdescription', 'My Portfolio Site', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'valeriec@san.rr.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '', 'yes'),
(10, 'comments_notify', '', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'closed', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'comment_moderation', '', 'yes'),
(26, 'moderation_notify', '', 'yes'),
(27, 'permalink_structure', '/%postname%/', 'yes'),
(28, 'gzipcompression', '0', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:5:{i:0;s:36:"google-document-embedder/gviewer.php";i:1;s:27:"ninja-forms/ninja-forms.php";i:2;s:27:"updraftplus/updraftplus.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";i:4;s:27:"wp-pagenavi/wp-pagenavi.php";}', 'yes'),
(33, 'home', 'http://localhost/portfolio_site', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '8', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:69:"/xampp/htdocs/portfolio_site/wp-content/themes/engrave-lite/image.php";i:1;s:69:"/xampp/htdocs/portfolio_site/wp-content/themes/engrave-lite/index.php";i:2;s:74:"/xampp/htdocs/portfolio_site/wp-content/themes/engrave-lite/front-page.php";i:3;s:68:"/xampp/htdocs/portfolio_site/wp-content/themes/engrave-lite/page.php";i:4;s:69:"/xampp/htdocs/portfolio_site/wp-content/themes/engrave-lite/style.css";}', 'no'),
(41, 'template', 'audio-theme', 'yes'),
(42, 'stylesheet', 'audio-theme', 'yes'),
(43, 'comment_whitelist', '', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '', 'yes'),
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
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:27:"wp-pagenavi/wp-pagenavi.php";s:14:"__return_false";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '75', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '27916', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:64:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:13:"manage_cforms";b:1;s:12:"track_cforms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:12:"home-widgets";a:2:{i:0;s:8:"search-2";i:1;s:6:"meta-2";}s:12:"page-sidebar";N;s:14:"footer-widgets";N;s:12:"blog-sidebar";N;s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:9:{i:1424724743;a:1:{s:24:"ninja_forms_daily_action";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1424730438;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1424752577;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1424786089;a:1:{s:24:"akismet_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1424794949;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1424795805;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1425315383;a:1:{s:23:"updraft_backup_database";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1427302583;a:1:{s:14:"updraft_backup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2592000;}}}s:7:"version";i:2;}', 'yes'),
(105, 'auth_key', '5+b7n}oE&Q2xq=b7:#3%Vql?02o<M/,fkjE^N0l^+Ytv]oK.,}43XxfWhdV|HPfw', 'yes'),
(106, 'auth_salt', 'z=]245Rb5b`d,Zd$>~Xe9e8S)2!RM(YRCRv%uC-(3lt#tTym:SE<(A&VPvSvfC}m', 'yes'),
(107, 'logged_in_key', 'Ee8?e}Hyfd$Xl{Otejq4VWS{BI*T%kySrp|bjBkC>=VSe2_epV$]3Evp*5c[H^29', 'yes'),
(108, 'logged_in_salt', '<wNmlTpcinozea2 JC &~~5GzC1-OIN_:K58XR>E3885Pk]hiqWNcFwq^hGu^I-Q', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(110, 'nonce_key', 'GRa|,X>(hAMSeSY2<ro/-y[i#Y<E!i3:7!W|<6ZJL#T}a,3^pavOf.U>Sp.ge=UP', 'yes'),
(111, 'nonce_salt', 'Pa_7YYCAW?A&ql[tT`r6SKwZw) =;U)!d~Mg4)__6 3o08bJWd^G~N?L^H@=!!@g', 'yes'),
(164, 'current_theme', 'Audio Theme', 'yes'),
(165, 'theme_mods_engrave-lite', 'a:9:{i:0;b:0;s:16:"header_textcolor";s:0:"";s:16:"background_color";s:0:"";s:12:"header_image";s:13:"remove-header";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1409365893;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"footer-w1";a:0:{}s:9:"footer-w2";a:0:{}s:9:"footer-w3";a:0:{}s:9:"footer-w4";a:0:{}s:9:"footer-w5";a:0:{}s:9:"footer-w6";a:0:{}}}}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(167, 'redux', 'a:90:{s:22:"thinkup_general_layout";s:1:"0";s:32:"thinkup_general_responsiveswitch";s:1:"0";s:32:"thinkup_general_breadcrumbswitch";s:1:"0";s:35:"thinkup_general_breadcrumbdelimeter";s:1:"/";s:27:"thinkup_general_democontent";s:1:"0";s:23:"thinkup_homepage_layout";s:1:"0";s:29:"thinkup_homepage_sliderswitch";s:7:"option1";s:34:"thinkup_homepage_sliderpresetwidth";s:1:"1";s:35:"thinkup_homepage_sliderpresetheight";s:3:"350";s:28:"thinkup_homepage_introswitch";s:1:"0";s:30:"thinkup_homepage_sectionswitch";s:1:"1";s:27:"thinkup_header_searchswitch";s:1:"0";s:27:"thinkup_header_socialswitch";s:1:"0";s:29:"thinkup_header_facebookswitch";s:1:"0";s:33:"thinkup_header_facebookiconswitch";s:1:"0";s:28:"thinkup_header_twitterswitch";s:1:"0";s:32:"thinkup_header_twittericonswitch";s:1:"0";s:27:"thinkup_header_googleswitch";s:1:"0";s:31:"thinkup_header_googleiconswitch";s:1:"0";s:29:"thinkup_header_linkedinswitch";s:1:"0";s:33:"thinkup_header_linkediniconswitch";s:1:"0";s:27:"thinkup_header_flickrswitch";s:1:"0";s:31:"thinkup_header_flickriconswitch";s:1:"0";s:27:"thinkup_header_lastfmswitch";s:1:"0";s:31:"thinkup_header_lastfmiconswitch";s:1:"0";s:24:"thinkup_header_rssswitch";s:1:"0";s:28:"thinkup_header_rssiconswitch";s:1:"0";s:21:"thinkup_footer_layout";s:1:"0";s:27:"thinkup_footer_widgetswitch";s:1:"0";s:19:"thinkup_post_layout";s:7:"option1";s:26:"thinkup_general_logoswitch";s:0:"";s:24:"thinkup_general_logolink";s:0:"";s:30:"thinkup_general_logolinkretina";s:0:"";s:25:"thinkup_general_sitetitle";s:0:"";s:31:"thinkup_general_sitedescription";s:0:"";s:27:"thinkup_general_faviconlink";s:0:"";s:19:"info_page_structure";s:0:"";s:24:"thinkup_general_sidebars";s:0:"";s:25:"thinkup_general_customcss";s:0:"";s:31:"thinkup_general_customjavafront";s:0:"";s:10:"demo-intro";s:0:"";s:25:"thinkup_homepage_sidebars";s:0:"";s:27:"thinkup_homepage_slidername";s:0:"";s:29:"thinkup_homepage_sliderpreset";s:0:"";s:28:"thinkup_homepage_introaction";s:0:"";s:34:"thinkup_homepage_introactionteaser";s:0:"";s:34:"thinkup_homepage_introactionbutton";s:0:"";s:32:"thinkup_homepage_introactionlink";s:0:"";s:32:"thinkup_homepage_introactionpage";s:0:"";s:34:"thinkup_homepage_introactioncustom";s:0:"";s:30:"thinkup_homepage_section1_icon";s:0:"";s:31:"thinkup_homepage_section1_title";s:0:"";s:30:"thinkup_homepage_section1_desc";s:0:"";s:30:"thinkup_homepage_section1_link";s:0:"";s:30:"thinkup_homepage_section2_icon";s:0:"";s:31:"thinkup_homepage_section2_title";s:0:"";s:30:"thinkup_homepage_section2_desc";s:0:"";s:30:"thinkup_homepage_section2_link";s:0:"";s:30:"thinkup_homepage_section3_icon";s:0:"";s:31:"thinkup_homepage_section3_title";s:0:"";s:30:"thinkup_homepage_section3_desc";s:0:"";s:30:"thinkup_homepage_section3_link";s:0:"";s:28:"thinkup_header_socialmessage";s:0:"";s:27:"thinkup_header_facebooklink";s:0:"";s:33:"thinkup_header_facebookcustomicon";s:0:"";s:26:"thinkup_header_twitterlink";s:0:"";s:32:"thinkup_header_twittercustomicon";s:0:"";s:25:"thinkup_header_googlelink";s:0:"";s:31:"thinkup_header_googlecustomicon";s:0:"";s:27:"thinkup_header_linkedinlink";s:0:"";s:33:"thinkup_header_linkedincustomicon";s:0:"";s:25:"thinkup_header_flickrlink";s:0:"";s:31:"thinkup_header_flickrcustomicon";s:0:"";s:25:"thinkup_header_lastfmlink";s:0:"";s:31:"thinkup_header_lastfmcustomicon";s:0:"";s:22:"thinkup_header_rsslink";s:0:"";s:28:"thinkup_header_rsscustomicon";s:0:"";s:19:"thinkup_blog_layout";s:0:"";s:21:"thinkup_blog_sidebars";s:0:"";s:23:"thinkup_blog_postswitch";s:0:"";s:21:"thinkup_post_sidebars";s:0:"";s:16:"promotion-header";s:0:"";s:12:"theme-alante";s:0:"";s:14:"theme-minamaze";s:0:"";s:13:"theme-engrave";s:0:"";s:15:"theme-evolution";s:0:"";s:11:"theme-smart";s:0:"";s:12:"theme-office";s:0:"";s:16:"promotion-footer";s:0:"";s:14:"REDUX_imported";b:0;}', 'yes'),
(171, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(172, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(173, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(174, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(175, 'widget_thinkup_widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(176, 'widget_thinkup_widget_flickr', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'widget_thinkup_widget_popularposts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(178, 'widget_thinkup_widget_recentcomments', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(179, 'widget_thinkup_widget_recentposts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'widget_thinkup_widget_search', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(181, 'widget_thinkup_widget_tabs', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(182, 'widget_thinkup_widget_tagscloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(187, 'recently_activated', 'a:1:{s:36:"contact-form-7/wp-contact-form-7.php";i:1424119825;}', 'yes'),
(188, 'cgmp_cache_mashup_map', '', 'yes'),
(189, 'cgmp_cache_time_mashup_map', '', 'yes'),
(198, 'cforms_settings', 'a:3:{i:0;b:0;s:6:"global";a:38:{s:9:"plugindir";s:6:"cforms";s:11:"cforms_root";s:57:"http://localhost/portfolio_site/wp-content/plugins/cforms";s:7:"tinyURI";s:54:"http://localhost/portfolio_site/wp-includes/js/tinymce";s:15:"cforms_root_dir";s:54:"/xampp/htdocs/portfolio_site/wp-content/plugins/cforms";s:10:"cforms_IIS";s:1:"/";s:1:"v";s:4:"14.6";s:20:"cforms_style_doctype";s:109:"<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">";s:12:"cforms_style";a:13:{s:4:"body";s:86:"style="margin:0; padding:0; font-family: Verdana, Arial; font-size: 13px; color:#555;"";s:4:"meta";s:157:"style="font-size: 90%; margin:0; background:#aaaaaa; padding:1em 2em 1em 0.6em; color:#555555; text-shadow:0 1px 0 #c5c5c5; border-bottom:1px solid #9d9d9d;"";s:5:"admin";s:118:"style="background:#f0f0f0; border-top:1px solid #777; box-shadow:0 -2px 2px #999; -webkit-box-shadow:0 -2px 2px #999;"";s:5:"title";s:117:"style="font-size: 90%; margin:0; background:#fcfcfc; padding:1em 2em 1em 0.6em; color:#888888; display:inline-block;"";s:5:"table";s:59:"style="width:auto; margin: 0.2em 2em 2em; font-size: 100%;"";s:2:"fs";s:101:"style="color:#555; padding:1em 0 0.4em; font-size: 110%; font-weight:bold; text-shadow:0 1px 0 #fff;"";s:6:"key_td";s:99:"style="padding: 0.3em 1em; border-bottom:1px dotted #ddd; padding-right:2em; color:#888; width:1%;"";s:6:"val_td";s:86:"style="padding: 0.3em 1em; border-bottom:1px dotted #ddd; padding-left:0; color:#333;"";s:6:"cforms";s:148:"style="display:block; padding:1em 0.6em; margin-top:1em; background:#f7f7f7; color:#777; font-size:90%; text-align:right; font-family:Tahoma,Arial;"";s:8:"autoconf";s:58:"style="padding:1em 1em 0; background:#f0f0f0; color:#333;"";s:4:"dear";s:65:"style="margin:0.5em 30px; font-weight:bold; margin-bottom:1.2em;"";s:5:"confp";s:26:"style="margin:0.5em 30px;"";s:15:"confirmationmsg";s:99:"style="margin:4em 30px 0; padding-bottom:1em; font-size:80%; color:#aaa; font-family:Tahoma,Arial;"";}s:16:"cforms_formcount";s:1:"1";s:18:"cforms_upload_err1";s:43:"Generic file upload error. Please try again";s:18:"cforms_upload_err2";s:56:"File is empty. Please upload something more substantial.";s:18:"cforms_upload_err3";s:55:"Sorry, file is too large. You may try to zip your file.";s:18:"cforms_upload_err4";s:63:"File upload failed. Please try again or contact the blog admin.";s:18:"cforms_upload_err5";s:41:"File not accepted, file type not allowed.";s:16:"cforms_rsskeyall";s:32:"1ad154452a4c4ef007bbe169a823fa1e";s:13:"cforms_rssall";b:0;s:19:"cforms_rssall_count";i:5;s:18:"cforms_captcha_def";a:14:{s:1:"h";i:25;s:1:"w";i:115;s:1:"c";s:6:"000066";s:1:"l";s:6:"000066";s:1:"f";s:9:"font4.ttf";s:2:"a1";i:-12;s:2:"a2";i:12;s:2:"f1";i:17;s:2:"f2";i:19;s:2:"bg";s:5:"1.gif";s:2:"c1";i:4;s:2:"c2";i:5;s:2:"ac";s:32:"abcdefghijkmnpqrstuvwxyz23456789";s:1:"i";s:1:"i";}s:13:"cforms_sec_qa";s:82:"What color is snow?=white\r\nThe color of grass is=green\r\nTen minus five equals=five";s:14:"cforms_codeerr";s:43:"Please double-check your verification code.";s:20:"cforms_show_quicktag";s:1:"1";s:23:"cforms_show_quicktag_js";b:0;s:21:"cforms_commentsuccess";s:32:"Thank you for leaving a comment.";s:18:"cforms_commentWait";s:2:"15";s:20:"cforms_commentParent";s:13:"mycommentlist";s:18:"cforms_commentHTML";s:199:"<li id="comment-{id}">{moderation}\n<p>{usercomment}</p>\n<p>\n<cite>Comment by <a href="{url}" rel="external nofollow">{author}</a> &mdash; {date} @ <a href="#comment-{id}">{time}</a></cite>\n</p>\n</li>";s:19:"cforms_commentInMod";s:45:"<em>Your comment is awaiting moderation.</em>";s:13:"cforms_avatar";s:2:"32";s:10:"cforms_css";s:14:"cforms2012.css";s:14:"cforms_labelID";s:1:"0";s:11:"cforms_liID";s:1:"0";s:15:"cforms_database";s:1:"0";s:17:"cforms_datepicker";s:1:"0";s:15:"cforms_dp_start";s:1:"0";s:14:"cforms_dp_date";s:8:"mm/dd/yy";s:14:"cforms_dp_days";s:27:""S","M","T","W","T","F","S"";s:16:"cforms_dp_months";s:109:""January","February","March","April","May","June","July","August","September","October","November","December"";s:13:"cforms_dp_nav";a:6:{i:0;s:13:"Previous Year";i:1;s:14:"Previous Month";i:2;s:9:"Next Year";i:3;s:10:"Next Month";i:4;s:5:"Close";i:5;s:11:"Choose Date";}}s:4:"form";a:48:{s:17:"cforms_upload_dir";s:54:"/xampp/htdocs/portfolio_site/wp-content/plugins/cforms";s:17:"cforms_upload_ext";s:19:"txt,zip,doc,rtf,xls";s:18:"cforms_upload_size";s:4:"1024";s:16:"cforms_dontclear";b:0;s:13:"cforms_rsskey";s:32:"188341ed4f7f375050f94693e7fa4f52";s:10:"cforms_rss";b:0;s:16:"cforms_rss_count";i:5;s:19:"cforms_count_fields";s:1:"5";s:20:"cforms_count_field_1";s:47:"My Fieldset$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0";s:20:"cforms_count_field_2";s:51:"Your Name|Your Name$#$textfield$#$1$#$0$#$1$#$0$#$0";s:20:"cforms_count_field_3";s:37:"Email$#$textfield$#$1$#$1$#$0$#$0$#$0";s:20:"cforms_count_field_4";s:47:"Website|http://$#$textfield$#$0$#$0$#$0$#$0$#$0";s:20:"cforms_count_field_5";s:38:"Message$#$textarea$#$0$#$0$#$0$#$0$#$0";s:15:"cforms_required";s:10:"(required)";s:20:"cforms_emailrequired";s:22:"(valid email required)";s:14:"cforms_confirm";s:1:"0";s:11:"cforms_ajax";s:1:"1";s:20:"cforms_emailpriority";s:1:"3";s:12:"cforms_fname";s:17:"Your default form";s:15:"cforms_csubject";s:41:"Re: Your note$#$Re: Submitted form (copy)";s:11:"cforms_cmsg";s:89:"Dear {Your Name},\nThank you for your note!\nWe will get back to you as soon as possible.\n\n";s:16:"cforms_cmsg_html";s:458:"<div style="padding:1em 1em 0; background:#f0f0f0; color:#333;"><p style="margin:0.5em 30px; font-weight:bold; margin-bottom:1.2em;">Dear {Your Name},</p>\n<p style="margin:0.5em 30px;">Thank you for your note!</p>\n<p style="margin:0.5em 30px;">We will get back to you as soon as possible.\n<div style="margin:4em 30px 0; padding-bottom:1em; font-size:80%; color:#aaa; font-family:Tahoma,Arial;">This is an automatic confirmation message. {Date}.</div></div>\n\n";s:12:"cforms_email";s:19:"valeriec@san.rr.com";s:16:"cforms_fromemail";s:19:"valeriec@san.rr.com";s:10:"cforms_bcc";s:0:"";s:13:"cforms_header";s:147:"A new submission (form: "{Form Name}")\r\n============================================\r\nSubmitted on: {Date}\r\nVia: {Page}\r\nBy {IP} (visitor IP).\r\n.\r\n";s:18:"cforms_header_html";s:223:"<p style="font-size: 90%; margin:0; background:#aaaaaa; padding:1em 2em 1em 0.6em; color:#555555; text-shadow:0 1px 0 #c5c5c5; border-bottom:1px solid #9d9d9d;">A form has been submitted on {Date}, via: {Page} [IP {IP}]</p>";s:15:"cforms_formdata";s:4:"1111";s:12:"cforms_space";s:2:"30";s:20:"cforms_noattachments";s:1:"0";s:14:"cforms_subject";s:26:"A comment from {Your Name}";s:18:"cforms_submit_text";s:6:"Submit";s:14:"cforms_success";s:27:"Thank you for your comment!";s:14:"cforms_failure";s:39:"Please fill in all the required fields.";s:15:"cforms_limittxt";s:59:"<strong>No more submissions accepted at this time.</strong>";s:14:"cforms_working";s:20:"One moment please...";s:12:"cforms_popup";s:2:"nn";s:14:"cforms_showpos";s:5:"ynyyy";s:11:"cforms_hide";b:0;s:15:"cforms_redirect";b:0;s:20:"cforms_redirect_page";s:28:"http://redirect.to.this.page";s:13:"cforms_action";s:1:"0";s:18:"cforms_action_page";s:7:"http://";s:15:"cforms_tracking";s:0:"";s:20:"cforms_showdashboard";s:1:"1";s:17:"cforms_maxentries";s:0:"";s:18:"cforms_tellafriend";s:2:"01";s:16:"cforms_dashboard";s:1:"0";}}', 'yes'),
(203, 'widget_cforms', 'a:1:{i:1;a:0:{}}', 'yes'),
(204, 'widget_akismet_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(206, 'theme_mods_twentytwelve', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1406133799;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(444, 'akismet_spam_count', '3', 'yes'),
(460, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:19:"valeriec@san.rr.com";s:7:"version";s:5:"4.1.1";s:9:"timestamp";i:1424322818;}', 'yes'),
(1006, 'category_children', 'a:0:{}', 'yes'),
(4470, 'WPLANG', '', 'yes'),
(4471, 'db_upgraded', '', 'yes'),
(4474, 'can_compress_scripts', '0', 'yes'),
(4479, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1422221172;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(4480, 'theme_mods_colorway', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1424119721;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:2:{i:0;s:8:"search-2";i:1;s:6:"meta-2";}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";N;s:24:"third-footer-widget-area";N;s:25:"fourth-footer-widget-area";N;s:35:"home-page-right-feature-widget-area";N;}}}', 'yes'),
(4481, 'inkthemes_options', 'a:37:{s:11:"of_template";a:38:{i:0;a:2:{s:4:"name";s:16:"General Settings";s:4:"type";s:7:"heading";}i:1;a:4:{s:4:"name";s:11:"Custom Logo";s:4:"desc";s:61:"Choose your own logo. Optimal Size: 215px Wide by 55px Height";s:2:"id";s:13:"colorway_logo";s:4:"type";s:6:"upload";}i:2;a:4:{s:4:"name";s:14:"Custom Favicon";s:4:"desc";s:71:"Specify a 16px x 16px image that will represent your website\'s favicon.";s:2:"id";s:16:"colorway_favicon";s:4:"type";s:6:"upload";}i:3;a:5:{s:4:"name";s:13:"Tracking Code";s:4:"desc";s:58:"Paste your Google Analytics (or other) tracking code here.";s:2:"id";s:18:"colorway_analytics";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:4;a:2:{s:4:"name";s:16:"Home Top Feature";s:4:"type";s:7:"heading";}i:5;a:4:{s:4:"name";s:22:"Home Top Feature Image";s:4:"desc";s:67:"Choose Image for your Home Top Feature. Optimal Size: 900px x 350px";s:2:"id";s:20:"colorway_slideimage1";s:4:"type";s:6:"upload";}i:6;a:5:{s:4:"name";s:24:"Home Top Feature Heading";s:4:"desc";s:38:"Enter the Heading for Home Top Feature";s:2:"id";s:22:"colorway_slideheading1";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:7;a:5:{s:4:"name";s:29:"Home Top Feature Heading Link";s:4:"desc";s:50:"Enter the Link URL in Heading for Home Top Feature";s:2:"id";s:19:"colorway_slidelink1";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:8;a:5:{s:4:"name";s:28:"Home Top Feature Description";s:4:"desc";s:32:"Description for Home Top Feature";s:2:"id";s:26:"colorway_slidedescription1";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:9;a:2:{s:4:"name";s:18:"Home Page Settings";s:4:"type";s:7:"heading";}i:10;a:5:{s:4:"name";s:15:"Home Page Intro";s:4:"desc";s:37:"Enter your heading text for home page";s:2:"id";s:21:"inkthemes_mainheading";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:11;a:5:{s:4:"name";s:19:"First Feature Image";s:4:"desc";s:70:"Choose image for your feature column first. Optimal size 198px x 115px";s:2:"id";s:15:"inkthemes_fimg1";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:12;a:5:{s:4:"name";s:21:"First Feature Heading";s:4:"desc";s:40:"Enter your heading line for first column";s:2:"id";s:19:"inkthemes_headline1";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:13;a:5:{s:4:"name";s:18:"First Feature Link";s:4:"desc";s:40:"Enter your link for feature column first";s:2:"id";s:15:"inkthemes_link1";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:14;a:5:{s:4:"name";s:21:"First Feature Content";s:4:"desc";s:43:"Enter your feature content for column first";s:2:"id";s:18:"inkthemes_feature1";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:15;a:5:{s:4:"name";s:20:"Second Feature Image";s:4:"desc";s:71:"Choose image for your feature column second. Optimal size 198px x 115px";s:2:"id";s:15:"inkthemes_fimg2";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:16;a:5:{s:4:"name";s:22:"Second Feature Heading";s:4:"desc";s:41:"Enter your heading line for second column";s:2:"id";s:19:"inkthemes_headline2";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:17;a:5:{s:4:"name";s:19:"Second Feature Link";s:4:"desc";s:41:"Enter your link for feature column second";s:2:"id";s:15:"inkthemes_link2";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:18;a:5:{s:4:"name";s:22:"Second Feature Content";s:4:"desc";s:44:"Enter your feature content for column second";s:2:"id";s:18:"inkthemes_feature2";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:19;a:5:{s:4:"name";s:19:"Third Feature Image";s:4:"desc";s:70:"Choose image for your feature column thrid. Optimal size 198px x 115px";s:2:"id";s:15:"inkthemes_fimg3";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:20;a:5:{s:4:"name";s:21:"Third Feature Heading";s:4:"desc";s:40:"Enter your heading line for third column";s:2:"id";s:19:"inkthemes_headline3";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:21;a:5:{s:4:"name";s:18:"Third Feature Link";s:4:"desc";s:40:"Enter your link for feature column third";s:2:"id";s:15:"inkthemes_link3";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:22;a:5:{s:4:"name";s:21:"Third Feature Content";s:4:"desc";s:43:"Enter your feature content for third column";s:2:"id";s:18:"inkthemes_feature3";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:23;a:5:{s:4:"name";s:20:"Fourth Feature Image";s:4:"desc";s:71:"Choose image for your feature column fourth. Optimal size 198px x 115px";s:2:"id";s:15:"inkthemes_fimg4";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:24;a:5:{s:4:"name";s:22:"Fourth Feature Heading";s:4:"desc";s:41:"Enter your heading line for fourth column";s:2:"id";s:19:"inkthemes_headline4";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:25;a:5:{s:4:"name";s:19:"Fourth Feature link";s:4:"desc";s:41:"Enter your link for feature column fourth";s:2:"id";s:15:"inkthemes_link4";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:26;a:5:{s:4:"name";s:22:"Fourth Feature Content";s:4:"desc";s:44:"Enter your feature content for fourth column";s:2:"id";s:18:"inkthemes_feature4";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:27;a:5:{s:4:"name";s:21:"Home Page Testimonial";s:4:"desc";s:60:"Enter your text for homepage testimonial in short paragraph.";s:2:"id";s:21:"inkthemes_testimonial";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:28;a:5:{s:4:"name";s:22:"Home Page Blog Heading";s:4:"desc";s:42:"Enter your text for homepage blog heading.";s:2:"id";s:19:"inkthemes_blog_head";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:29;a:2:{s:4:"name";s:15:"Styling Options";s:4:"type";s:7:"heading";}i:30;a:5:{s:4:"name";s:10:"Custom CSS";s:4:"desc";s:62:"Quickly add some CSS to your theme by adding it to this block.";s:2:"id";s:19:"inkthemes_customcss";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:31;a:2:{s:4:"name";s:15:"Footer Settings";s:4:"type";s:7:"heading";}i:32;a:5:{s:4:"name";s:12:"Facebook URL";s:4:"desc";s:39:"Enter your Facebook URL if you have one";s:2:"id";s:17:"colorway_facebook";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:33;a:5:{s:4:"name";s:11:"Twitter URL";s:4:"desc";s:38:"Enter your Twitter URL if you have one";s:2:"id";s:16:"colorway_twitter";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:34;a:5:{s:4:"name";s:12:"RSS Feed URL";s:4:"desc";s:39:"Enter your RSS Feed URL if you have one";s:2:"id";s:12:"colorway_rss";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:35;a:5:{s:4:"name";s:13:"Linked In URL";s:4:"desc";s:39:"Enter your Linkedin URL if you have one";s:2:"id";s:17:"colorway_linkedin";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:36;a:5:{s:4:"name";s:16:"Stumble Upon URL";s:4:"desc";s:43:"Enter your Stumble Upon URL if you have one";s:2:"id";s:16:"colorway_stumble";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:37;a:5:{s:4:"name";s:8:"Digg URL";s:4:"desc";s:43:"Enter your Stumble Upon URL if you have one";s:2:"id";s:13:"colorway_digg";s:3:"std";s:0:"";s:4:"type";s:4:"text";}}s:12:"of_themename";s:8:"ColorWay";s:12:"of_shortname";s:2:"of";s:16:"colorway_favicon";s:0:"";s:18:"colorway_analytics";s:0:"";s:22:"colorway_slideheading1";s:29:"Welcome to my Portfolio Site!";s:19:"colorway_slidelink1";s:0:"";s:26:"colorway_slidedescription1";s:24:"Welcome to my Portfolio!";s:21:"inkthemes_mainheading";s:0:"";s:15:"inkthemes_fimg1";s:0:"";s:19:"inkthemes_headline1";s:0:"";s:15:"inkthemes_link1";s:0:"";s:18:"inkthemes_feature1";s:0:"";s:15:"inkthemes_fimg2";s:0:"";s:19:"inkthemes_headline2";s:0:"";s:15:"inkthemes_link2";s:0:"";s:18:"inkthemes_feature2";s:0:"";s:15:"inkthemes_fimg3";s:0:"";s:19:"inkthemes_headline3";s:0:"";s:15:"inkthemes_link3";s:0:"";s:18:"inkthemes_feature3";s:0:"";s:15:"inkthemes_fimg4";s:0:"";s:19:"inkthemes_headline4";s:0:"";s:15:"inkthemes_link4";s:0:"";s:18:"inkthemes_feature4";s:0:"";s:21:"inkthemes_testimonial";s:0:"";s:19:"inkthemes_blog_head";s:0:"";s:19:"inkthemes_customcss";s:0:"";s:17:"colorway_facebook";s:0:"";s:16:"colorway_twitter";s:0:"";s:12:"colorway_rss";s:0:"";s:17:"colorway_linkedin";s:0:"";s:16:"colorway_stumble";s:0:"";s:13:"colorway_digg";s:0:"";s:10:"of_options";a:33:{s:13:"colorway_logo";s:0:"";s:16:"colorway_favicon";s:0:"";s:18:"colorway_analytics";s:0:"";s:20:"colorway_slideimage1";s:0:"";s:22:"colorway_slideheading1";s:29:"Welcome to my Portfolio Site!";s:19:"colorway_slidelink1";s:0:"";s:26:"colorway_slidedescription1";s:24:"Welcome to my Portfolio!";s:21:"inkthemes_mainheading";s:0:"";s:15:"inkthemes_fimg1";s:0:"";s:19:"inkthemes_headline1";s:0:"";s:15:"inkthemes_link1";s:0:"";s:18:"inkthemes_feature1";s:0:"";s:15:"inkthemes_fimg2";s:0:"";s:19:"inkthemes_headline2";s:0:"";s:15:"inkthemes_link2";s:0:"";s:18:"inkthemes_feature2";s:0:"";s:15:"inkthemes_fimg3";s:0:"";s:19:"inkthemes_headline3";s:0:"";s:15:"inkthemes_link3";s:0:"";s:18:"inkthemes_feature3";s:0:"";s:15:"inkthemes_fimg4";s:0:"";s:19:"inkthemes_headline4";s:0:"";s:15:"inkthemes_link4";s:0:"";s:18:"inkthemes_feature4";s:0:"";s:21:"inkthemes_testimonial";s:0:"";s:19:"inkthemes_blog_head";s:0:"";s:19:"inkthemes_customcss";s:0:"";s:17:"colorway_facebook";s:0:"";s:16:"colorway_twitter";s:0:"";s:12:"colorway_rss";s:0:"";s:17:"colorway_linkedin";s:0:"";s:16:"colorway_stumble";s:0:"";s:13:"colorway_digg";s:0:"";}s:13:"colorway_logo";s:0:"";s:20:"colorway_slideimage1";s:0:"";}', 'yes'),
(4484, 'theme_mods_twentyfifteen', 'a:5:{i:0;b:0;s:16:"background_color";s:6:"fff9fb";s:23:"header_background_color";s:7:"#ffffff";s:18:"nav_menu_locations";a:2:{s:6:"social";i:2;s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1423428779;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:6:"meta-2";}}}}', 'yes'),
(4498, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(4781, 'gde_db_version', '1.2', 'yes'),
(4782, 'gde_options', 'a:11:{s:10:"ed_disable";s:2:"no";s:16:"ed_extend_upload";s:3:"yes";s:11:"ed_embed_sc";s:3:"yes";s:12:"file_maxsize";s:2:"12";s:11:"error_check";s:3:"yes";s:13:"error_display";s:3:"yes";s:9:"error_log";s:2:"no";s:10:"beta_check";s:2:"no";s:9:"ga_enable";s:2:"no";s:11:"ga_category";s:19:"Google Doc Embedder";s:8:"ga_label";s:3:"url";}', 'yes'),
(4818, 'theme_mods_audio-theme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:9:"main_menu";i:3;s:11:"footer_menu";i:3;s:12:"social_media";i:8;}s:18:"vs_job_description";s:33:"Web Developer / Graphic Designer ";s:12:"header_image";s:13:"remove-header";}', 'yes'),
(4827, 'audiotype_children', 'a:0:{}', 'yes'),
(5048, 'nf_convert_notifications_complete', '1', 'yes'),
(5049, 'nf_convert_subs_step', 'complete', 'yes'),
(5050, 'nf_upgrade_notice', 'closed', 'yes'),
(5051, 'nf_update_email_settings_complete', '1', 'yes'),
(5052, 'nf_email_fav_updated', '1', 'yes'),
(5053, 'ninja_forms_settings', 'a:17:{s:11:"date_format";s:5:"d/m/Y";s:15:"currency_symbol";s:1:"$";s:13:"req_div_label";s:36:"Fields marked with an * are required";s:16:"req_field_symbol";s:18:"<strong>*</strong>";s:15:"req_error_label";s:48:"Please ensure all required fields are completed.";s:15:"req_field_error";s:24:"This is a required field";s:10:"spam_error";s:47:"Please answer the anti-spam question correctly.";s:14:"honeypot_error";s:34:"Please leave the spam field blank.";s:18:"timed_submit_error";s:31:"Please wait to submit the form.";s:16:"javascript_error";s:54:"You cannot submit the form without Javascript enabled.";s:13:"invalid_email";s:35:"Please enter a valid email address.";s:13:"process_label";s:10:"Processing";s:17:"password_mismatch";s:36:"The passwords provided do not match.";s:10:"preview_id";i:67;s:7:"version";s:6:"2.8.13";s:19:"fix_form_email_from";i:1;s:18:"fix_field_reply_to";i:1;}', 'yes'),
(5058, 'pagenavi_options', 'a:15:{s:10:"pages_text";s:36:"Page %CURRENT_PAGE% of %TOTAL_PAGES%";s:12:"current_text";s:13:"%PAGE_NUMBER%";s:9:"page_text";s:13:"%PAGE_NUMBER%";s:10:"first_text";s:13:"&laquo; First";s:9:"last_text";s:12:"Last &raquo;";s:9:"prev_text";s:7:"&laquo;";s:9:"next_text";s:7:"&raquo;";s:12:"dotleft_text";s:3:"...";s:13:"dotright_text";s:3:"...";s:9:"num_pages";i:5;s:23:"num_larger_page_numbers";i:3;s:28:"larger_page_numbers_multiple";i:10;s:11:"always_show";b:0;s:16:"use_pagenavi_css";b:1;s:5:"style";i:1;}', 'yes'),
(5062, 'Type of Work_children', 'a:0:{}', 'yes'),
(5074, 'typework_children', 'a:0:{}', 'yes'),
(5075, 'rewrite_rules', 'a:147:{s:8:"slide/?$";s:25:"index.php?post_type=slide";s:38:"slide/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=slide&feed=$matches[1]";s:33:"slide/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=slide&feed=$matches[1]";s:25:"slide/page/([0-9]{1,})/?$";s:43:"index.php?post_type=slide&paged=$matches[1]";s:12:"portfolio/?$";s:29:"index.php?post_type=portfolio";s:42:"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:37:"portfolio/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:29:"portfolio/page/([0-9]{1,})/?$";s:47:"index.php?post_type=portfolio&paged=$matches[1]";s:9:"resume/?$";s:26:"index.php?post_type=resume";s:39:"resume/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=resume&feed=$matches[1]";s:34:"resume/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=resume&feed=$matches[1]";s:26:"resume/page/([0-9]{1,})/?$";s:44:"index.php?post_type=resume&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"nf_sub/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"nf_sub/([^/]+)/trackback/?$";s:33:"index.php?nf_sub=$matches[1]&tb=1";s:35:"nf_sub/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?nf_sub=$matches[1]&paged=$matches[2]";s:42:"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?nf_sub=$matches[1]&cpage=$matches[2]";s:27:"nf_sub/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?nf_sub=$matches[1]&page=$matches[2]";s:23:"nf_sub/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"nf_sub/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"slide/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"slide/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"slide/([^/]+)/trackback/?$";s:32:"index.php?slide=$matches[1]&tb=1";s:46:"slide/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?slide=$matches[1]&feed=$matches[2]";s:41:"slide/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?slide=$matches[1]&feed=$matches[2]";s:34:"slide/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&paged=$matches[2]";s:41:"slide/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&cpage=$matches[2]";s:26:"slide/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?slide=$matches[1]&page=$matches[2]";s:22:"slide/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"slide/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"portfolio/([^/]+)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:50:"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:45:"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:38:"portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:45:"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:30:"portfolio/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:26:"portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"typework/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?typework=$matches[1]&feed=$matches[2]";s:44:"typework/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?typework=$matches[1]&feed=$matches[2]";s:37:"typework/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?typework=$matches[1]&paged=$matches[2]";s:19:"typework/([^/]+)/?$";s:30:"index.php?typework=$matches[1]";s:34:"resume/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"resume/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"resume/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"resume/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"resume/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"resume/([^/]+)/trackback/?$";s:33:"index.php?resume=$matches[1]&tb=1";s:47:"resume/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?resume=$matches[1]&feed=$matches[2]";s:42:"resume/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?resume=$matches[1]&feed=$matches[2]";s:35:"resume/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?resume=$matches[1]&paged=$matches[2]";s:42:"resume/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?resume=$matches[1]&cpage=$matches[2]";s:27:"resume/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?resume=$matches[1]&page=$matches[2]";s:23:"resume/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"resume/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"resume/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"resume/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"resume/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=75&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(5265, 'updraft_dropbox', 'a:5:{s:6:"appkey";N;s:6:"secret";N;s:6:"folder";N;s:16:"tk_request_token";N;s:15:"tk_access_token";N;}', 'yes'),
(5275, 'updraft_lastmessage', 'The backup apparently succeeded and is now complete (Feb 24 00:56:37)', 'yes'),
(5276, 'updraftplus_unlocked_fd', '1', 'yes'),
(5277, 'updraftplus_last_lock_time_fd', '2015-02-23 16:52:26', 'yes'),
(5278, 'updraftplus_semaphore_fd', '0', 'yes'),
(5280, 'updraft_backup_history', 'a:3:{i:1424710596;a:5:{s:2:"db";s:57:"backup_2015-02-24-0056_Valerie_Sundman_1646d0a0f7fc-db.gz";s:7:"db-size";i:198915;s:9:"checksums";a:1:{s:4:"sha1";a:1:{s:3:"db0";s:40:"ed310744cd59c6bce69980de88a2df9914dac134";}}s:5:"nonce";s:12:"1646d0a0f7fc";s:7:"service";a:1:{i:0;s:4:"none";}}i:1424710584;a:11:{s:7:"plugins";a:1:{i:0;s:63:"backup_2015-02-24-0056_Valerie_Sundman_8857e5b3ba5c-plugins.zip";}s:12:"plugins-size";i:5201294;s:6:"themes";a:1:{i:0;s:62:"backup_2015-02-24-0056_Valerie_Sundman_8857e5b3ba5c-themes.zip";}s:11:"themes-size";i:11478325;s:7:"uploads";a:1:{i:0;s:63:"backup_2015-02-24-0056_Valerie_Sundman_8857e5b3ba5c-uploads.zip";}s:12:"uploads-size";i:37518966;s:6:"others";a:1:{i:0;s:62:"backup_2015-02-24-0056_Valerie_Sundman_8857e5b3ba5c-others.zip";}s:11:"others-size";i:196;s:9:"checksums";a:1:{s:4:"sha1";a:4:{s:8:"plugins0";s:40:"3a3d63593edd1ae13dfecf9ef4b0167984353247";s:7:"themes0";s:40:"f5b63122340e2be423043bc7788b4feee520a9b6";s:8:"uploads0";s:40:"51917829d08d2c8c1d7e2142ddafb6734798fe6f";s:7:"others0";s:40:"cb4c9a0fed7c63f42c2bb92abf478b165bcfe492";}}s:5:"nonce";s:12:"8857e5b3ba5c";s:7:"service";a:1:{i:0;s:4:"none";}}i:1424710346;a:13:{s:7:"plugins";a:1:{i:0;s:63:"backup_2015-02-24-0052_Valerie_Sundman_2b637c1f8370-plugins.zip";}s:12:"plugins-size";i:5201294;s:6:"themes";a:1:{i:0;s:62:"backup_2015-02-24-0052_Valerie_Sundman_2b637c1f8370-themes.zip";}s:11:"themes-size";i:11478325;s:7:"uploads";a:1:{i:0;s:63:"backup_2015-02-24-0052_Valerie_Sundman_2b637c1f8370-uploads.zip";}s:12:"uploads-size";i:37518966;s:6:"others";a:1:{i:0;s:62:"backup_2015-02-24-0052_Valerie_Sundman_2b637c1f8370-others.zip";}s:11:"others-size";i:196;s:2:"db";s:57:"backup_2015-02-24-0052_Valerie_Sundman_2b637c1f8370-db.gz";s:7:"db-size";i:197539;s:9:"checksums";a:1:{s:4:"sha1";a:5:{s:8:"plugins0";s:40:"1fa6d93d05878c727d6b6922b924efc0ed8151d3";s:7:"themes0";s:40:"0ea8618ea1454822f63ef817e7089492079a492f";s:8:"uploads0";s:40:"249a0c9039d87d97d011f93063cbcbb8ad13ac6a";s:7:"others0";s:40:"a20f611db34422e616e2909f0e37c4ef9171a8cb";s:3:"db0";s:40:"88aad392f2900e67e40e60e9af8f695c09d05c20";}}s:5:"nonce";s:12:"2b637c1f8370";s:7:"service";a:1:{i:0;s:4:"none";}}}', 'yes'),
(5281, 'updraft_last_backup', 'a:5:{s:11:"backup_time";i:1424710596;s:12:"backup_array";a:3:{s:2:"db";s:57:"backup_2015-02-24-0056_Valerie_Sundman_1646d0a0f7fc-db.gz";s:7:"db-size";i:198915;s:9:"checksums";a:1:{s:4:"sha1";a:1:{s:3:"db0";s:40:"ed310744cd59c6bce69980de88a2df9914dac134";}}}s:7:"success";i:1;s:6:"errors";a:0:{}s:12:"backup_nonce";s:12:"1646d0a0f7fc";}', 'yes'),
(5282, 'updraft_interval', 'monthly', 'yes'),
(5283, 'updraft_interval_database', 'weekly', 'yes'),
(5284, 'updraft_interval_increments', '', 'yes'),
(5285, 'updraft_retain', '2', 'yes'),
(5286, 'updraft_retain_db', '2', 'yes'),
(5287, 'updraft_encryptionphrase', '', 'yes'),
(5288, 'updraft_service', 'none', 'yes'),
(5289, 'updraft_s3', 'a:3:{s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";}', 'yes'),
(5290, 'updraft_ftp', 'a:4:{s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"path";s:0:"";}', 'yes'),
(5291, 'updraft_dreamobjects', 'a:3:{s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";}', 'yes'),
(5292, 'updraft_s3generic', 'a:4:{s:8:"endpoint";s:0:"";s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";}', 'yes'),
(5293, 'updraft_cloudfiles', 'a:5:{s:7:"authurl";s:35:"https://auth.api.rackspacecloud.com";s:6:"region";s:3:"DFW";s:4:"user";s:0:"";s:6:"apikey";s:0:"";s:4:"path";s:0:"";}', 'yes'),
(5294, 'updraft_bitcasa', 'a:0:{}', 'yes'),
(5295, 'updraft_copycom', 'a:0:{}', 'yes'),
(5296, 'updraft_openstack', 'a:6:{s:7:"authurl";s:0:"";s:6:"tenant";s:0:"";s:6:"region";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:4:"path";s:0:"";}', 'yes'),
(5297, 'updraft_googledrive', 'a:3:{s:8:"clientid";s:0:"";s:6:"secret";s:0:"";s:6:"folder";s:11:"UpdraftPlus";}', 'yes'),
(5298, 'updraft_sftp_settings', '', 'yes'),
(5299, 'updraft_webdav_settings', '', 'yes'),
(5300, 'updraft_ssl_nossl', '0', 'yes'),
(5301, 'updraft_log_syslog', '0', 'yes'),
(5302, 'updraft_ssl_useservercerts', '0', 'yes'),
(5303, 'updraft_ssl_disableverify', '0', 'yes'),
(5304, 'updraft_split_every', '500', 'yes'),
(5305, 'updraft_dir', 'updraft', 'yes'),
(5306, 'updraft_email', '', 'yes'),
(5307, 'updraft_report_warningsonly', 'a:0:{}', 'yes'),
(5308, 'updraft_report_wholebackup', 'a:0:{}', 'yes'),
(5309, 'updraft_autobackup_default', '0', 'yes'),
(5310, 'updraft_delete_local', '1', 'yes'),
(5311, 'updraft_debug_mode', '0', 'yes'),
(5312, 'updraft_extradbs', '', 'yes'),
(5313, 'updraft_backupdb_nonwp', '0', 'yes'),
(5314, 'updraft_include_plugins', '1', 'yes'),
(5315, 'updraft_include_themes', '1', 'yes'),
(5316, 'updraft_include_uploads', '1', 'yes'),
(5317, 'updraft_include_others', '1', 'yes'),
(5318, 'updraft_include_wpcore', '0', 'yes'),
(5319, 'updraft_include_wpcore_exclude', '', 'yes'),
(5320, 'updraft_include_more', '0', 'yes'),
(5321, 'updraft_include_more_path', '', 'yes'),
(5322, 'updraft_include_uploads_exclude', 'backup*,*backups,backwpup*,wp-clone', 'yes'),
(5323, 'updraft_include_others_exclude', 'upgrade,cache,updraft,backup*,*backups', 'yes'),
(5324, 'updraft_starttime_files', '16:59', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5325, 'updraft_starttime_db', '16:59', 'yes'),
(5326, 'updraft_startday_files', '0', 'yes'),
(5327, 'updraft_startday_db', '0', 'yes'),
(5330, 'updraft_jobdata_1424710346', 'a:5:{s:8:"job_type";s:8:"download";s:11:"job_time_ms";d:1424710513.3415849208831787109375;s:25:"dlmessage_1424710346_db_0";s:91:"The file was found locally and matched the recorded size from the backup history (192.9 Kb)";s:7:"service";a:1:{i:0;s:4:"none";}s:22:"dlfile_1424710346_db_0";s:123:"downloaded:197539:/xampp/htdocs/portfolio_site/wp-content/updraft/backup_2015-02-24-0052_Valerie_Sundman_2b637c1f8370-db.gz";}', 'yes'),
(5332, 'updraftplus_unlocked_f', '1', 'yes'),
(5333, 'updraftplus_last_lock_time_f', '2015-02-23 16:56:24', 'yes'),
(5334, 'updraftplus_semaphore_f', '0', 'yes'),
(5336, 'updraftplus_unlocked_d', '1', 'yes'),
(5337, 'updraftplus_last_lock_time_d', '2015-02-23 16:56:37', 'yes'),
(5338, 'updraftplus_semaphore_d', '0', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(12, 7, '_edit_last', '1'),
(13, 7, '_edit_lock', '1424120487:1'),
(14, 7, '_wp_page_template', 'default'),
(15, 9, '_wp_attached_file', '2014/07/2.jpg'),
(16, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1534;s:6:"height";i:1020;s:4:"file";s:13:"2014/07/2.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:14:"2-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column1-1/3";a:4:{s:4:"file";s:14:"2-1140x380.jpg";s:5:"width";i:1140;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column1-2/3";a:4:{s:4:"file";s:14:"2-1140x760.jpg";s:5:"width";i:1140;s:6:"height";i:760;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column1-2/5";a:4:{s:4:"file";s:14:"2-1140x456.jpg";s:5:"width";i:1140;s:6:"height";i:456;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column2-1/2";a:4:{s:4:"file";s:13:"2-570x285.jpg";s:5:"width";i:570;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column2-2/3";a:4:{s:4:"file";s:13:"2-570x380.jpg";s:5:"width";i:570;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column2-2/5";a:4:{s:4:"file";s:13:"2-570x228.jpg";s:5:"width";i:570;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column2-3/5";a:4:{s:4:"file";s:13:"2-570x342.jpg";s:5:"width";i:570;s:6:"height";i:342;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column3-2/3";a:4:{s:4:"file";s:13:"2-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column4-2/3";a:4:{s:4:"file";s:13:"2-285x190.jpg";s:5:"width";i:285;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(17, 10, '_wp_attached_file', '2014/07/cropped-2.jpg'),
(18, 10, '_wp_attachment_context', 'custom-header'),
(19, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:200;s:4:"file";s:21:"2014/07/cropped-2.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cropped-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"cropped-2-300x37.jpg";s:5:"width";i:300;s:6:"height";i:37;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"cropped-2-1024x128.jpg";s:5:"width";i:1024;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column1-1/3";a:4:{s:4:"file";s:22:"cropped-2-1140x200.jpg";s:5:"width";i:1140;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column1-2/3";a:4:{s:4:"file";s:22:"cropped-2-1140x200.jpg";s:5:"width";i:1140;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column1-2/5";a:4:{s:4:"file";s:22:"cropped-2-1140x200.jpg";s:5:"width";i:1140;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column2-1/2";a:4:{s:4:"file";s:21:"cropped-2-570x200.jpg";s:5:"width";i:570;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column2-2/3";a:4:{s:4:"file";s:21:"cropped-2-570x200.jpg";s:5:"width";i:570;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column2-2/5";a:4:{s:4:"file";s:21:"cropped-2-570x200.jpg";s:5:"width";i:570;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column2-3/5";a:4:{s:4:"file";s:21:"cropped-2-570x200.jpg";s:5:"width";i:570;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column3-2/3";a:4:{s:4:"file";s:21:"cropped-2-380x200.jpg";s:5:"width";i:380;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"column4-2/3";a:4:{s:4:"file";s:21:"cropped-2-285x190.jpg";s:5:"width";i:285;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(22, 12, '_edit_last', '1'),
(23, 12, '_edit_lock', '1409365728:1'),
(24, 13, '_wp_attached_file', '2014/08/resume_withcoverletter.pdf'),
(36, 19, '_edit_last', '1'),
(37, 19, '_edit_lock', '1422223846:1'),
(38, 19, '_wp_page_template', 'default'),
(39, 12, '_wp_trash_meta_status', 'publish'),
(40, 12, '_wp_trash_meta_time', '1422221217'),
(41, 21, '_edit_last', '1'),
(42, 21, '_edit_lock', '1423448065:1'),
(44, 23, '_menu_item_type', 'custom'),
(45, 23, '_menu_item_menu_item_parent', '0'),
(46, 23, '_menu_item_object_id', '23'),
(47, 23, '_menu_item_object', 'custom'),
(48, 23, '_menu_item_target', ''),
(49, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 23, '_menu_item_xfn', ''),
(51, 23, '_menu_item_url', 'http://facebook.com/valeriesundman'),
(53, 24, '_menu_item_type', 'custom'),
(54, 24, '_menu_item_menu_item_parent', '0'),
(55, 24, '_menu_item_object_id', '24'),
(56, 24, '_menu_item_object', 'custom'),
(57, 24, '_menu_item_target', ''),
(58, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 24, '_menu_item_xfn', ''),
(60, 24, '_menu_item_url', 'https://twitter.com/valeriesundman'),
(62, 25, '_menu_item_type', 'custom'),
(63, 25, '_menu_item_menu_item_parent', '0'),
(64, 25, '_menu_item_object_id', '25'),
(65, 25, '_menu_item_object', 'custom'),
(66, 25, '_menu_item_target', ''),
(67, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 25, '_menu_item_xfn', ''),
(69, 25, '_menu_item_url', 'https://www.linkedin.com/profile/view?id=278019920&trk=spm_pic'),
(89, 28, '_edit_last', '1'),
(90, 28, '_edit_lock', '1423428704:1'),
(100, 38, '_wp_attached_file', '2015/02/plattresume.docx'),
(110, 41, '_edit_last', '1'),
(111, 41, '_edit_lock', '1424106330:1'),
(121, 28, '_wp_trash_meta_status', 'publish'),
(122, 28, '_wp_trash_meta_time', '1423429132'),
(123, 19, '_wp_trash_meta_status', 'publish'),
(124, 19, '_wp_trash_meta_time', '1423429137'),
(125, 51, '_wp_attached_file', '2015/02/bowser-game.jpg'),
(126, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2015/02/bowser-game.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"bowser-game-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:23:"bowser-game-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(127, 50, '_thumbnail_id', '51'),
(128, 50, '_edit_last', '1'),
(129, 50, '_edit_lock', '1424299633:1'),
(130, 50, '_wp_old_slug', 'bowsertd-game'),
(131, 50, '_oembed_571ce1f4bcaf5f051cf88862b5162688', '{{unknown}}'),
(132, 50, '_oembed_1af42f16c4fcf7fe9b97c8d0dd925b68', '{{unknown}}'),
(133, 61, '_edit_last', '1'),
(134, 61, '_edit_lock', '1423448590:1'),
(135, 61, '_wp_page_template', 'default'),
(145, 69, '_menu_item_type', 'portfolio'),
(146, 69, '_menu_item_menu_item_parent', '0'),
(147, 69, '_menu_item_object_id', '0'),
(148, 69, '_menu_item_object', 'cpt-archive'),
(149, 69, '_menu_item_target', ''),
(150, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 69, '_menu_item_xfn', ''),
(152, 69, '_menu_item_url', ''),
(154, 70, '_menu_item_type', 'resume'),
(155, 70, '_menu_item_menu_item_parent', '0'),
(156, 70, '_menu_item_object_id', '0'),
(157, 70, '_menu_item_object', 'cpt-archive'),
(158, 70, '_menu_item_target', ''),
(159, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(160, 70, '_menu_item_xfn', ''),
(161, 70, '_menu_item_url', ''),
(163, 71, '_menu_item_type', 'post_type'),
(164, 71, '_menu_item_menu_item_parent', '0'),
(165, 71, '_menu_item_object_id', '7'),
(166, 71, '_menu_item_object', 'page'),
(167, 71, '_menu_item_target', ''),
(168, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(169, 71, '_menu_item_xfn', ''),
(170, 71, '_menu_item_url', ''),
(172, 72, '_menu_item_type', 'custom'),
(173, 72, '_menu_item_menu_item_parent', '0'),
(174, 72, '_menu_item_object_id', '72'),
(175, 72, '_menu_item_object', 'custom'),
(176, 72, '_menu_item_target', ''),
(177, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(178, 72, '_menu_item_xfn', ''),
(179, 72, '_menu_item_url', 'http://facebook.com/valeriesundman'),
(181, 73, '_menu_item_type', 'custom'),
(182, 73, '_menu_item_menu_item_parent', '0'),
(183, 73, '_menu_item_object_id', '73'),
(184, 73, '_menu_item_object', 'custom'),
(185, 73, '_menu_item_target', ''),
(186, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(187, 73, '_menu_item_xfn', ''),
(188, 73, '_menu_item_url', 'http://github.com/vsundman'),
(190, 74, '_menu_item_type', 'custom'),
(191, 74, '_menu_item_menu_item_parent', '0'),
(192, 74, '_menu_item_object_id', '74'),
(193, 74, '_menu_item_object', 'custom'),
(194, 74, '_menu_item_target', ''),
(195, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(196, 74, '_menu_item_xfn', ''),
(197, 74, '_menu_item_url', 'https://www.linkedin.com/profile/preview?vpa=pub&locale=en_US'),
(199, 61, '_wp_trash_meta_status', 'publish'),
(200, 61, '_wp_trash_meta_time', '1424120610'),
(201, 75, '_edit_last', '1'),
(202, 75, '_edit_lock', '1424120477:1'),
(203, 75, '_wp_page_template', 'default'),
(204, 75, 'ninja_forms_form', '0'),
(205, 7, 'ninja_forms_form', '1'),
(206, 77, '_menu_item_type', 'post_type'),
(207, 77, '_menu_item_menu_item_parent', '0'),
(208, 77, '_menu_item_object_id', '75'),
(209, 77, '_menu_item_object', 'page'),
(210, 77, '_menu_item_target', ''),
(211, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(212, 77, '_menu_item_xfn', ''),
(213, 77, '_menu_item_url', ''),
(214, 77, '_menu_item_orphaned', '1424120672'),
(215, 78, '_menu_item_type', 'post_type'),
(216, 78, '_menu_item_menu_item_parent', '0'),
(217, 78, '_menu_item_object_id', '75'),
(218, 78, '_menu_item_object', 'page'),
(219, 78, '_menu_item_target', ''),
(220, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(221, 78, '_menu_item_xfn', ''),
(222, 78, '_menu_item_url', ''),
(224, 79, '_edit_last', '1'),
(225, 79, '_edit_lock', '1424299919:1'),
(226, 79, '_oembed_2b6a92c93ae9052a8d7f67ee39a87511', '{{unknown}}'),
(227, 81, '_edit_last', '1'),
(228, 81, '_edit_lock', '1424299453:1'),
(229, 83, '_edit_last', '1'),
(230, 83, '_edit_lock', '1424121207:1'),
(231, 85, '_edit_last', '1'),
(232, 85, '_edit_lock', '1424299515:1'),
(233, 88, '_wp_attached_file', '2015/02/sundman_valerie_magazine.pdf'),
(234, 89, '_wp_attached_file', '2015/02/sundman_valerie_magazine1.pdf'),
(235, 87, '_edit_last', '1'),
(236, 87, '_edit_lock', '1424300907:1'),
(237, 97, '_wp_attached_file', '2015/02/SundmanValerie_DVD.pdf'),
(238, 96, '_edit_last', '1'),
(239, 96, '_edit_lock', '1424300890:1'),
(240, 100, '_wp_attached_file', '2015/02/SundmanValerieBookCover-copy.pdf'),
(241, 99, '_edit_last', '1'),
(242, 99, '_edit_lock', '1424300878:1'),
(243, 102, '_thumbnail_id', '51'),
(244, 102, '_edit_last', '1'),
(245, 102, '_edit_lock', '1424122593:1'),
(246, 102, '_wp_trash_meta_status', 'publish'),
(247, 102, '_wp_trash_meta_time', '1424122808'),
(248, 103, '_edit_last', '1'),
(249, 103, '_edit_lock', '1424122676:1'),
(250, 105, '_wp_attached_file', '2015/02/cutecottage.jpg'),
(251, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:864;s:4:"file";s:23:"2015/02/cutecottage.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"cutecottage-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"cutecottage-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"cutecottage-1024x590.jpg";s:5:"width";i:1024;s:6:"height";i:590;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:23:"cutecottage-220x127.jpg";s:5:"width";i:220;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:24:"cutecottage-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:23:"cutecottage-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(252, 107, '_wp_attached_file', '2015/02/octaneathlete.jpg'),
(253, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:864;s:4:"file";s:25:"2015/02/octaneathlete.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"octaneathlete-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"octaneathlete-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"octaneathlete-1024x590.jpg";s:5:"width";i:1024;s:6:"height";i:590;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:25:"octaneathlete-220x127.jpg";s:5:"width";i:220;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:26:"octaneathlete-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:25:"octaneathlete-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(254, 109, '_wp_attached_file', '2015/02/mvp.jpg'),
(255, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:864;s:4:"file";s:15:"2015/02/mvp.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"mvp-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"mvp-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"mvp-1024x590.jpg";s:5:"width";i:1024;s:6:"height";i:590;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:15:"mvp-220x127.jpg";s:5:"width";i:220;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:16:"mvp-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:15:"mvp-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(256, 111, '_wp_attached_file', '2015/02/bowsertd.jpg'),
(257, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:864;s:4:"file";s:20:"2015/02/bowsertd.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"bowsertd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"bowsertd-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"bowsertd-1024x590.jpg";s:5:"width";i:1024;s:6:"height";i:590;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:20:"bowsertd-220x127.jpg";s:5:"width";i:220;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:21:"bowsertd-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:20:"bowsertd-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(258, 113, '_wp_attached_file', '2015/02/sundman_valerie_magazine.jpg'),
(259, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5100;s:6:"height";i:3300;s:4:"file";s:36:"2015/02/sundman_valerie_magazine.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"sundman_valerie_magazine-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"sundman_valerie_magazine-300x194.jpg";s:5:"width";i:300;s:6:"height";i:194;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"sundman_valerie_magazine-1024x663.jpg";s:5:"width";i:1024;s:6:"height";i:663;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:36:"sundman_valerie_magazine-220x142.jpg";s:5:"width";i:220;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:37:"sundman_valerie_magazine-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:36:"sundman_valerie_magazine-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(260, 114, '_wp_attached_file', '2015/02/SundmanValerie_DVD-1.jpg'),
(261, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3210;s:6:"height";i:2225;s:4:"file";s:32:"2015/02/SundmanValerie_DVD-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"SundmanValerie_DVD-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"SundmanValerie_DVD-1-300x208.jpg";s:5:"width";i:300;s:6:"height";i:208;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:32:"SundmanValerie_DVD-1-220x152.jpg";s:5:"width";i:220;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:33:"SundmanValerie_DVD-1-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:32:"SundmanValerie_DVD-1-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(262, 116, '_wp_attached_file', '2015/02/SundmanValerieBookCover-copy-2.jpg'),
(263, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4464;s:6:"height";i:3445;s:4:"file";s:42:"2015/02/SundmanValerieBookCover-copy-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"SundmanValerieBookCover-copy-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"SundmanValerieBookCover-copy-2-300x232.jpg";s:5:"width";i:300;s:6:"height";i:232;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:43:"SundmanValerieBookCover-copy-2-1024x790.jpg";s:5:"width";i:1024;s:6:"height";i:790;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:42:"SundmanValerieBookCover-copy-2-220x170.jpg";s:5:"width";i:220;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:43:"SundmanValerieBookCover-copy-2-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:42:"SundmanValerieBookCover-copy-2-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:28:"SundmanValerieBookCover copy";s:11:"orientation";i:1;}}'),
(264, 99, '_thumbnail_id', '116'),
(265, 96, '_thumbnail_id', '114'),
(266, 87, '_thumbnail_id', '113'),
(267, 123, '_edit_last', '1'),
(268, 123, '_edit_lock', '1424300866:1'),
(269, 124, '_wp_attached_file', '2015/02/ITunesCoverandBack-1.jpg'),
(270, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2700;s:6:"height";i:2100;s:4:"file";s:32:"2015/02/ITunesCoverandBack-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"ITunesCoverandBack-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"ITunesCoverandBack-1-300x233.jpg";s:5:"width";i:300;s:6:"height";i:233;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"ITunesCoverandBack-1-1024x796.jpg";s:5:"width";i:1024;s:6:"height";i:796;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:32:"ITunesCoverandBack-1-220x171.jpg";s:5:"width";i:220;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:33:"ITunesCoverandBack-1-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:32:"ITunesCoverandBack-1-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(271, 125, '_wp_attached_file', '2015/02/ITunesCoverandBack-2.jpg'),
(272, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2700;s:6:"height";i:2100;s:4:"file";s:32:"2015/02/ITunesCoverandBack-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"ITunesCoverandBack-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"ITunesCoverandBack-2-300x233.jpg";s:5:"width";i:300;s:6:"height";i:233;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"ITunesCoverandBack-2-1024x796.jpg";s:5:"width";i:1024;s:6:"height";i:796;s:9:"mime-type";s:10:"image/jpeg";}s:9:"logo-size";a:4:{s:4:"file";s:32:"ITunesCoverandBack-2-220x171.jpg";s:5:"width";i:220;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:10:"big-banner";a:4:{s:4:"file";s:33:"ITunesCoverandBack-2-1300x300.jpg";s:5:"width";i:1300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-size";a:4:{s:4:"file";s:32:"ITunesCoverandBack-2-960x250.jpg";s:5:"width";i:960;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(280, 123, '_thumbnail_id', '124') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
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
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2014-07-23 16:39:14', '2014-07-23 16:39:14', '[contact-form-7 id="6" title="Contact form 1"]\r\n\r\n<!--cforms name="Your default form"-->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-02-17 05:03:49', '2015-02-16 21:03:49', '', 0, 'http://localhost/portfolio_site/?page_id=7', 0, 'page', '', 0),
(8, 1, '2014-07-23 16:38:50', '2014-07-23 16:38:50', '<!--cforms name="Your default form"-->', 'Contact', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2014-07-23 16:38:50', '2014-07-23 16:38:50', '', 7, 'http://localhost/portfolio_site/?p=8', 0, 'revision', '', 0),
(9, 1, '2014-07-23 16:41:22', '2014-07-23 16:41:22', '', '2', '', 'inherit', 'open', 'open', '', '2', '', '', '2014-07-23 16:41:22', '2014-07-23 16:41:22', '', 0, 'http://localhost/portfolio_site/wp-content/uploads/2014/07/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2014-07-23 16:41:39', '2014-07-23 16:41:39', 'http://localhost/portfolio_site/wp-content/uploads/2014/07/cropped-2.jpg', 'cropped-2.jpg', '', 'inherit', 'open', 'open', '', 'cropped-2-jpg', '', '', '2014-07-23 16:41:39', '2014-07-23 16:41:39', '', 0, 'http://localhost/portfolio_site/wp-content/uploads/2014/07/cropped-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2014-08-30 02:15:55', '2014-08-30 02:15:55', '<p style="text-align: left;">Ok so I am new at this whole blog thing.</p>\r\nHere is <a href="http://localhost/portfolio_site/wp-content/uploads/2014/08/resume_withcoverletter.pdf">My Resume</a>\r\n\r\n&nbsp;\r\n\r\nI am just testing this out because I don\'t really know how to use wordpress very well at the moment.', 'My First Blog Post', '', 'trash', 'closed', 'closed', '', 'my-first-blog-post', '', '', '2015-01-26 05:26:57', '2015-01-25 21:26:57', '', 0, 'http://localhost/portfolio_site/?p=12', 0, 'post', '', 0),
(13, 1, '2014-08-30 02:14:09', '2014-08-30 02:14:09', 'This is strictly for graphic and web design.', 'My Resume', 'Here is my resume!', 'inherit', 'open', 'open', '', 'resume_withcoverletter', '', '', '2014-08-30 02:14:09', '2014-08-30 02:14:09', '', 12, 'http://localhost/portfolio_site/wp-content/uploads/2014/08/resume_withcoverletter.pdf', 0, 'attachment', 'application/pdf', 0),
(14, 1, '2014-08-30 02:15:26', '2014-08-30 02:15:26', '<p style="text-align: left;">Ok so I am new at this whole blog thing.</p>\r\nHere is <a href="http://localhost/portfolio_site/wp-content/uploads/2014/08/resume_withcoverletter.pdf">My Resume</a>\r\n\r\n&nbsp;\r\n\r\nI am just testing this out because I don\'t really know how to use wordpress very well at the moment.', 'My First Blog Post', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-08-30 02:15:26', '2014-08-30 02:15:26', '', 12, 'http://localhost/portfolio_site/?p=14', 0, 'revision', '', 0),
(19, 1, '2015-01-26 05:25:22', '2015-01-25 21:25:22', 'This is where my portfolio pieces will go.', 'Portfolio', '', 'trash', 'closed', 'closed', '', 'portfolio', '', '', '2015-02-09 04:58:57', '2015-02-08 20:58:57', '', 0, 'http://localhost/portfolio_site/?page_id=19', 0, 'page', '', 0),
(20, 1, '2015-01-26 05:25:22', '2015-01-25 21:25:22', 'This is where my portfolio pieces will go.', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2015-01-26 05:25:22', '2015-01-25 21:25:22', '', 19, 'http://localhost/portfolio_site/?p=20', 0, 'revision', '', 0),
(21, 1, '2015-01-26 05:34:59', '2015-01-25 21:34:59', 'This is the first post. Sampleeeee.', 'First Post', '', 'publish', 'closed', 'closed', '', 'first-post', '', '', '2015-01-26 05:34:59', '2015-01-25 21:34:59', '', 0, 'http://localhost/portfolio_site/?p=21', 0, 'post', '', 0),
(22, 1, '2015-01-26 05:34:59', '2015-01-25 21:34:59', 'This is the first post. Sampleeeee.', 'First Post', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2015-01-26 05:34:59', '2015-01-25 21:34:59', '', 21, 'http://localhost/portfolio_site/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2015-01-26 05:56:52', '2015-01-25 21:56:52', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2015-01-26 05:59:44', '2015-01-25 21:59:44', '', 0, 'http://localhost/portfolio_site/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2015-01-26 05:56:52', '2015-01-25 21:56:52', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2015-01-26 05:59:44', '2015-01-25 21:59:44', '', 0, 'http://localhost/portfolio_site/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2015-01-26 05:59:44', '2015-01-25 21:59:44', '', 'LinkedIn', '', 'publish', 'closed', 'closed', '', 'linkedin', '', '', '2015-01-26 05:59:44', '2015-01-25 21:59:44', '', 0, 'http://localhost/portfolio_site/?p=25', 3, 'nav_menu_item', '', 0),
(28, 1, '2015-01-26 06:09:41', '2015-01-25 22:09:41', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx"]', 'Resume', '', 'trash', 'closed', 'closed', '', 'about', '', '', '2015-02-09 04:58:52', '2015-02-08 20:58:52', '', 0, 'http://localhost/portfolio_site/?page_id=28', 0, 'page', '', 0),
(29, 1, '2015-01-26 06:09:41', '2015-01-25 22:09:41', 'about me', 'About', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-01-26 06:09:41', '2015-01-25 22:09:41', '', 28, 'http://localhost/portfolio_site/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2015-01-26 06:10:21', '2015-01-25 22:10:21', 'Graphic Design / Web Development\r\n\r\n858-344-8838                          <a href="mailto:valeriec@san.rr.com">valeriec@san.rr.com</a>        https://www.behance.net/valeriesundman\r\n\r\n<strong>OBJECTIVE</strong>: Seeking an entry level position where I can apply my creative design and web development knowledge to further educate myself and gain experience in the field of graphic/web design and development.\r\n\r\n<strong>Knowledge In</strong>:    Photoshop                     Illustrator                        Indesign                                                                      Html/Css                      Javascrip &amp; Jquery           Php &amp; mySQL                                                              CMS (wordpress)       Microsoft Word   Powerpoint                                                                  Outlook                         Excel\r\n\r\n<strong>Websites I Have Created</strong>:\r\n\r\nhttp://localhost/portfolio_site/mvp/                                                      http://localhost/portfolio_site/camera\r\n\r\nhttp://localhost/portfolio_site/partyanimals/ (responsive)                           http://octaneathlete.com/ (landing page)\r\n\r\nhttp://localhost/portfolio_site/project (php and mySQL driven)\r\n\r\n&nbsp;\r\n\r\n<strong>EDUCATION </strong>\r\n\r\n<em>Platt College, San Diego, Ca </em>\r\n\r\nAssociate of Applied Science Degree: Graphic Design\r\n\r\nBachelor of Science Degree in Web Design and Development\r\n\r\nEstimated Graduation Date:  03/2015\r\n\r\n&nbsp;\r\n\r\n<strong>U.S. MILITARY SERVICE</strong>\r\n\r\nActive Duty: 08/2006 To 08/2011\r\n\r\nU.S. Marine Corps - Honorable Discharge', 'Resume', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-01-26 06:10:21', '2015-01-25 22:10:21', '', 28, 'http://localhost/portfolio_site/28-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-01-26 06:11:59', '2015-01-25 22:11:59', 'Graphic Design / Web Development\r\n\r\n858-344-8838                          <a href="mailto:valeriec@san.rr.com">valeriec@san.rr.com</a>        https://www.behance.net/valeriesundman\r\n\r\n<strong>OBJECTIVE</strong>: Seeking an entry level position where I can apply my creative design and web development knowledge to further educate myself and gain experience in the field of graphic/web design and development.\r\n\r\n<strong>Knowledge In</strong>:\r\n<ul>\r\n	<li>Photoshop</li>\r\n	<li>Illustrator</li>\r\n	<li>Indesign</li>\r\n	<li>Html/Css</li>\r\n	<li>Javascrip &amp; Jquery</li>\r\n	<li>Php &amp; mySQL</li>\r\n	<li>CMS (wordpress)</li>\r\n	<li>Microsoft Word   Powerpoint</li>\r\n	<li>Outlook</li>\r\n	<li>Excel</li>\r\n</ul>\r\n<strong>Websites I Have Created</strong>:\r\n<ul>\r\n	<li>http://localhost/portfolio_site/mvp/</li>\r\n	<li>http://localhost/portfolio_site/camera</li>\r\n	<li>http://localhost/portfolio_site/partyanimals/ (responsive)</li>\r\n	<li>http://octaneathlete.com/ (landing page)</li>\r\n	<li>http://localhost/portfolio_site/project (php and mySQL driven)</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<strong>EDUCATION </strong>\r\n\r\n<em>Platt College, San Diego, Ca </em>\r\n\r\nAssociate of Applied Science Degree: Graphic Design\r\n\r\nBachelor of Science Degree in Web Design and Development\r\n\r\nEstimated Graduation Date:  03/2015\r\n\r\n&nbsp;\r\n\r\n<strong>U.S. MILITARY SERVICE</strong>\r\n\r\nActive Duty: 08/2006 To 08/2011\r\n\r\nU.S. Marine Corps - Honorable Discharge', 'Resume', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-01-26 06:11:59', '2015-01-25 22:11:59', '', 28, 'http://localhost/portfolio_site/28-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-01-26 06:14:51', '2015-01-25 22:14:51', 'contact form will go here\r\n\r\n<!--cforms name="Your default form"-->', 'Contact', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-01-26 06:14:51', '2015-01-25 22:14:51', '', 7, 'http://localhost/portfolio_site/7-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-01-26 06:15:27', '2015-01-25 22:15:27', '[contact-form-7 id="6" title="Contact form 1"]\r\n\r\n<!--cforms name="Your default form"-->', 'Contact', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-01-26 06:15:27', '2015-01-25 22:15:27', '', 7, 'http://localhost/portfolio_site/7-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2015-02-08 08:08:54', '2015-02-08 00:08:54', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2014/08/resume_withcoverletter.pdf"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-02-08 08:08:54', '2015-02-08 00:08:54', '', 28, 'http://localhost/portfolio_site/28-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-02-08 08:11:26', '2015-02-08 00:11:26', '', 'plattresume', '', 'inherit', 'closed', 'closed', '', 'plattresume', '', '', '2015-02-08 08:11:26', '2015-02-08 00:11:26', '', 0, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(39, 1, '2015-02-08 08:12:08', '2015-02-08 00:12:08', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-02-08 08:12:08', '2015-02-08 00:12:08', '', 28, 'http://localhost/portfolio_site/28-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2015-02-09 04:57:02', '2015-02-08 20:57:02', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx" height="840px" width="650px"]', 'Resume', '', 'publish', 'closed', 'closed', '', 'resume', '', '', '2015-02-09 04:57:02', '2015-02-08 20:57:02', '', 0, 'http://localhost/portfolio_site/?post_type=resume&#038;p=41', 0, 'resume', '', 0),
(42, 1, '2015-02-09 04:54:54', '2015-02-08 20:54:54', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2015-02-09 04:54:54', '2015-02-08 20:54:54', '', 41, 'http://localhost/portfolio_site/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-02-09 04:55:45', '2015-02-08 20:55:45', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx" height="800px"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2015-02-09 04:55:45', '2015-02-08 20:55:45', '', 41, 'http://localhost/portfolio_site/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-02-09 04:56:12', '2015-02-08 20:56:12', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx" height="900px" width="500px"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2015-02-09 04:56:12', '2015-02-08 20:56:12', '', 41, 'http://localhost/portfolio_site/41-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-02-09 04:56:26', '2015-02-08 20:56:26', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx" height="850px" width="600px"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2015-02-09 04:56:26', '2015-02-08 20:56:26', '', 41, 'http://localhost/portfolio_site/41-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2015-02-09 04:56:39', '2015-02-08 20:56:39', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx" height="800px" width="650px"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2015-02-09 04:56:39', '2015-02-08 20:56:39', '', 41, 'http://localhost/portfolio_site/41-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-02-09 04:56:49', '2015-02-08 20:56:49', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx" height="820px" width="650px"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2015-02-09 04:56:49', '2015-02-08 20:56:49', '', 41, 'http://localhost/portfolio_site/41-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-02-09 04:56:56', '2015-02-08 20:56:56', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/plattresume.docx" height="840px" width="650px"]', 'Resume', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2015-02-09 04:56:56', '2015-02-08 20:56:56', '', 41, 'http://localhost/portfolio_site/41-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-02-09 10:08:23', '2015-02-09 02:08:23', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/bowsertd.jpg"><img class="alignnone size-medium wp-image-111" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/bowsertd-300x173.jpg" alt="bowsertd" width="300" height="173" /></a><a title="BowserTD" href="http://localhost/portfolio_site/bowsertd" target="_blank">http://localhost/portfolio_site/bowsertd</a>', 'Bowser Tower Defense', 'Javascript and JQuery based web game', 'publish', 'closed', 'closed', '', 'bowsertd', '', '', '2015-02-19 06:49:35', '2015-02-18 22:49:35', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=50', 0, 'portfolio', '', 0),
(51, 1, '2015-02-09 08:24:32', '2015-02-09 00:24:32', '', 'bowser-game', '', 'inherit', 'closed', 'closed', '', 'bowser-game', '', '', '2015-02-09 08:24:32', '2015-02-09 00:24:32', '', 50, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/bowser-game.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2015-02-09 08:25:04', '2015-02-09 00:25:04', '', 'bowsertd game', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-09 08:25:04', '2015-02-09 00:25:04', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-02-09 10:08:57', '2015-02-09 02:08:57', '', 'bowsertd fdgfgdfg', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-09 10:08:57', '2015-02-09 02:08:57', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-02-09 10:11:20', '2015-02-09 02:11:20', 'http://localhost/portfolio_site/bowsertd\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'bowsertd fdgfgdfg', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-09 10:11:20', '2015-02-09 02:11:20', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2015-02-09 10:11:37', '2015-02-09 02:11:37', 'http://localhost/portfolio_site/bowsertd\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Bowser Tower Defense', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-09 10:11:37', '2015-02-09 02:11:37', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-02-09 10:12:38', '2015-02-09 02:12:38', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Bowser Tower Defense', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-09 10:12:38', '2015-02-09 02:12:38', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-02-09 12:07:17', '2015-02-09 04:07:17', '<a title="BowserTD" href="http://localhost/portfolio_site/bowsertd" target="_blank">http://localhost/portfolio_site/bowsertd</a>\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;', 'Bowser Tower Defense', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2015-02-09 12:07:17', '2015-02-09 04:07:17', '', 50, 'http://localhost/portfolio_site/50-autosave-v1/', 0, 'revision', '', 0),
(58, 1, '2015-02-09 10:13:43', '2015-02-09 02:13:43', '<a href="http://localhost/portfolio_site/bowsertd"> </a>', 'Bowser Tower Defense', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-09 10:13:43', '2015-02-09 02:13:43', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-02-09 10:14:27', '2015-02-09 02:14:27', '<a title="BowserTD" href="http://localhost/portfolio_site/bowsertd" target="_blank">http://localhost/portfolio_site/bowsertd</a>', 'Bowser Tower Defense', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-09 10:14:27', '2015-02-09 02:14:27', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-02-09 10:23:57', '2015-02-09 02:23:57', 'skhfdf kjhds kjhdsk jhsdl fhdhf lkdsh ufsd jhsdiuf', 'fair 1', '', 'trash', 'closed', 'closed', '', 'fair1', '', '', '2015-02-17 05:03:30', '2015-02-16 21:03:30', '', 0, 'http://localhost/portfolio_site/?page_id=61', 0, 'page', '', 0),
(62, 1, '2015-02-09 10:23:57', '2015-02-09 02:23:57', 'skhfdf kjhds kjhdsk jhsdl fhdhf lkdsh ufsd jhsdiuf', 'fair', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-02-09 10:23:57', '2015-02-09 02:23:57', '', 61, 'http://localhost/portfolio_site/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-02-09 10:25:14', '2015-02-09 02:25:14', 'skhfdf kjhds kjhdsk jhsdl fhdhf lkdsh ufsd jhsdiuf', 'fair 1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-02-09 10:25:14', '2015-02-09 02:25:14', '', 61, 'http://localhost/portfolio_site/61-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-02-17 01:04:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-02-17 01:04:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_site/?p=65', 0, 'post', '', 0),
(66, 1, '2015-02-17 04:49:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-02-17 04:49:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_site/?p=66', 0, 'post', '', 0),
(67, 1, '2015-02-17 04:52:23', '0000-00-00 00:00:00', 'This is a preview of how this form will appear on your website', 'ninja_forms_preview_page', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-02-17 04:52:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_site/?page_id=67', 0, 'page', '', 0),
(68, 1, '2015-02-17 04:54:07', '2015-02-16 20:54:07', '<a title="BowserTD" href="http://localhost/portfolio_site/bowsertd" target="_blank">http://localhost/portfolio_site/bowsertd</a>', 'Bowser Tower Defense', 'Javascript and JQuery based web game', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-17 04:54:07', '2015-02-16 20:54:07', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2015-02-17 04:54:57', '2015-02-16 20:54:57', '', 'Portfolio Archive', '', 'publish', 'closed', 'closed', '', 'portfolio-archive', '', '', '2015-02-24 00:59:03', '2015-02-23 16:59:03', '', 0, 'http://localhost/portfolio_site/?p=69', 2, 'nav_menu_item', '', 0),
(70, 1, '2015-02-17 04:54:57', '2015-02-16 20:54:57', '', 'Resume Archive', '', 'publish', 'closed', 'closed', '', 'resume-archive', '', '', '2015-02-24 00:59:03', '2015-02-23 16:59:03', '', 0, 'http://localhost/portfolio_site/?p=70', 3, 'nav_menu_item', '', 0),
(71, 1, '2015-02-17 04:54:57', '2015-02-16 20:54:57', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2015-02-24 00:59:03', '2015-02-23 16:59:03', '', 0, 'http://localhost/portfolio_site/?p=71', 4, 'nav_menu_item', '', 0),
(72, 1, '2015-02-17 04:58:07', '2015-02-16 20:58:07', '', 'facebook', '', 'publish', 'closed', 'closed', '', 'facebook-2', '', '', '2015-02-17 05:04:39', '2015-02-16 21:04:39', '', 0, 'http://localhost/portfolio_site/?p=72', 1, 'nav_menu_item', '', 0),
(73, 1, '2015-02-17 04:58:07', '2015-02-16 20:58:07', '', 'github', '', 'publish', 'closed', 'closed', '', 'github', '', '', '2015-02-17 05:04:39', '2015-02-16 21:04:39', '', 0, 'http://localhost/portfolio_site/?p=73', 2, 'nav_menu_item', '', 0),
(74, 1, '2015-02-17 04:58:07', '2015-02-16 20:58:07', '', 'linkedin', '', 'publish', 'closed', 'closed', '', 'linkedin-2', '', '', '2015-02-17 05:04:39', '2015-02-16 21:04:39', '', 0, 'http://localhost/portfolio_site/?p=74', 3, 'nav_menu_item', '', 0),
(75, 1, '2015-02-17 05:03:38', '2015-02-16 21:03:38', '', 'front-page', '', 'publish', 'closed', 'closed', '', 'front-page', '', '', '2015-02-17 05:03:38', '2015-02-16 21:03:38', '', 0, 'http://localhost/portfolio_site/?page_id=75', 0, 'page', '', 0),
(76, 1, '2015-02-17 05:03:38', '2015-02-16 21:03:38', '', 'front-page', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2015-02-17 05:03:38', '2015-02-16 21:03:38', '', 75, 'http://localhost/portfolio_site/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2015-02-17 05:04:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-02-17 05:04:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio_site/?p=77', 1, 'nav_menu_item', '', 0),
(78, 1, '2015-02-17 05:04:55', '2015-02-16 21:04:55', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-02-24 00:59:03', '2015-02-23 16:59:03', '', 0, 'http://localhost/portfolio_site/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2015-02-12 05:14:05', '2015-02-11 21:14:05', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/mvp.jpg"><img class="alignnone size-medium wp-image-109" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/mvp-300x173.jpg" alt="mvp" width="300" height="173" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a title="MVP" href="http://localhost/portfolio_site/mvp/" target="_blank">Launch Website</a>', 'MVP Sports Rehab Center', 'Website for a fake company', 'publish', 'closed', 'closed', '', 'mvp-sports-rehab-center', '', '', '2015-02-19 06:54:22', '2015-02-18 22:54:22', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=79', 0, 'portfolio', '', 0),
(80, 1, '2015-02-17 05:14:05', '2015-02-16 21:14:05', 'MVP sports rehab center website\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a title="MVP" href="http://localhost/portfolio_site/mvp/" target="_blank">Launch Website</a>', 'MVP Sports Rehab Center', 'Website for a fake company', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2015-02-17 05:14:05', '2015-02-16 21:14:05', '', 79, 'http://localhost/portfolio_site/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2015-02-17 05:14:38', '2015-02-16 21:14:38', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/cutecottage.jpg"><img class="alignnone size-medium wp-image-105" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/cutecottage-300x173.jpg" alt="cutecottage" width="300" height="173" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/portfolio_site/project/">Launch Website</a>', 'Cute Cottage', 'PHP and MySQL driven website', 'publish', 'closed', 'closed', '', 'cute-cottage', '', '', '2015-02-19 06:46:35', '2015-02-18 22:46:35', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=81', 0, 'portfolio', '', 0),
(82, 1, '2015-02-17 05:14:38', '2015-02-16 21:14:38', '<a href="http://localhost/portfolio_site/project/">Launch Website</a>', 'Cute Cottage', 'PHP and MySQL driven website', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2015-02-17 05:14:38', '2015-02-16 21:14:38', '', 81, 'http://localhost/portfolio_site/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2015-02-17 05:15:43', '2015-02-16 21:15:43', '<a href="http://localhost/portfolio_site/camera/">Launch Website</a>', 'Camera Shop', 'Camera Shop re done website', 'publish', 'closed', 'closed', '', 'camera-shop', '', '', '2015-02-17 05:15:43', '2015-02-16 21:15:43', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=83', 0, 'portfolio', '', 0),
(84, 1, '2015-02-17 05:15:43', '2015-02-16 21:15:43', '<a href="http://localhost/portfolio_site/camera/">Launch Website</a>', 'Camera Shop', 'Camera Shop re done website', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2015-02-17 05:15:43', '2015-02-16 21:15:43', '', 83, 'http://localhost/portfolio_site/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-02-17 05:18:01', '2015-02-16 21:18:01', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/octaneathlete.jpg"><img class="alignnone size-medium wp-image-107" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/octaneathlete-300x173.jpg" alt="octaneathlete" width="300" height="173" /></a>\r\n\r\n<a href="http://http://octaneathlete.com/" target="_blank">Launch Website</a>', 'Octane Athlete Website', 'Landing Page made for company.', 'publish', 'closed', 'closed', '', 'octane-athlete-website', '', '', '2015-02-19 06:47:37', '2015-02-18 22:47:37', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=85', 0, 'portfolio', '', 0),
(86, 1, '2015-02-17 05:18:01', '2015-02-16 21:18:01', '&nbsp;\r\n\r\n<a href="http://http://octaneathlete.com/" target="_blank">Launch Website</a>', 'Octane Athlete Website', 'Landing Page made for company.', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2015-02-17 05:18:01', '2015-02-16 21:18:01', '', 85, 'http://localhost/portfolio_site/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-02-17 05:23:48', '2015-02-16 21:23:48', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.jpg"><img class="alignnone size-medium wp-image-113" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine-300x194.jpg" alt="sundman_valerie_magazine" width="300" height="194" /></a>', 'Popular Science Magazine', 'Magazine Concept for Popular Science', 'publish', 'closed', 'closed', '', '87', '', '', '2015-02-19 07:10:49', '2015-02-18 23:10:49', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=87', 0, 'portfolio', '', 0),
(88, 1, '2015-02-17 05:21:06', '2015-02-16 21:21:06', '', 'sundman_valerie_magazine', '', 'inherit', 'closed', 'closed', '', 'sundman_valerie_magazine', '', '', '2015-02-17 05:21:06', '2015-02-16 21:21:06', '', 87, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf', 0, 'attachment', 'application/pdf', 0),
(89, 1, '2015-02-17 05:21:30', '2015-02-16 21:21:30', '', 'sundman_valerie_magazine', '', 'inherit', 'closed', 'closed', '', 'sundman_valerie_magazine-2', '', '', '2015-02-17 05:21:30', '2015-02-16 21:21:30', '', 87, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine1.pdf', 0, 'attachment', 'application/pdf', 0),
(90, 1, '2015-02-17 05:21:58', '2015-02-16 21:21:58', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf"]', '', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-17 05:21:58', '2015-02-16 21:21:58', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2015-02-17 05:22:29', '2015-02-16 21:22:29', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf" height="900px"]', '', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-17 05:22:29', '2015-02-16 21:22:29', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2015-02-17 05:22:37', '2015-02-16 21:22:37', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf" height="700px"]', '', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-17 05:22:37', '2015-02-16 21:22:37', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-02-17 05:22:45', '2015-02-16 21:22:45', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf" height="650px"]', '', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-17 05:22:45', '2015-02-16 21:22:45', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-02-17 05:23:43', '2015-02-16 21:23:43', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf" height="600px"]', '', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-17 05:23:43', '2015-02-16 21:23:43', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2015-02-17 05:23:57', '2015-02-16 21:23:57', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf" height="600px"]', 'Popular Science Magazine', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-17 05:23:57', '2015-02-16 21:23:57', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-02-17 05:25:46', '2015-02-16 21:25:46', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD-1.jpg"><img class="alignnone size-medium wp-image-114" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD-1-300x208.jpg" alt="SundmanValerie_DVD-1" width="300" height="208" /></a>\r\n\r\n&nbsp;\r\n\r\nI used photoshop to design the package.', '300 DVD Package', 'Re-design of 300 movie DVD package', 'publish', 'closed', 'closed', '', '300-dvd-package', '', '', '2015-02-19 07:10:33', '2015-02-18 23:10:33', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=96', 0, 'portfolio', '', 0),
(97, 1, '2015-02-17 05:25:08', '2015-02-16 21:25:08', '', 'SundmanValerie_DVD', '', 'inherit', 'closed', 'closed', '', 'sundmanvalerie_dvd', '', '', '2015-02-17 05:25:08', '2015-02-16 21:25:08', '', 96, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD.pdf', 0, 'attachment', 'application/pdf', 0),
(98, 1, '2015-02-17 05:25:46', '2015-02-16 21:25:46', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD.pdf"]\r\n\r\n&nbsp;\r\n\r\nI used photoshop to design the package.', '300 DVD Package', 'Re-design of 300 movie DVD package', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2015-02-17 05:25:46', '2015-02-16 21:25:46', '', 96, 'http://localhost/portfolio_site/96-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-02-17 05:28:44', '2015-02-16 21:28:44', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy-2.jpg"><img class="alignnone size-medium wp-image-116" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy-2-300x232.jpg" alt="SundmanValerieBookCover copy" width="300" height="232" /></a>', 'Book Cover ReDesign', 'Re-designed a children\'s book', 'publish', 'closed', 'closed', '', 'book-cover-redesign', '', '', '2015-02-19 07:10:21', '2015-02-18 23:10:21', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=99', 0, 'portfolio', '', 0),
(100, 1, '2015-02-17 05:26:45', '2015-02-16 21:26:45', '', 'SundmanValerieBookCover copy', '', 'inherit', 'closed', 'closed', '', 'sundmanvaleriebookcover-copy', '', '', '2015-02-17 05:26:45', '2015-02-16 21:26:45', '', 99, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy.pdf', 0, 'attachment', 'application/pdf', 0),
(101, 1, '2015-02-17 05:28:44', '2015-02-16 21:28:44', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy.pdf"]', 'Book Cover ReDesign', 'Re-designed a children\'s book', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2015-02-17 05:28:44', '2015-02-16 21:28:44', '', 99, 'http://localhost/portfolio_site/99-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-02-17 05:38:55', '2015-02-16 21:38:55', '', 'slide bowser', '', 'trash', 'closed', 'closed', '', 'slide-bowser', '', '', '2015-02-17 05:40:08', '2015-02-16 21:40:08', '', 0, 'http://localhost/portfolio_site/?post_type=slide&#038;p=102', 0, 'slide', '', 0),
(103, 1, '2015-02-17 05:40:18', '2015-02-16 21:40:18', '', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2015-02-17 05:40:18', '2015-02-16 21:40:18', '', 0, 'http://localhost/portfolio_site/?post_type=slide&#038;p=103', 0, 'slide', '', 0),
(104, 1, '2015-02-19 06:46:24', '2015-02-18 22:46:24', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/cutecottage.jpg"><img class="alignnone size-medium wp-image-105" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/cutecottage-300x173.jpg" alt="cutecottage" width="300" height="173" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/portfolio_site/project/">Launch Website</a>', 'Cute Cottage', 'PHP and MySQL driven website', 'inherit', 'closed', 'closed', '', '81-autosave-v1', '', '', '2015-02-19 06:46:24', '2015-02-18 22:46:24', '', 81, 'http://localhost/portfolio_site/81-autosave-v1/', 0, 'revision', '', 0),
(105, 1, '2015-02-19 06:46:15', '2015-02-18 22:46:15', '', 'cutecottage', '', 'inherit', 'closed', 'closed', '', 'cutecottage', '', '', '2015-02-19 06:46:15', '2015-02-18 22:46:15', '', 81, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/cutecottage.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2015-02-19 06:46:35', '2015-02-18 22:46:35', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/cutecottage.jpg"><img class="alignnone size-medium wp-image-105" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/cutecottage-300x173.jpg" alt="cutecottage" width="300" height="173" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/portfolio_site/project/">Launch Website</a>', 'Cute Cottage', 'PHP and MySQL driven website', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2015-02-19 06:46:35', '2015-02-18 22:46:35', '', 81, 'http://localhost/portfolio_site/81-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2015-02-19 06:47:34', '2015-02-18 22:47:34', '', 'octaneathlete', '', 'inherit', 'closed', 'closed', '', 'octaneathlete', '', '', '2015-02-19 06:47:34', '2015-02-18 22:47:34', '', 85, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/octaneathlete.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2015-02-19 06:47:37', '2015-02-18 22:47:37', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/octaneathlete.jpg"><img class="alignnone size-medium wp-image-107" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/octaneathlete-300x173.jpg" alt="octaneathlete" width="300" height="173" /></a>\r\n\r\n<a href="http://http://octaneathlete.com/" target="_blank">Launch Website</a>', 'Octane Athlete Website', 'Landing Page made for company.', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2015-02-19 06:47:37', '2015-02-18 22:47:37', '', 85, 'http://localhost/portfolio_site/85-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2015-02-19 06:48:29', '2015-02-18 22:48:29', '', 'mvp', '', 'inherit', 'closed', 'closed', '', 'mvp', '', '', '2015-02-19 06:48:29', '2015-02-18 22:48:29', '', 79, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/mvp.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2015-02-19 06:48:32', '2015-02-18 22:48:32', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/mvp.jpg"><img class="alignnone size-medium wp-image-109" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/mvp-300x173.jpg" alt="mvp" width="300" height="173" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a title="MVP" href="http://localhost/portfolio_site/mvp/" target="_blank">Launch Website</a>', 'MVP Sports Rehab Center', 'Website for a fake company', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2015-02-19 06:48:32', '2015-02-18 22:48:32', '', 79, 'http://localhost/portfolio_site/79-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2015-02-19 06:49:30', '2015-02-18 22:49:30', '', 'bowsertd', '', 'inherit', 'closed', 'closed', '', 'bowsertd-2', '', '', '2015-02-19 06:49:30', '2015-02-18 22:49:30', '', 50, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/bowsertd.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2015-02-19 06:49:35', '2015-02-18 22:49:35', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/bowsertd.jpg"><img class="alignnone size-medium wp-image-111" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/bowsertd-300x173.jpg" alt="bowsertd" width="300" height="173" /></a><a title="BowserTD" href="http://localhost/portfolio_site/bowsertd" target="_blank">http://localhost/portfolio_site/bowsertd</a>', 'Bowser Tower Defense', 'Javascript and JQuery based web game', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-02-19 06:49:35', '2015-02-18 22:49:35', '', 50, 'http://localhost/portfolio_site/50-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2015-02-19 06:51:38', '2015-02-18 22:51:38', '', 'sundman_valerie_magazine', '', 'inherit', 'closed', 'closed', '', 'sundman_valerie_magazine-3', '', '', '2015-02-19 06:51:38', '2015-02-18 22:51:38', '', 96, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2015-02-19 06:51:41', '2015-02-18 22:51:41', '', 'SundmanValerie_DVD-1', '', 'inherit', 'closed', 'closed', '', 'sundmanvalerie_dvd-1', '', '', '2015-02-19 06:51:41', '2015-02-18 22:51:41', '', 96, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2015-02-19 06:52:21', '2015-02-18 22:52:21', '&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD.pdf"]\n\n&nbsp;\n\nI used photoshop to design the package.', '300 DVD Package', 'Re-design of 300 movie DVD package', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2015-02-19 06:52:21', '2015-02-18 22:52:21', '', 96, 'http://localhost/portfolio_site/96-autosave-v1/', 0, 'revision', '', 0),
(116, 1, '2015-02-19 06:52:29', '2015-02-18 22:52:29', '', 'SundmanValerieBookCover copy', '', 'inherit', 'closed', 'closed', '', 'sundmanvaleriebookcover-copy-2', '', '', '2015-02-19 06:52:29', '2015-02-18 22:52:29', '', 96, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2015-02-19 06:52:41', '2015-02-18 22:52:41', '<del></del><a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD-1.jpg"><img class="alignnone size-medium wp-image-114" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD-1-300x208.jpg" alt="SundmanValerie_DVD-1" width="300" height="208" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD.pdf"]\r\n\r\n&nbsp;\r\n\r\nI used photoshop to design the package.', '300 DVD Package', 'Re-design of 300 movie DVD package', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2015-02-19 06:52:41', '2015-02-18 22:52:41', '', 96, 'http://localhost/portfolio_site/96-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2015-02-19 06:52:54', '2015-02-18 22:52:54', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.jpg"><img class="alignnone size-medium wp-image-113" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine-300x194.jpg" alt="sundman_valerie_magazine" width="300" height="194" /></a>\r\n\r\n&nbsp;\r\n\r\n[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf" height="600px"]', 'Popular Science Magazine', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-19 06:52:54', '2015-02-18 22:52:54', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2015-02-19 06:53:06', '2015-02-18 22:53:06', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy-2.jpg"><img class="alignnone size-medium wp-image-116" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy-2-300x232.jpg" alt="SundmanValerieBookCover copy" width="300" height="232" /></a>[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy.pdf"]', 'Book Cover ReDesign', 'Re-designed a children\'s book', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2015-02-19 06:53:06', '2015-02-18 22:53:06', '', 99, 'http://localhost/portfolio_site/99-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2015-02-19 06:53:26', '2015-02-18 22:53:26', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy.pdf"]', 'Book Cover ReDesign', 'Re-designed a children\'s book', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2015-02-19 06:53:26', '2015-02-18 22:53:26', '', 99, 'http://localhost/portfolio_site/99-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(121, 1, '2015-02-19 06:53:37', '2015-02-18 22:53:37', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD.pdf"]\r\n\r\n&nbsp;\r\n\r\nI used photoshop to design the package.', '300 DVD Package', 'Re-design of 300 movie DVD package', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2015-02-19 06:53:37', '2015-02-18 22:53:37', '', 96, 'http://localhost/portfolio_site/96-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2015-02-19 06:53:50', '2015-02-18 22:53:50', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.pdf" height="600px"]', 'Popular Science Magazine', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-19 06:53:50', '2015-02-18 22:53:50', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2015-02-19 07:05:16', '2015-02-18 23:05:16', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-2.jpg"><img class="alignnone size-medium wp-image-124" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-1-300x233.jpg" alt="ITunesCoverandBack-1" width="300" height="233" /></a>\r\n\r\n<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-2.jpg"><img class="alignnone size-medium wp-image-125" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-2-300x233.jpg" alt="ITunesCoverandBack-2" width="300" height="233" /></a>\r\n\r\n&nbsp;\r\n\r\nEllie Goulding Album', 'ITunes Cover and Back', 'Designed an album cover and back for Ellie Goulding as a school project', 'publish', 'closed', 'closed', '', 'itunes-cover-and-back', '', '', '2015-02-19 07:10:08', '2015-02-18 23:10:08', '', 0, 'http://localhost/portfolio_site/?post_type=portfolio&#038;p=123', 0, 'portfolio', '', 0),
(124, 1, '2015-02-19 06:56:18', '2015-02-18 22:56:18', '', 'ITunesCoverandBack-1', '', 'inherit', 'closed', 'closed', '', 'itunescoverandback-1', '', '', '2015-02-19 06:56:18', '2015-02-18 22:56:18', '', 123, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2015-02-19 06:56:20', '2015-02-18 22:56:20', '', 'ITunesCoverandBack-2', '', 'inherit', 'closed', 'closed', '', 'itunescoverandback-2', '', '', '2015-02-19 06:56:20', '2015-02-18 22:56:20', '', 123, 'http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2015-02-19 07:05:16', '2015-02-18 23:05:16', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-1.pdf"]', 'ITunes Cover and Back', 'Designed an album cover and back for Ellie Goulding as a school project', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2015-02-19 07:05:16', '2015-02-18 23:05:16', '', 123, 'http://localhost/portfolio_site/123-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2015-02-19 07:09:48', '2015-02-18 23:09:48', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-all.pdf"]\r\n\r\n&nbsp;\r\n\r\nEllie Goulding Album', 'ITunes Cover and Back', 'Designed an album cover and back for Ellie Goulding as a school project', 'inherit', 'closed', 'closed', '', '123-autosave-v1', '', '', '2015-02-19 07:09:48', '2015-02-18 23:09:48', '', 123, 'http://localhost/portfolio_site/123-autosave-v1/', 0, 'revision', '', 0),
(132, 1, '2015-02-19 07:08:03', '2015-02-18 23:08:03', '[gview file="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-all.pdf"]\r\n\r\n&nbsp;\r\n\r\nEllie Goulding Album', 'ITunes Cover and Back', 'Designed an album cover and back for Ellie Goulding as a school project', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2015-02-19 07:08:03', '2015-02-18 23:08:03', '', 123, 'http://localhost/portfolio_site/123-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2015-02-19 07:09:11', '2015-02-18 23:09:11', '&nbsp;\r\n\r\n&nbsp;\r\n\r\nEllie Goulding Album', 'ITunes Cover and Back', 'Designed an album cover and back for Ellie Goulding as a school project', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2015-02-19 07:09:11', '2015-02-18 23:09:11', '', 123, 'http://localhost/portfolio_site/123-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2015-02-19 07:10:08', '2015-02-18 23:10:08', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-2.jpg"><img class="alignnone size-medium wp-image-124" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-1-300x233.jpg" alt="ITunesCoverandBack-1" width="300" height="233" /></a>\r\n\r\n<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-2.jpg"><img class="alignnone size-medium wp-image-125" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/ITunesCoverandBack-2-300x233.jpg" alt="ITunesCoverandBack-2" width="300" height="233" /></a>\r\n\r\n&nbsp;\r\n\r\nEllie Goulding Album', 'ITunes Cover and Back', 'Designed an album cover and back for Ellie Goulding as a school project', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2015-02-19 07:10:08', '2015-02-18 23:10:08', '', 123, 'http://localhost/portfolio_site/123-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-02-19 07:10:21', '2015-02-18 23:10:21', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy-2.jpg"><img class="alignnone size-medium wp-image-116" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerieBookCover-copy-2-300x232.jpg" alt="SundmanValerieBookCover copy" width="300" height="232" /></a>', 'Book Cover ReDesign', 'Re-designed a children\'s book', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2015-02-19 07:10:21', '2015-02-18 23:10:21', '', 99, 'http://localhost/portfolio_site/99-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2015-02-19 07:10:33', '2015-02-18 23:10:33', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD-1.jpg"><img class="alignnone size-medium wp-image-114" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/SundmanValerie_DVD-1-300x208.jpg" alt="SundmanValerie_DVD-1" width="300" height="208" /></a>\r\n\r\n&nbsp;\r\n\r\nI used photoshop to design the package.', '300 DVD Package', 'Re-design of 300 movie DVD package', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2015-02-19 07:10:33', '2015-02-18 23:10:33', '', 96, 'http://localhost/portfolio_site/96-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2015-02-19 07:10:49', '2015-02-18 23:10:49', '<a href="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine.jpg"><img class="alignnone size-medium wp-image-113" src="http://localhost/portfolio_site/wp-content/uploads/2015/02/sundman_valerie_magazine-300x194.jpg" alt="sundman_valerie_magazine" width="300" height="194" /></a>', 'Popular Science Magazine', 'Magazine Concept for Popular Science', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2015-02-19 07:10:49', '2015-02-18 23:10:49', '', 87, 'http://localhost/portfolio_site/87-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(12, 1, 0),
(21, 1, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(50, 4, 0),
(50, 7, 0),
(50, 11, 0),
(69, 3, 0),
(70, 3, 0),
(71, 3, 0),
(72, 8, 0),
(73, 8, 0),
(74, 8, 0),
(78, 3, 0),
(79, 11, 0),
(81, 11, 0),
(83, 11, 0),
(85, 11, 0),
(87, 12, 0),
(96, 12, 0),
(99, 12, 0),
(123, 12, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'Type of Work', '', 0, 1),
(5, 5, 'Type of Work', '', 0, 0),
(6, 6, 'Type of Work', '', 0, 0),
(7, 7, 'Type of Work', '', 0, 1),
(8, 8, 'nav_menu', '', 0, 3),
(11, 11, 'typework', '', 0, 5),
(12, 12, 'typework', '', 0, 4) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `name` (`name`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Social Media', 'social-media', 0),
(3, 'Main Menu', 'main-menu', 0),
(4, 'javascript', 'javascript', 0),
(5, 'php', 'php', 0),
(6, 'graphic design', 'graphic-design', 0),
(7, 'web', 'web', 0),
(8, 'social media menu', 'social-media-menu', 0),
(11, 'Web', 'web', 0),
(12, 'Graphic Design', 'graphic-design', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'vsundman'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '65'),
(15, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(16, 1, 'wp_user-settings-time', '1424299590'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'closedpostboxes_post', 'a:0:{}'),
(20, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";i:3;s:11:"commentsdiv";}'),
(23, 1, 'session_tokens', 'a:2:{s:64:"fa9c3de60d4f61a252ee3c8b68bafd6d5137e05224b4a3c457f8f184510fc542";a:4:{s:10:"expiration";i:1425315850;s:2:"ip";s:14:"70.181.131.188";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36";s:5:"login";i:1424106250;}s:64:"af6ab2a465868448f5ff08305410d26075686b9f59703c34bf23eecc046772e6";a:4:{s:10:"expiration";i:1424881333;s:2:"ip";s:12:"70.166.26.46";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36";s:5:"login";i:1424708533;}}'),
(24, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:70:"postcustom,commentstatusdiv,slugdiv,authordiv,revisionsdiv,commentsdiv";s:8:"advanced";s:0:"";}'),
(25, 1, 'screen_layout_page', '2'),
(26, 1, 'nav_menu_recently_edited', '3'),
(27, 1, 'wporg_favorites', ''),
(28, 1, 'default_password_nag', ''),
(29, 1, 'closedpostboxes_portfolio', 'a:1:{i:0;s:12:"revisionsdiv";}'),
(30, 1, 'metaboxhidden_portfolio', 'a:1:{i:0;s:7:"slugdiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vsundman', '$P$B7ZO50gH3eAXtDIOplfEgFqZNEjt9O1', 'vsundman', 'valeriec@san.rr.com', '', '2014-07-22 16:36:11', '', 0, 'vsundman') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
#

