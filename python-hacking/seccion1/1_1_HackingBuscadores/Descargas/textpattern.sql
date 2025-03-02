-- MySQL dump 10.9
--
-- Host: sql.mit.edu    Database: presbrey+scriptstp
-- ------------------------------------------------------
-- Server version	4.1.15-Debian_0.dotdeb.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `textpattern`
--

DROP TABLE IF EXISTS `textpattern`;
CREATE TABLE `textpattern` (
  `ID` int(11) NOT NULL auto_increment,
  `Posted` datetime NOT NULL default '0000-00-00 00:00:00',
  `AuthorID` varchar(64) NOT NULL default '',
  `LastMod` datetime NOT NULL default '0000-00-00 00:00:00',
  `LastModID` varchar(64) NOT NULL default '',
  `Title` varchar(255) NOT NULL default '',
  `Title_html` varchar(255) NOT NULL default '',
  `Body` mediumtext NOT NULL,
  `Body_html` mediumtext NOT NULL,
  `Excerpt` text NOT NULL,
  `Excerpt_html` mediumtext NOT NULL,
  `Image` varchar(255) NOT NULL default '',
  `Category1` varchar(128) NOT NULL default '',
  `Category2` varchar(128) NOT NULL default '',
  `Annotate` int(2) NOT NULL default '0',
  `AnnotateInvite` varchar(255) NOT NULL default '',
  `comments_count` int(8) NOT NULL default '0',
  `Status` int(2) NOT NULL default '4',
  `textile_body` int(2) NOT NULL default '1',
  `textile_excerpt` int(2) NOT NULL default '1',
  `Section` varchar(64) NOT NULL default '',
  `override_form` varchar(255) NOT NULL default '',
  `Keywords` varchar(255) NOT NULL default '',
  `url_title` varchar(255) NOT NULL default '',
  `custom_1` varchar(255) NOT NULL default '',
  `custom_2` varchar(255) NOT NULL default '',
  `custom_3` varchar(255) NOT NULL default '',
  `custom_4` varchar(255) NOT NULL default '',
  `custom_5` varchar(255) NOT NULL default '',
  `custom_6` varchar(255) NOT NULL default '',
  `custom_7` varchar(255) NOT NULL default '',
  `custom_8` varchar(255) NOT NULL default '',
  `custom_9` varchar(255) NOT NULL default '',
  `custom_10` varchar(255) NOT NULL default '',
  `uid` varchar(32) NOT NULL default '',
  `feed_time` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`ID`),
  KEY `categories_idx` (`Category1`(10),`Category2`(10)),
  KEY `Posted` (`Posted`),
  FULLTEXT KEY `searching` (`Title`,`Body`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=1;

--
-- Dumping data for table `textpattern`
--


/*!40000 ALTER TABLE `textpattern` DISABLE KEYS */;
LOCK TABLES `textpattern` WRITE;
INSERT INTO `textpattern` VALUES (1,'2006-01-16 11:49:16','textpattern','2006-01-16 11:49:16','','First Post','','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec rutrum est eu mauris. In volutpat blandit felis. Suspendisse eget pede. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Quisque sed arcu. Aenean purus nulla, condimentum ac, pretium at, commodo sit amet, turpis. Aenean lacus. Ut in justo. Ut viverra dui vel ante. Duis imperdiet porttitor mi. Maecenas at lectus eu justo porta tempus. Cras fermentum ligula non purus. Duis id orci non magna rutrum bibendum. Mauris tincidunt, massa in rhoncus consectetuer, lectus dui ornare enim, ut egestas ipsum purus id urna. Vestibulum volutpat porttitor metus. Donec congue vehicula ante.','	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec rutrum est eu mauris. In volutpat blandit felis. Suspendisse eget pede. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Quisque sed arcu. Aenean purus nulla, condimentum ac, pretium at, commodo sit amet, turpis. Aenean lacus. Ut in justo. Ut viverra dui vel ante. Duis imperdiet porttitor mi. Maecenas at lectus eu justo porta tempus. Cras fermentum ligula non purus. Duis id orci non magna rutrum bibendum. Mauris tincidunt, massa in rhoncus consectetuer, lectus dui ornare enim, ut egestas ipsum purus id urna. Vestibulum volutpat porttitor metus. Donec congue vehicula ante.</p>\n\n\n ','','\n\n\n ','','','',1,'Comment',1,4,1,1,'article','','','first-post','','','','','','','','','','','becfea8fd42801204463b23701199f28','2005-07-18');
UNLOCK TABLES;
/*!40000 ALTER TABLE `textpattern` ENABLE KEYS */;

--
-- Table structure for table `txp_category`
--

DROP TABLE IF EXISTS `txp_category`;
CREATE TABLE `txp_category` (
  `id` int(6) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  `type` varchar(64) NOT NULL default '',
  `parent` varchar(64) NOT NULL default '',
  `lft` int(6) NOT NULL default '0',
  `rgt` int(6) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=1;

--
-- Dumping data for table `txp_category`
--


/*!40000 ALTER TABLE `txp_category` DISABLE KEYS */;
LOCK TABLES `txp_category` WRITE;
INSERT INTO `txp_category` VALUES (63,'root','file','',1,2,'root'),(62,'root','image','',1,4,'root'),(61,'root','link','',1,4,'root'),(12,'textpattern','link','root',2,3,'textpattern'),(15,'reciprocal-affection','article','root',6,7,'reciprocal affection'),(14,'hope-for-the-future','article','root',2,3,'hope for the future'),(16,'meaningful-labor','article','root',4,5,'meaningful labor'),(51,'site-design','image','root',2,3,'site design'),(60,'root','article','',1,8,'root');
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_category` ENABLE KEYS */;

--
-- Table structure for table `txp_css`
--

DROP TABLE IF EXISTS `txp_css`;
CREATE TABLE `txp_css` (
  `name` varchar(255) default NULL,
  `css` text,
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `txp_css`
--


/*!40000 ALTER TABLE `txp_css` DISABLE KEYS */;
LOCK TABLES `txp_css` WRITE;
INSERT INTO `txp_css` VALUES ('default','Ym9keQ0Kew0KCWJhY2tncm91bmQtY29sb3I6ICNmZmY7DQp9DQoNCnAsIGJsb2NrcXVvdGUsIGxpLCBoMw0Kew0KCWZvbnQtZmFtaWx5OiBWZXJkYW5hLCAiTHVjaWRhIEdyYW5kZSIsIFRhaG9tYSwgSGVsdmV0aWNhOw0KCWZvbnQtc2l6ZTogMC45ZW07DQoJbGluZS1oZWlnaHQ6IDEuNmVtOw0KCXRleHQtYWxpZ246IGxlZnQ7DQoJcGFkZGluZy1sZWZ0OiAxMHB4Ow0KCXBhZGRpbmctcmlnaHQ6IDEwcHg7DQp9DQoNCmJsb2NrcXVvdGUNCnsNCgltYXJnaW4tbGVmdDogMjBweDsNCgltYXJnaW4tcmlnaHQ6IDBweDsNCn0NCg0KI3NpZGViYXItMiBwLCAjc2lkZWJhci0xIHANCnsNCglsaW5lLWhlaWdodDogMTVweDsNCglmb250LXNpemU6IDEwcHg7DQp9DQoNCiNzaWRlYmFyLTEgcA0Kew0KCXRleHQtYWxpZ246IHJpZ2h0Ow0KfQ0KDQojaGVhZA0Kew0KCXRleHQtYWxpZ246IGNlbnRlcjsNCgloZWlnaHQ6IDEwMHB4Ow0KfQ0KDQojY29udGFpbmVyDQp7DQoJd2lkdGg6IDc2MHB4Ow0KCVx3aWR0aDogNzcwcHg7DQoJd1xpZHRoOiA3NjBweDsNCgltYXJnaW46IDEwcHg7DQoJbWFyZ2luLWxlZnQ6IGF1dG87DQoJbWFyZ2luLXJpZ2h0OiBhdXRvOw0KCXBhZGRpbmc6IDEwcHg7DQp9DQoNCiNzaWRlYmFyLTENCnsNCglmbG9hdDogbGVmdDsNCgl3aWR0aDogMTUwcHg7DQoJXHdpZHRoOiAxNTBweDsNCgl3XGlkdGg6IDE1MHB4Ow0KCW1hcmdpbi1yaWdodDogNXB4Ow0KCXBhZGRpbmctdG9wOiAxMDBweDsNCn0NCg0KI2NvbnRlbnQNCnsNCgltYXJnaW4tbGVmdDogMTU1cHg7DQoJbWFyZ2luLXJpZ2h0OiAxNTVweDsNCglwYWRkaW5nLXRvcDogMzBweDsNCn0NCg0KI3NpZGViYXItMg0Kew0KCWZsb2F0OiByaWdodDsNCgl3aWR0aDogMTUwcHg7DQoJXHdpZHRoOiAxNTBweDsNCgl3XGlkdGg6IDE1MHB4Ow0KCW1hcmdpbi1sZWZ0OiA1cHg7DQoJcGFkZGluZy10b3A6IDEwMHB4Ow0KfQ0KDQojZm9vdA0Kew0KCWNsZWFyOiBib3RoOw0KCW1hcmdpbi10b3A6IDVweDsNCgl0ZXh0LWFsaWduOiBjZW50ZXI7DQp9DQojYWNjZXNzaWJpbGl0eQ0Kew0KCXBvc2l0aW9uOiBhYnNvbHV0ZTsNCgl0b3A6IC0xMDAwMHB4Ow0KfQ0KYQ0Kew0KCWNvbG9yOiBibGFjazsNCgl0ZXh0LWRlY29yYXRpb246IG5vbmU7DQoJYm9yZGVyLWJvdHRvbTogMXB4IGJsYWNrIHNvbGlkOw0KfQ0KDQojc2lkZWJhci0yIGEsICNzaWRlYmFyLTEgYQ0Kew0KCWJvcmRlcjogMHB4Ow0KCWNvbG9yOiAjQzAwOw0KfQ0KDQpoMQ0Kew0KCWZvbnQtd2VpZ2h0OiBub3JtYWw7DQoJdGV4dC1kZWNvcmF0aW9uOm5vbmU7DQoJZm9udC1mYW1pbHk6IEdlb3JnaWEsIFRpbWVzLCBTZXJpZjsNCglmb250LXNpemU6IDNlbTsNCn0NCg0KaDINCnsNCglmb250LXdlaWdodDogbm9ybWFsOw0KCWZvbnQtZmFtaWx5OiBHZW9yZ2lhLCBUaW1lcywgU2VyaWY7DQoJZm9udC1zaXplOiAxZW07DQoJZm9udC1zdHlsZTogaXRhbGljOw0KfQ0KDQpoMw0Kew0KCWZvbnQtd2VpZ2h0OiBub3JtYWw7DQp9DQoNCmgzIGENCnsNCglib3JkZXI6IDBweDsNCglmb250LXdlaWdodDogbm9ybWFsOw0KCWZvbnQtZmFtaWx5OiBHZW9yZ2lhLCBUaW1lcywgU2VyaWY7DQoJZm9udC1zaXplOiAxLjVlbTsNCn0NCg0KaDEgYSwgaDIgYQ0Kew0KCWJvcmRlcjogMHB4Ow0KfQ0KLmNhcHMNCnsNCglsZXR0ZXItc3BhY2luZzogMC4xZW07DQoJZm9udC1zaXplOiAxMHB4Ow0KfQ0KDQojY29udGVudCBocg0Kew0KCWNvbG9yOiAjY2NjOw0KCXdpZHRoOiA2NiU7DQoJbWFyZ2luLXRvcDogMmVtOw0KCW1hcmdpbi1ib3R0b206IDJlbTsNCn0NCg0KaW1nLmRpdmlkZXINCnsNCglhbGlnbjogY2VudGVyOw0KCW1hcmdpbi10b3A6IDJlbTsNCgltYXJnaW4tYm90dG9tOiAyZW07DQp9CgouY29tbWVudHNfZXJyb3IKeyAKCWJhY2tncm91bmQtY29sb3I6ICNmZmEgCn0KCmRpdi5jb21tZW50c19lcnJvcgp7Cglib3JkZXI6IDFweCBzb2xpZCAjY2M4OwoJcGFkZGluZyA6IDAuM2VtOwp9');
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_css` ENABLE KEYS */;

--
-- Table structure for table `txp_discuss`
--

DROP TABLE IF EXISTS `txp_discuss`;
CREATE TABLE `txp_discuss` (
  `discussid` int(6) unsigned zerofill NOT NULL auto_increment,
  `parentid` int(8) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `web` varchar(255) NOT NULL default '',
  `ip` varchar(100) NOT NULL default '',
  `posted` datetime NOT NULL default '0000-00-00 00:00:00',
  `message` text NOT NULL,
  `visible` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`discussid`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=1;

--
-- Dumping data for table `txp_discuss`
--


/*!40000 ALTER TABLE `txp_discuss` DISABLE KEYS */;
LOCK TABLES `txp_discuss` WRITE;
INSERT INTO `txp_discuss` VALUES (000001,1,'Donald Swain','me@here.com','example.com','127.0.0.1','2005-07-22 14:11:32','I enjoy your site very much.',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_discuss` ENABLE KEYS */;

--
-- Table structure for table `txp_discuss_ipban`
--

DROP TABLE IF EXISTS `txp_discuss_ipban`;
CREATE TABLE `txp_discuss_ipban` (
  `ip` varchar(255) NOT NULL default '',
  `name_used` varchar(255) NOT NULL default '',
  `date_banned` datetime NOT NULL default '0000-00-00 00:00:00',
  `banned_on_message` int(8) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `txp_discuss_ipban`
--


/*!40000 ALTER TABLE `txp_discuss_ipban` DISABLE KEYS */;
LOCK TABLES `txp_discuss_ipban` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_discuss_ipban` ENABLE KEYS */;

--
-- Table structure for table `txp_discuss_nonce`
--

DROP TABLE IF EXISTS `txp_discuss_nonce`;
CREATE TABLE `txp_discuss_nonce` (
  `issue_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `nonce` varchar(255) NOT NULL default '',
  `used` tinyint(4) NOT NULL default '0',
  `secret` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `txp_discuss_nonce`
--


/*!40000 ALTER TABLE `txp_discuss_nonce` DISABLE KEYS */;
LOCK TABLES `txp_discuss_nonce` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_discuss_nonce` ENABLE KEYS */;

--
-- Table structure for table `txp_file`
--

DROP TABLE IF EXISTS `txp_file`;
CREATE TABLE `txp_file` (
  `id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) NOT NULL default '',
  `category` varchar(255) NOT NULL default '',
  `permissions` varchar(32) NOT NULL default '0',
  `description` text NOT NULL,
  `downloads` int(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `filename` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

--
-- Dumping data for table `txp_file`
--


/*!40000 ALTER TABLE `txp_file` DISABLE KEYS */;
LOCK TABLES `txp_file` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_file` ENABLE KEYS */;

--
-- Table structure for table `txp_form`
--

DROP TABLE IF EXISTS `txp_form`;
CREATE TABLE `txp_form` (
  `name` varchar(64) NOT NULL default '',
  `type` varchar(28) NOT NULL default '',
  `Form` text NOT NULL,
  PRIMARY KEY  (`name`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=1;

--
-- Dumping data for table `txp_form`
--


/*!40000 ALTER TABLE `txp_form` DISABLE KEYS */;
LOCK TABLES `txp_form` WRITE;
INSERT INTO `txp_form` VALUES ('Links','link','<p><txp:link /><br />\r\n<txp:link_description /></p>'),('lofi','article','<h3><txp:title /></h3>\r\n<p><small><txp:permlink>#</txp:permlink> <txp:posted /></small></p>\r\n<txp:body />\r\n<hr size=\"1\" noshade=\"noshade\" />'),('Single','article','<h3><txp:title /> <span class=\"permlink\"><txp:permlink>::</txp:permlink></span> <span class=\"date\"><txp:posted /></span></h3>\r\n<txp:body />'),('plainlinks','link','<txp:linkdesctitle /><br />'),('comments','comment','<txp:message /><br />\r\n<small>&#8212; <txp:comment_name /> &#160;&#160; <txp:comment_time /> &#160;&#160; <txp:comment_permlink>#</txp:comment_permlink></small>'),('default','article','<h3><txp:permlink><txp:title /></txp:permlink> &#183; <txp:posted /> by <txp:author /></h3>\r\n<txp:body />\r\n<txp:comments_invite wraptag=\"p\" />\r\n<div align=\"center\"><img src=\"<txp:site_url />images/1.gif\" style=\"height:1px;width:400px\" class=\"divider\" alt=\"\" /></div>'),('comment_form','comment','  <table cellpadding=\"4\" cellspacing=\"0\" border=\"0\">\r\n	<tr>\r\n	  <td align=\"right\" valign=\"top\">\r\n	   	<label for=\"name\"><txp:text item=\"name\" /></label>\r\n	  </td>\r\n   <td valign=\"top\">\r\n	  	<txp:comment_name_input />\r\n	  </td>\r\n	  <td valign=\"top\" align=\"left\">\r\n	  	<txp:comment_remember />\r\n	  </td> \r\n	</tr>\r\n	<tr>\r\n	  <td align=\"right\" valign=\"top\">\r\n	  	<label for=\"email\"><txp:text item=\"email\" /></label>\r\n	  </td>\r\n	  <td valign=\"top\" colspan=\"2\">\r\n	  	<txp:comment_email_input />\r\n	  </td>\r\n    </tr>\r\n	<tr> \r\n	  <td align=\"right\" valign=\"top\">\r\n	  	<label for=\"web\">http://</label>\r\n	  </td>\r\n	  <td valign=\"top\" colspan=\"2\">\r\n	  	<txp:comment_web_input />\r\n	  </td>\r\n	</tr>\r\n	<tr>\r\n	  <td valign=\"top\" align=\"right\">\r\n	  	<label for=\"message\"><txp:text item=\"message\" /></label>\r\n	  </td>\r\n	  <td valign=\"top\" colspan=\"2\">\r\n	  	<txp:comment_message_input />\r\n	  </td>\r\n	</tr>\r\n	<tr>\r\n	  <td align=\"right\" valign=\"top\">&nbsp;</td>\r\n	  <td valign=\"top\" align=\"left\">\r\n		<txp:comments_help />\r\n	  </td>\r\n	  <td align=\"right\" valign=\"top\">\r\n		<txp:comment_preview />\r\n		<txp:comment_submit />\r\n	  </td>\r\n	</tr>\r\n  </table>'),('Noted','link','<p> <txp:link />. <txp:link_description /></p>'),('popup_comments','comment','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n    \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n<head>\n	<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n	<link rel=\"Stylesheet\" href=\"<txp:css />\" type=\"text/css\" />\n	<title><txp:page_title /></title>\n</head>\n<body>\n<div style=\"text-align: left; padding: 1em; width:300px\">\n\n	<txp:popup_comments />\n\n	</div>\n</body>\n</html>'),('files','file','<txp:text item=\"file\" />: \n<txp:file_download_link>\n<txp:file_download_name /> [<txp:file_download_size format=\"auto\" decimals=\"2\" />]\n</txp:file_download_link>\n<br />\n<txp:text item=\"category\" />: <txp:file_download_category /><br />\n<txp:text item=\"download\" />: <txp:file_download_downloads />'),('search_results','article','<h3><txp:permlink><txp:title /></txp:permlink></h3>\n<p><txp:search_result_excerpt /><br/>\n<small><txp:permlink><txp:permlink /></txp:permlink> &middot;\n<txp:posted /></small></p>'),('comments_display','article','<txp:comments />\n<txp:if_comments_allowed>\n<txp:comments_form />\n<txp:else />\n<p><txp:text item=\"comments_closed\" /></p>\n</txp:if_comments_allowed>');
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_form` ENABLE KEYS */;

--
-- Table structure for table `txp_image`
--

DROP TABLE IF EXISTS `txp_image`;
CREATE TABLE `txp_image` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `category` varchar(255) NOT NULL default '',
  `ext` varchar(20) NOT NULL default '',
  `w` int(8) NOT NULL default '0',
  `h` int(8) NOT NULL default '0',
  `alt` varchar(255) NOT NULL default '',
  `caption` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `author` varchar(255) NOT NULL default '',
  `thumbnail` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

--
-- Dumping data for table `txp_image`
--


/*!40000 ALTER TABLE `txp_image` DISABLE KEYS */;
LOCK TABLES `txp_image` WRITE;
INSERT INTO `txp_image` VALUES (1,'divider.gif','site-design','.gif',400,1,'','','2005-07-22 16:37:11','textpattern',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_image` ENABLE KEYS */;

--
-- Table structure for table `txp_lang`
--

DROP TABLE IF EXISTS `txp_lang`;
CREATE TABLE `txp_lang` (
  `id` int(9) NOT NULL auto_increment,
  `lang` varchar(16) default NULL,
  `name` varchar(64) default NULL,
  `event` varchar(64) default NULL,
  `data` tinytext,
  `lastmod` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `lang` (`lang`,`name`),
  KEY `lang_2` (`lang`,`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

--
-- Dumping data for table `txp_lang`
--


/*!40000 ALTER TABLE `txp_lang` DISABLE KEYS */;
LOCK TABLES `txp_lang` WRITE;
INSERT INTO `txp_lang` VALUES (1,'en-us','404_not_found','public','404 - The requested page was not found.','2005-09-05 08:34:09'),(2,'en-us','about_to_create','setup','You are about to create and populate database tables.','2005-09-05 08:34:09'),(3,'en-us','active','public','Active','2005-08-07 06:34:02'),(4,'en-us','active_language','prefs','Currently active language','2005-09-05 08:34:09'),(5,'en-us','add','public','Add','2005-08-07 06:34:02'),(6,'en-us','add_declaration','css','add declaration','2005-07-06 13:39:09'),(7,'en-us','add_new_author','admin','Add new author','2005-07-06 13:39:09'),(8,'en-us','add_new_selector','css','Add new selector','2005-07-06 13:39:09'),(9,'en-us','admin','public','Admin','2005-08-07 06:34:02'),(10,'en-us','admin_side_plugins','prefs','Use admin side plugins?','2005-09-05 08:34:09'),(11,'en-us','advanced_options','article','Advanced Options','2005-08-07 06:35:43'),(12,'en-us','advanced_preferences','prefs','Advanced preferences','2005-09-05 08:34:09'),(13,'en-us','ago','public','ago','2005-08-07 06:34:02'),(14,'en-us','all','public','All','2005-08-07 06:34:02'),(15,'en-us','allow_article_php_scripting','prefs','Allow PHP on articles?','2005-09-05 08:34:09'),(16,'en-us','allow_form_override','prefs','Allow form override?','2005-09-05 08:34:09'),(17,'en-us','allow_page_php_scripting','prefs','Allow PHP on pages?','2005-09-05 08:34:09'),(18,'en-us','all_checks_passed','diag','All checks passed!','2005-08-07 06:34:29'),(19,'en-us','all_forms','form','All forms','2005-07-06 13:39:09'),(20,'en-us','all_hits','prefs','All hits','2005-09-05 07:40:06'),(21,'en-us','all_pages','page','All pages','2005-07-06 13:39:09'),(22,'en-us','all_stylesheets','css','All stylesheets','2005-07-06 13:39:09'),(23,'en-us','already_exists','public','already exists','2005-08-07 06:34:02'),(24,'en-us','already_installed','setup','Looks like Textpattern is already installed. If you want to make a clean install, please remove <code>config.php</code> from your <code>/textpattern/</code> directory and try again.','2005-09-05 08:34:09'),(25,'en-us','alt_text','public','Alt text','2005-08-07 06:34:02'),(26,'en-us','and_mailed_to','admin','and mailed to','2005-07-06 13:39:09'),(27,'en-us','apache_modules','diag','Apache modules','2005-08-07 06:34:29'),(28,'en-us','apache_version','diag','Apache version','2005-08-07 06:34:29'),(29,'en-us','archive_dateformat','prefs','Archive date format','2005-09-05 07:40:06'),(30,'en-us','archive_date_case','prefs','Archive date case','2005-09-05 07:40:06'),(31,'en-us','archive_dir','prefs','Archive directory','2005-09-05 07:40:06'),(32,'en-us','are_you_sure','common','Are you sure?','2005-08-07 06:35:05'),(33,'en-us','article','public','article','2005-08-07 06:34:02'),(34,'en-us','articles','public','Articles','2005-08-07 06:34:02'),(35,'en-us','articles_found','public','articles found','2005-08-07 06:34:02'),(36,'en-us','articles_use_excerpts','prefs','Articles use excerpts?','2005-09-05 07:40:06'),(37,'en-us','article_category','category','Article category','2005-07-06 13:39:09'),(38,'en-us','article_category_name','category','Article category name','2005-07-06 13:39:09'),(39,'en-us','article_category_title','category','Article category title','2005-07-06 13:39:09'),(40,'en-us','article_deleted','article','Article deleted!','2005-08-07 06:35:43'),(41,'en-us','article_divider','tag','Article divider','2005-07-06 13:39:09'),(42,'en-us','article_found','public','article found','2005-08-07 06:34:02'),(43,'en-us','article_head','category','Article Categories','2005-07-06 13:39:09'),(44,'en-us','article_image','article','Article image','2005-08-07 06:35:43'),(45,'en-us','article_posted','article','Article posted','2005-08-07 06:35:43'),(46,'en-us','article_saved','article','Article saved','2005-08-07 06:35:43'),(47,'en-us','article_saved_draft','article','Article saved as draft','2005-08-07 06:35:43'),(48,'en-us','article_saved_hidden','article','Article saved as hidden','2005-08-07 06:35:43'),(49,'en-us','article_saved_pending','article','Article saved as pending','2005-08-07 06:35:43'),(50,'en-us','ascending','public','Ascending','2005-08-07 06:34:02'),(51,'en-us','attach_titles_to_permalinks','prefs','Attach titles to permalinks?','2005-09-05 07:40:06'),(52,'en-us','author','public','Author','2005-08-07 06:34:02'),(53,'en-us','authors','public','Authors','2005-08-07 06:34:02'),(54,'en-us','auth_required','common','Authorisation required','2005-08-07 06:35:05'),(55,'en-us','a_few_seconds','public','a few seconds','2005-08-07 06:34:02'),(56,'en-us','a_message_will_be_sent_with_login','admin','A message will be sent with login information','2005-07-06 13:39:09'),(57,'en-us','a_new_password_will_be_mailed','admin','A new password will be e-mailed','2005-07-06 13:39:09'),(58,'en-us','bad_cookie','common','Bad cookie','2005-08-07 06:35:05'),(59,'en-us','bad_plugin_code','plugin','Badly formed or empty plugin code','2005-07-06 13:39:09'),(60,'en-us','ban','discuss','Ban','2005-07-06 13:39:09'),(61,'en-us','before_you_proceed','setup','Before you proceed','2005-09-05 08:34:09'),(62,'en-us','blockquote','public','Blockquote','2005-08-07 06:34:02'),(63,'en-us','breadcrumb_linked','tag','Link breadcrumbs?','2005-07-06 13:39:09'),(64,'en-us','breadcrumb_separator','tag','Breadcrumbs separator','2005-07-06 13:39:09'),(65,'en-us','break','tag','Break','2005-07-06 13:39:09'),(66,'en-us','broken_plugin','plugin','broken','2005-07-06 13:39:09'),(67,'en-us','build','tag','Build Tag','2005-07-06 13:39:09'),(68,'en-us','bulkload_existing_css','css','Create or load new CSS','2005-07-06 13:39:09'),(69,'en-us','bulleted_list','public','Bulleted list','2005-08-07 06:34:02'),(70,'en-us','button_text','tag','Button text','2005-07-06 13:39:09'),(71,'en-us','ca-es','public','Català','2005-10-17 12:18:57'),(72,'en-us','cannot_delete_default_css','css','CSS default cannot be deleted','2005-07-06 13:39:09'),(73,'en-us','cannot_write_directory','image','Cannot write to directory','2005-08-07 06:37:02'),(74,'en-us','cant_ban_blank_ip','discuss','Can\'t ban a blank IP address!','2005-09-05 08:34:09'),(75,'en-us','caption','public','Caption','2005-08-07 06:34:02'),(76,'en-us','categories','public','Categories','2005-08-07 06:34:02'),(77,'en-us','categorize','public','Categorize','2005-08-07 06:34:02'),(78,'en-us','category','public','Category','2005-08-07 06:34:02'),(79,'en-us','category1','public','Cat. 1','2005-08-07 06:34:02'),(80,'en-us','category2','public','Cat. 2','2005-08-07 06:34:02'),(81,'en-us','category_subcategory','prefs','/category/subcategory','2005-09-05 07:40:06'),(82,'en-us','change','public','change','2005-08-07 06:34:02'),(83,'en-us','changesection','common','Change section','2005-10-03 14:34:18'),(84,'en-us','changestatus','common','Change status','2005-10-03 14:36:34'),(85,'en-us','change_email_address','admin','Change your email address','2005-07-06 13:39:09'),(86,'en-us','change_password','admin','Change your password','2005-07-06 13:39:09'),(87,'en-us','checking_database','setup','Checking database connection...','2005-09-05 08:34:09'),(88,'en-us','check_for_txp_updates','prefs','Check Textpattern Updates','2005-09-05 07:40:06'),(89,'en-us','check_html','public','Check HTML','2005-08-07 06:34:02'),(90,'en-us','choose_either_width_height_or_both','image','Indicate width, height, or both','2005-08-07 06:37:02'),(91,'en-us','choose_password','setup','Choose a password','2005-09-05 08:34:09'),(92,'en-us','citation','public','citation','2005-08-07 06:34:02'),(93,'en-us','clean','prefs','/clean/','2005-09-05 07:40:06'),(94,'en-us','cleanurl_only_apache','diag','Clean URLs are only supported for apache, use at your own risk','2005-08-07 06:34:29'),(95,'en-us','comment','public','comment','2005-08-07 06:34:02'),(96,'en-us','comments','public','Comments','2005-08-07 06:34:02'),(97,'en-us','comments_are_ol','prefs','Present comments as a numbered list?','2005-09-05 07:40:06'),(98,'en-us','comments_auto_append','prefs','Automatically append comments to articles?','2005-09-05 07:40:06'),(99,'en-us','comments_closed','public','commenting closed for this article','2005-08-07 06:34:02'),(100,'en-us','comments_dateformat','prefs','Comments date format','2005-09-05 07:40:06'),(101,'en-us','comments_default_invite','prefs','Default invite','2005-09-05 07:40:06'),(102,'en-us','comments_disabled_after','prefs','Disabled after','2005-09-05 07:40:06'),(103,'en-us','comments_disallow_images','prefs','Disallow user images','2005-09-05 07:40:06'),(104,'en-us','comments_form','tag','Form','2005-07-06 13:39:09'),(105,'en-us','comments_mode','prefs','Comments mode','2005-09-05 07:40:06'),(106,'en-us','comments_moderate','prefs','Moderate comments','2005-09-05 07:40:06'),(107,'en-us','comments_on','public','comments on','2005-08-07 06:34:02'),(108,'en-us','comments_on_default','prefs','On by default?','2005-09-05 07:40:06'),(109,'en-us','comments_permlink','public','Permanent link','2005-08-07 06:34:02'),(110,'en-us','comments_require_email','prefs','Comments require user email?','2005-09-05 07:40:06'),(111,'en-us','comments_require_name','prefs','Comments require user name?','2005-09-05 07:40:06'),(112,'en-us','comments_sendmail','prefs','Mail comments to author','2005-09-05 07:40:06'),(113,'en-us','comment_comment','public','Comment','2005-08-07 06:34:02'),(114,'en-us','comment_email','public','Email','2005-08-07 06:34:02'),(115,'en-us','comment_email_required','public','Please enter a valid email address','2005-08-07 06:34:02'),(116,'en-us','comment_form','tag','Comment form','2005-07-06 13:39:09'),(117,'en-us','comment_invitation','public','Invitation','2005-08-07 06:34:03'),(118,'en-us','comment_means_site_updated','prefs','New comment means site updated?','2005-09-05 07:40:06'),(119,'en-us','comment_moderated','public','Your comment is pending moderation. It will appear after it has been approved.','2005-08-07 06:34:03'),(120,'en-us','comment_name','public','Name','2005-08-07 06:34:03'),(121,'en-us','comment_name_required','public','Please enter your name','2005-08-07 06:34:03'),(122,'en-us','comment_nofollow','prefs','Use nofollow on comments?','2005-09-05 07:40:06'),(123,'en-us','comment_posted','public','Thank you for adding your comment.','2005-08-07 06:34:03'),(124,'en-us','comment_received','public','[{site}] comment received: {title}','2005-08-07 06:34:03'),(125,'en-us','comment_recorded','public','A comment on your post \"{title}\" was recorded.','2005-08-07 06:34:03'),(126,'en-us','comment_required','public','You must enter a comment','2005-08-07 06:34:03'),(127,'en-us','comment_web','public','Web','2005-08-07 06:34:03'),(128,'en-us','confirm_comment_deletion','discuss','confirm comment deletion','2005-07-06 13:39:09'),(129,'en-us','confirm_delete_popup','common','Really delete?','2005-08-07 06:35:05'),(130,'en-us','confirm_site_path','setup','Please confirm the following path','2005-09-05 08:34:09'),(131,'en-us','contact','public','Contact','2005-08-07 06:34:03'),(132,'en-us','continue','import','Continue','2005-07-06 13:39:09'),(133,'en-us','convert_linebreaks','prefs','Convert linebreaks','2005-09-05 07:40:06'),(134,'en-us','cookies_must_be_enabled','common','Browser cookies must be enabled to use Textpattern.','2005-08-07 06:35:05'),(135,'en-us','copy','public','Copy','2005-08-07 06:34:03'),(136,'en-us','copy_css_as','css','Copy style sheet as:','2005-07-06 13:39:09'),(137,'en-us','copy_editor','admin','Copy Editor','2005-07-06 13:39:09'),(138,'en-us','copy_page_as','page','Copy page as:','2005-07-06 13:39:09'),(139,'en-us','could_not_log_in','common','Could not log in with that name/password','2005-08-07 06:35:05'),(140,'en-us','could_not_mail','admin','Could not mail','2005-07-06 13:39:09'),(141,'en-us','could_not_update_author','admin','Could not update author','2005-07-06 13:39:09'),(142,'en-us','create','public','Create','2005-08-07 06:34:03'),(143,'en-us','created','public','created','2005-08-07 06:34:03'),(144,'en-us','create_config','setup','create a file called <code>config.php</code> in the <code>/textpattern/</code> directory and paste the following inside:','2005-09-05 08:34:09'),(145,'en-us','create_new','public','Create new','2005-08-07 06:34:03'),(146,'en-us','create_new_css','css','Create new CSS','2005-07-06 13:39:09'),(147,'en-us','create_new_form','form','Create new form','2005-07-06 13:39:09'),(148,'en-us','create_thumbnail','image','Create thumbnail','2005-08-07 06:37:02'),(149,'en-us','cs-cz','public','Čeština','2005-08-07 06:34:03'),(150,'en-us','css','public','css','2005-08-07 06:34:03'),(151,'en-us','css_mode','css','CSS Mode','2005-07-06 13:39:09'),(152,'en-us','css_property_value','css','Property : Value','2005-07-06 13:39:09'),(153,'en-us','css_selector','css','Selector','2005-07-06 13:39:09'),(154,'en-us','custom','public','custom','2005-08-07 06:34:03'),(155,'en-us','custom_10_set','prefs','Custom field 10 name','2005-09-05 07:40:06'),(156,'en-us','custom_1_set','prefs','Custom field 1 name','2005-09-05 07:40:06'),(157,'en-us','custom_2_set','prefs','Custom field 2 name','2005-09-05 07:40:06'),(158,'en-us','custom_3_set','prefs','Custom field 3 name','2005-09-05 07:40:06'),(159,'en-us','custom_4_set','prefs','Custom field 4 name','2005-09-05 07:40:06'),(160,'en-us','custom_5_set','prefs','Custom field 5 name','2005-09-05 07:40:06'),(161,'en-us','custom_6_set','prefs','Custom field 6 name','2005-09-05 07:40:06'),(162,'en-us','custom_7_set','prefs','Custom field 7 name','2005-09-05 07:40:06'),(163,'en-us','custom_8_set','prefs','Custom field 8 name','2005-09-05 07:40:06'),(164,'en-us','custom_9_set','prefs','Custom field 9 name','2005-09-05 07:40:06'),(165,'en-us','czech','prefs','Čeština','2005-09-05 07:40:06'),(166,'en-us','da-dk','public','Dansk','2005-08-07 06:34:03'),(167,'en-us','danish','prefs','Dansk','2005-09-05 07:40:06'),(168,'en-us','database_stuff','import','Database Data','2005-07-06 13:39:09'),(169,'en-us','date','public','Date','2005-08-07 06:34:03'),(170,'en-us','dateformat','public','Date format','2005-08-07 06:34:03'),(171,'en-us','date_case','public','Date case','2005-08-07 06:34:03'),(172,'en-us','day','public','day','2005-08-07 06:34:03'),(173,'en-us','days','public','days','2005-08-07 06:34:03'),(174,'en-us','db_cant_connect','setup','Can\'t connect to database','2005-09-05 08:34:09'),(175,'en-us','db_connected','setup','Connected','2005-09-05 08:34:09'),(176,'en-us','db_doesnt_exist','setup','Database {dbname} doesn\'t exist','2005-09-05 08:34:09'),(177,'en-us','db_must_exist','setup','Note that the database you specify must exist; Textpattern won’t create it for you.','2005-09-05 08:34:09'),(178,'en-us','de-de','public','Deutsch','2005-08-07 06:34:03'),(179,'en-us','default','public','Default','2005-08-07 06:34:03'),(180,'en-us','delete','public','Delete','2005-08-07 06:34:03'),(181,'en-us','deleted','public','deleted','2005-08-07 06:34:03'),(182,'en-us','deleted_text','public','deleted text','2005-08-07 06:34:03'),(183,'en-us','delete_declaration','css','Delete this declaration','2005-07-06 13:39:09'),(184,'en-us','delete_entire_selector','css','Delete entire selector','2005-07-06 13:39:09'),(185,'en-us','delete_form_confirmation','form','confirm form deletion','2005-07-06 13:39:09'),(186,'en-us','delete_page_confirmation','page','confirm page deletion','2005-07-06 13:39:09'),(187,'en-us','delete_section_confirmation','section','confirm section deletion','2005-07-06 13:39:09'),(188,'en-us','delete_selected','common','Delete selected','2005-08-07 06:35:05'),(189,'en-us','delete_this_declaration','css','Delete this declaration','2005-07-06 13:39:09'),(190,'en-us','descending','public','Descending','2005-08-07 06:34:03'),(191,'en-us','description','public','Description','2005-08-07 06:34:03'),(192,'en-us','designer','admin','Designer','2005-07-06 13:39:09'),(193,'en-us','detail','diag','Detail','2005-08-07 06:34:29'),(194,'en-us','diagnostic_info','diag','Diagnostic info','2005-08-07 06:34:29'),(195,'en-us','did_it','setup','I did it','2005-09-05 08:34:09'),(196,'en-us','dir_not_writable','diag','{dirtype} is not writable','2005-08-07 06:34:29'),(197,'en-us','displayed_comments','discuss','Displayed comments','2005-07-06 13:39:09'),(198,'en-us','dns_lookup_fails','diag','Web Domain DNS lookup fails','2005-08-07 06:34:29'),(199,'en-us','document_root','diag','Document root','2005-08-07 06:34:29'),(200,'en-us','download','file','download','2005-07-06 13:39:09'),(201,'en-us','downloads','file','Downloads','2005-07-06 13:39:09'),(202,'en-us','draft','common','Draft','2005-08-07 06:35:05'),(203,'en-us','dutch','prefs','Nederlands','2005-09-05 07:40:06'),(204,'en-us','edit','public','edit','2005-08-07 06:34:03'),(205,'en-us','edit_comment','discuss','edit comment','2005-07-06 13:39:09'),(206,'en-us','edit_css','css','edit CSS','2005-07-06 13:39:09'),(207,'en-us','edit_css_file','css','edit CSS file','2005-07-06 13:39:09'),(208,'en-us','edit_css_in_form','css','Edit in CSS editor','2005-07-06 13:39:09'),(209,'en-us','edit_forms','form','edit forms','2005-07-06 13:39:09'),(210,'en-us','edit_links','link','edit links','2005-07-06 13:39:09'),(211,'en-us','edit_page','page','edit page','2005-07-06 13:39:09'),(212,'en-us','edit_pages','page','edit page template','2005-07-06 13:39:09'),(213,'en-us','edit_plugins','plugin','edit plugins','2005-07-06 13:39:09'),(214,'en-us','edit_preferences','prefs','Edit preferences','2005-08-07 06:31:26'),(215,'en-us','edit_raw_css','css','Edit raw CSS','2005-07-06 13:39:09'),(216,'en-us','edit_raw_css_by_default','prefs','Edit raw CSS by default?','2005-08-07 06:31:26'),(217,'en-us','edit_sections','section','edit sections','2005-07-06 13:39:09'),(218,'en-us','el-gr','public','Ελληνικά','2005-08-07 06:34:03'),(219,'en-us','email','public','email','2005-08-07 06:34:03'),(220,'en-us','email_address','public','Email address','2005-08-07 06:34:03'),(221,'en-us','emphasis','public','emphasis','2005-08-07 06:34:03'),(222,'en-us','en-gb','public','English (GB)','2005-08-07 06:34:03'),(223,'en-us','en-us','public','English (US)','2005-08-07 06:34:03'),(224,'en-us','english','public','English','2005-08-07 06:34:03'),(225,'en-us','english_gb','prefs','English (GB)','2005-08-07 06:31:26'),(226,'en-us','english_us','prefs','English (US)','2005-08-07 06:31:26'),(227,'en-us','errors_during_install','setup','There were {num} errors during the installation. You can ask for help in the Textpattern forums.','2005-09-05 08:34:09'),(228,'en-us','error_adding_new_author','admin','Error adding new author','2005-07-06 13:39:09'),(229,'en-us','es-es','public','Español','2005-08-07 06:34:03'),(230,'en-us','et-ee','public','Eesti','2005-08-07 06:34:03'),(231,'en-us','excerpt','public','Excerpt','2005-08-07 06:34:03'),(232,'en-us','existing_file','file','Existing file:','2005-07-06 13:39:09'),(233,'en-us','experts_only','public','experts only','2005-08-07 06:34:03'),(234,'en-us','expire_logs_after','prefs','Expire logs after','2005-08-07 06:31:26'),(235,'en-us','extensions','public','Extensions','2005-08-07 06:34:03'),(236,'en-us','fi-fi','public','Suomi','2005-09-05 08:34:09'),(237,'en-us','file','file','File','2005-07-06 13:39:09'),(238,'en-us','file_already_exists','file','already exists','2005-07-06 13:39:09'),(239,'en-us','file_base_path','prefs','File Upload Path','2005-08-07 06:31:26'),(240,'en-us','file_category','file','File Category','2005-07-06 13:39:09'),(241,'en-us','file_category_name','category','File Category name','2005-07-06 13:39:09'),(242,'en-us','file_category_title','category','File Category title','2005-07-06 13:39:09'),(243,'en-us','file_delete_failed','file','Failed to delete file','2005-07-06 13:39:09'),(244,'en-us','file_download_count','file','Download Count','2005-07-06 13:39:09'),(245,'en-us','file_download_tags','tag','File downloads','2005-07-06 13:39:09'),(246,'en-us','file_head','category','File Categories','2005-07-06 13:39:09'),(247,'en-us','file_max_upload_size','common','Max Upload File Size (bytes)','2005-08-07 06:35:05'),(248,'en-us','file_name','file','Filename','2005-07-06 13:39:09'),(249,'en-us','file_not_found','file','File not found','2005-07-06 13:39:09'),(250,'en-us','file_relink','file','Upload/Assign File','2005-07-06 13:39:09'),(251,'en-us','file_status','file','File Status','2005-07-06 13:39:09'),(252,'en-us','file_status_missing','file','Missing','2005-07-06 13:39:09'),(253,'en-us','file_status_ok','file','Ok','2005-07-06 13:39:09'),(254,'en-us','file_uploads_disabled','diag','File uploads are disabled','2005-08-07 06:34:29'),(255,'en-us','file_upload_failed','file','Failed to upload file','2005-07-06 13:39:09'),(256,'en-us','finnish','prefs','Finnish','2005-08-07 06:31:26'),(257,'en-us','flavour','tag','Flavor','2005-07-06 13:39:09'),(258,'en-us','forget','public','Forget','2005-08-07 06:34:03'),(259,'en-us','form','public','Form','2005-08-07 06:34:03'),(260,'en-us','forms','public','Forms','2005-08-07 06:34:03'),(261,'en-us','form_name','form','Form name (required)','2005-07-06 13:39:09'),(262,'en-us','form_type','form','Form type (required)','2005-07-06 13:39:09'),(263,'en-us','fr-fr','public','Français','2005-08-07 06:34:03'),(264,'en-us','freelancer','admin','Freelancer','2005-07-06 13:39:09'),(265,'en-us','french','prefs','Français','2005-08-07 06:31:26'),(266,'en-us','from_file','prefs','Install from file','2005-08-07 06:31:26'),(267,'en-us','from_server','prefs','Install from remote server','2005-08-07 06:31:26'),(268,'en-us','full_path_to_txp','setup','Full server path to Textpattern','2005-09-05 08:34:09'),(269,'en-us','gmtoffset','prefs','Time Zone','2005-08-07 06:31:26'),(270,'en-us','go','public','go','2005-08-07 06:34:03'),(271,'en-us','go_to','public','Go to','2005-08-07 06:34:03'),(272,'en-us','greeting','admin','Dear','2005-07-06 13:39:09'),(273,'en-us','has_excerpt','tag','Has excerpt','2005-07-06 13:39:09'),(274,'en-us','header','public','header','2005-08-07 06:34:03'),(275,'en-us','hidden','common','Hidden','2005-08-07 06:35:05'),(276,'en-us','hide_comment','discuss','Hide comment','2005-07-06 13:39:09'),(277,'en-us','high','diag','high','2005-08-07 06:34:29'),(278,'en-us','host','public','Host','2005-08-07 06:34:03'),(279,'en-us','hour','public','hour','2005-08-07 06:34:03'),(280,'en-us','hours','public','hours','2005-08-07 06:34:03'),(281,'en-us','hr','public','horizontal rule','2005-08-07 06:34:03'),(282,'en-us','htaccess_contents','diag','.htaccess file contents','2005-08-07 06:34:29'),(283,'en-us','htaccess_missing','diag','.htaccess file is missing','2005-08-07 06:34:29'),(284,'en-us','HTML','public','HTML','2005-08-07 06:34:03'),(285,'en-us','hyperlink','public','hyperlink','2005-08-07 06:34:03'),(286,'en-us','id-id','public','Bahasa Indonesia','2006-01-14 09:14:50'),(287,'en-us','id_title','prefs','/id/title','2005-08-07 06:31:26'),(288,'en-us','image','public','image','2005-08-07 06:34:03'),(289,'en-us','imageurl','public','imageurl','2005-08-07 06:34:03'),(290,'en-us','image_category','common','Category','2005-08-07 06:35:05'),(291,'en-us','image_category_name','category','Image Category name','2005-07-06 13:39:09'),(292,'en-us','image_category_title','category','Image category title','2005-07-06 13:39:09'),(293,'en-us','image_head','category','Image Categories','2005-07-06 13:39:09'),(294,'en-us','image_name','image','Image name','2005-08-07 06:37:02'),(295,'en-us','image_save_error','image','there was a problem saving image data','2005-09-27 11:36:42'),(296,'en-us','img_dir','prefs','Image directory','2005-08-07 06:31:26'),(297,'en-us','img_dir_not_writeable','image','Warning: cannot write to image directory<br /> {imgdir}. <br />Please change file permissions to 777.','2005-08-07 06:37:02'),(298,'en-us','img_dir_read_only','diag','Image directory is read-only','2005-08-07 06:34:29'),(299,'en-us','import_blogid','import','Weblog ID','2005-07-06 13:39:09'),(300,'en-us','import_database','import','Database name','2005-07-06 13:39:09'),(301,'en-us','import_file_not_found','import','Import file not found. <br />Please name the file import.txt and place it in /textpattern/include/import/','2005-07-06 13:39:09'),(302,'en-us','import_host','import','Mysql host','2005-07-06 13:39:09'),(303,'en-us','import_invite','import','Default comments invite','2005-07-06 13:39:09'),(304,'en-us','import_login','import','Mysql user','2005-07-06 13:39:09'),(305,'en-us','import_password','import','Mysql password','2005-07-06 13:39:09'),(306,'en-us','import_section','import','Section to import into','2005-07-06 13:39:09'),(307,'en-us','import_status','import','Default article status','2005-07-06 13:39:09'),(308,'en-us','import_wpprefix','import','Tables prefix (if any)','2005-07-06 13:39:09'),(309,'en-us','include_email_atom','prefs','Include email in atom feeds?','2005-08-07 06:31:26'),(310,'en-us','include_in_search','section','Include in site search','2005-07-06 13:39:09'),(311,'en-us','input_size','tag','Input size','2005-07-06 13:39:09'),(312,'en-us','inserted_text','public','inserted text','2005-08-07 06:34:03'),(313,'en-us','install','plugin','Install','2005-07-06 13:39:09'),(314,'en-us','install_langfile','prefs','Install language','2005-08-07 06:31:26'),(315,'en-us','install_language','prefs','Install language','2005-08-07 06:31:26'),(316,'en-us','install_plugin','plugin','Install plugin','2005-07-06 13:39:09'),(317,'en-us','invalid_filename','file','Invalid filename','2005-07-06 13:39:09'),(318,'en-us','invalid_id','file','Invalid ID','2005-07-06 13:39:09'),(319,'en-us','invalid_width_or_height','image','Invalid width or height','2005-08-07 06:37:02'),(320,'en-us','is-is','public','Íslenska(Icelandic)','2005-09-05 08:34:09'),(321,'en-us','is_dst','prefs','Daylight Savings','2005-08-07 06:31:26'),(322,'en-us','is_inaccessible','diag','is inaccessible','2005-08-07 06:34:29'),(323,'en-us','it-it','public','Italiano','2005-08-07 06:34:03'),(324,'en-us','ja-jp','public','日本語','2005-08-07 06:34:03'),(325,'en-us','keep_square_pixels','image','Crop','2005-08-07 06:37:02'),(326,'en-us','keywords','public','Keywords','2005-08-07 06:34:03'),(327,'en-us','label','public','Label','2005-08-07 06:34:03'),(328,'en-us','labeltag','tag','HTML tag for label','2005-09-29 11:53:42'),(329,'en-us','language','prefs','Language','2005-08-07 06:31:26'),(330,'en-us','last_modification','public','Last Modification','2005-08-07 06:34:03'),(331,'en-us','leave_text_untouched','prefs','Leave text untouched','2005-08-07 06:31:26'),(332,'en-us','limit','tag','Limit','2005-07-06 13:39:09'),(333,'en-us','linebreak','public','line break','2005-08-07 06:34:03'),(334,'en-us','linkcategory','link','Link Categories','2005-07-06 13:39:09'),(335,'en-us','linked_to_file','file','Linked record to file','2005-07-06 13:39:09'),(336,'en-us','links','link','Links','2005-07-06 13:39:09'),(337,'en-us','linktext','link','linktext','2005-07-06 13:39:09'),(338,'en-us','link_category','common','Link category','2005-08-07 06:35:05'),(339,'en-us','link_category_name','category','Link Category name','2005-07-06 13:39:09'),(340,'en-us','link_category_title','category','Link Category title','2005-07-06 13:39:09'),(341,'en-us','link_head','category','Link Categories','2005-07-06 13:39:09'),(342,'en-us','link_name','link','Link Name','2005-07-06 13:39:09'),(343,'en-us','link_saved','link','Link saved','2005-07-06 13:39:09'),(344,'en-us','link_text','link','Link text','2005-07-06 13:39:09'),(345,'en-us','link_to_this_author','tag','Link to a list of other articles by this author?','2005-07-06 13:39:09'),(346,'en-us','link_to_this_category','tag','Link to a list of other articles in this category?','2005-07-06 13:39:09'),(347,'en-us','link_to_this_section','tag','Link to a list of other articles in this section?','2005-07-06 13:39:09'),(348,'en-us','list','public','List','2005-08-07 06:34:03'),(349,'en-us','listform','tag','List form','2005-07-06 13:39:09'),(350,'en-us','list_articles','public','List Articles','2005-08-07 06:34:03'),(351,'en-us','list_banned_ips','discuss','List banned IPs','2005-07-06 13:39:09'),(352,'en-us','list_categories','public','list categories','2005-08-07 06:34:03'),(353,'en-us','list_discussions','public','list comments','2005-08-07 06:34:03'),(354,'en-us','list_forms','form','list forms','2005-07-06 13:39:09'),(355,'en-us','list_links','public','list links','2005-08-07 06:34:03'),(356,'en-us','live','public','Live','2005-08-07 06:34:03'),(357,'en-us','locale','prefs','Locale','2005-08-07 06:31:26'),(358,'en-us','logged_in_as','common','Logged in as','2005-08-07 06:35:05'),(359,'en-us','logging','prefs','Logging','2005-08-07 06:31:26'),(360,'en-us','login_name','common','Login','2005-08-07 06:35:05'),(361,'en-us','login_to_textpattern','common','Log in to Textpattern','2005-08-07 06:35:05'),(362,'en-us','logout','common','Log out','2005-08-07 06:35:05'),(363,'en-us','logs','log','Logs','2005-07-06 13:39:09'),(364,'en-us','logs_expire','prefs','Expire logs after','2005-08-07 06:31:26'),(365,'en-us','log_in','common','log in','2005-08-07 06:35:05'),(366,'en-us','log_in_at','admin','Login at','2005-07-06 13:39:09'),(367,'en-us','log_in_button','common','Log in','2005-08-07 06:35:05'),(368,'en-us','low','diag','low','2005-08-07 06:34:29'),(369,'en-us','lowercase','public','lowercase','2005-08-07 06:34:03'),(370,'en-us','lv-lv','public','Latviešu','2005-09-28 09:54:19'),(371,'en-us','magic_quotes','diag','Magic quotes','2005-08-07 06:34:29'),(372,'en-us','mail_it','admin','Mail it to me','2005-07-06 13:39:09'),(373,'en-us','manage_languages','prefs','Manage languages','2005-08-07 06:31:26'),(374,'en-us','managing_editor','admin','Managing Editor','2005-07-06 13:39:09'),(375,'en-us','manual','public','Manual','2005-08-07 06:34:03'),(376,'en-us','max_url_len','prefs','Max URL length','2005-08-07 06:31:26'),(377,'en-us','mentions','prefs','Mentions','2005-08-07 06:31:26'),(378,'en-us','message','public','Message','2005-08-07 06:34:03'),(379,'en-us','message_deleted','public','Message deleted','2005-08-07 06:34:03'),(380,'en-us','message_preview','public','Message Preview','2005-08-07 06:34:03'),(381,'en-us','message_saved','public','Message saved','2005-08-07 06:34:03'),(382,'en-us','messy','prefs','?=messy','2005-08-07 06:31:26'),(383,'en-us','minute','public','minute','2005-08-07 06:34:03'),(384,'en-us','minutes','public','minutes','2005-08-07 06:34:03'),(385,'en-us','missing_files','diag','Missing files','2005-08-07 06:34:29'),(386,'en-us','modified','common','modified','2005-10-03 14:33:51'),(387,'en-us','modified_by','public','Last modified by','2005-08-07 06:34:03'),(388,'en-us','mod_rewrite_missing','diag','Apache module mod_rewrite is not installed','2005-08-07 06:34:29'),(389,'en-us','month','public','Month','2005-08-07 06:34:03'),(390,'en-us','more','public','More','2005-08-07 06:34:03'),(391,'en-us','mysql_database','setup','MySQL database','2005-09-05 08:34:09'),(392,'en-us','mysql_login','setup','MySQL login','2005-09-05 08:34:09'),(393,'en-us','mysql_password','setup','MySQL password','2005-09-05 08:34:09'),(394,'en-us','mysql_server','setup','MySQL server','2005-09-05 08:34:09'),(395,'en-us','my_site','setup','My Site','2005-09-05 08:34:09'),(396,'en-us','my_slogan','setup','My pithy slogan','2005-09-05 08:34:09'),(397,'en-us','name','public','name','2005-08-07 06:34:03'),(398,'en-us','name_for_this_style','css','Name for this style','2005-07-06 13:39:09'),(399,'en-us','need_details','setup','Inevitably, we need a few details','2005-09-05 08:34:09'),(400,'en-us','never','public','never','2005-08-07 06:34:03'),(401,'en-us','never_display_email','prefs','Never display email?','2005-08-07 06:31:26'),(402,'en-us','newer','tag','newer','2005-07-06 13:39:09'),(403,'en-us','new_email','admin','New email','2005-07-06 13:39:09'),(404,'en-us','new_password','admin','New password','2005-07-06 13:39:09'),(405,'en-us','new_textpattern_version_available','prefs','There is a completely new Textpattern version available. Do you want to try it?','2005-08-07 06:31:26'),(406,'en-us','next','public','next','2005-08-07 06:34:03'),(407,'en-us','next_page_link','tag','Next page link','2005-07-06 13:39:09'),(408,'en-us','nl-nl','public','Nederlands','2005-08-07 06:34:03'),(409,'en-us','no','public','no','2005-08-07 06:34:03'),(410,'en-us','no-no','public','Norsk','2005-08-07 06:34:03'),(411,'en-us','none','public','None','2005-08-07 06:34:03'),(412,'en-us','nopopup','public','nopopup','2005-08-07 06:34:03'),(413,'en-us','norwegian','prefs','Norsk','2005-08-07 06:31:26'),(414,'en-us','not_saved','image','<strong>not</strong> saved!','2005-08-07 06:37:02'),(415,'en-us','no_comments_recorded','discuss','No comments recorded yet','2005-07-06 13:39:09'),(416,'en-us','no_ips_banned','discuss','No IPs have been banned','2005-07-06 13:39:09'),(417,'en-us','no_popup','prefs','current window','2005-08-07 06:31:26'),(418,'en-us','no_refers_recorded','log','No referrers recorded yet','2005-07-06 13:39:09'),(419,'en-us','numeric_list','public','Numeric list','2005-08-07 06:34:03'),(420,'en-us','off','public','off','2005-08-07 06:34:03'),(421,'en-us','older','public','older','2005-08-07 06:34:03'),(422,'en-us','old_placeholder','diag','Old placeholder file is in the way','2005-08-07 06:34:29'),(423,'en-us','old_plugin','plugin','Old-style (text file) plugin installer','2005-07-06 13:39:09'),(424,'en-us','on','public','on','2005-08-07 06:34:03'),(425,'en-us','only_articles_can_be_previewed','public','NB: only article forms can be previewed.','2005-08-07 06:34:03'),(426,'en-us','only_graphic_files_allowed','image',' .jpg, .gif, .png or .swf graphic files allowed','2005-08-07 06:37:02'),(427,'en-us','on_front_page','section','On front page','2005-07-06 13:39:09'),(428,'en-us','or_publish_at','article','or publish at','2005-08-07 06:35:43'),(429,'en-us','override_default_form','article','Override form','2005-08-07 06:35:43'),(430,'en-us','override_emailcharset','prefs','Use ISO-8859-1 for e-mails? (default is utf-8)','2005-08-07 06:31:26'),(431,'en-us','page','public','Page','2005-08-07 06:34:03'),(432,'en-us','pages','public','Pages','2005-08-07 06:34:03'),(433,'en-us','page_article_hed','page','Article output','2005-07-06 13:39:09'),(434,'en-us','page_article_nav_hed','page','Article navigation','2005-07-06 13:39:09'),(435,'en-us','page_file_hed','tag','File downloads','2005-07-06 13:39:09'),(436,'en-us','page_misc_hed','page','Miscellaneous','2005-07-06 13:39:09'),(437,'en-us','page_mode','prefs','Page mode','2005-08-07 06:31:26'),(438,'en-us','page_nav_hed','page','Site navigation','2005-07-06 13:39:09'),(439,'en-us','page_xml_hed','page','XML feeds','2005-07-06 13:39:09'),(440,'en-us','paragraph','public','paragraph','2005-08-07 06:34:03'),(441,'en-us','parent','category','Parent','2005-07-06 13:39:09'),(442,'en-us','password','common','password','2005-08-07 06:35:05'),(443,'en-us','password_changed','admin','Password changed','2005-07-06 13:39:09'),(444,'en-us','password_sent_to','admin','Password sent to','2005-07-06 13:39:09'),(445,'en-us','path_from_root','prefs','Subdirectory (if any)','2005-08-07 06:31:26'),(446,'en-us','path_to_site_inacc','diag','path_to_site is inaccessible','2005-08-07 06:34:29'),(447,'en-us','path_to_site_missing','prefs','$path_to_site is not set (update index.php)','2005-08-07 06:31:26'),(448,'en-us','pending','article','Pending','2005-08-07 06:35:43'),(449,'en-us','permalink_title_format','prefs','Permalink title format','2005-08-07 06:31:26'),(450,'en-us','permanent_link','public','Permanent link to this article','2005-08-07 06:34:03'),(451,'en-us','permissions','file','Permissions','2005-07-06 13:39:09'),(452,'en-us','permlink','public','Permanent link','2005-08-07 06:34:03'),(453,'en-us','permlink_mode','prefs','Permanent link mode','2005-08-07 06:31:26'),(454,'en-us','per_page','common','per page','2005-08-07 06:35:05'),(455,'en-us','php_extensions','diag','PHP extensions','2005-08-07 06:34:29'),(456,'en-us','php_version','diag','PHP version','2005-08-07 06:34:29'),(457,'en-us','ping_textpattern_com','prefs','Ping textpattern.com?','2005-08-07 06:31:26'),(458,'en-us','ping_weblogsdotcom','prefs','Update Ping-o-matic','2005-08-07 06:31:26'),(459,'en-us','pl-pl','public','Polski','2005-10-13 11:29:47'),(460,'en-us','please_enter_url','setup','Please enter the web-reachable address of your site','2005-09-05 08:34:09'),(461,'en-us','plugin','plugin','Plugin','2005-07-06 13:39:09'),(462,'en-us','plugins','plugin','Plugins','2005-07-06 13:39:09'),(463,'en-us','plugin_help','plugin','Plugin help','2005-07-06 13:39:09'),(464,'en-us','plugin_load_error','public','A problem occured while loading the plugin:','2005-08-07 06:34:03'),(465,'en-us','plugin_load_error_above','public','The above errors were caused by the plugin:','2005-08-07 06:34:03'),(466,'en-us','polish','prefs','Polish','2005-08-07 06:31:26'),(467,'en-us','popup','public','popup','2005-08-07 06:34:03'),(468,'en-us','portuguese','prefs','Portuguese','2005-08-07 06:31:26'),(469,'en-us','post','public','Post','2005-08-07 06:34:03'),(470,'en-us','posted','public','Posted','2005-08-07 06:34:03'),(471,'en-us','posted_by','public','Posted by','2005-08-07 06:34:03'),(472,'en-us','preferences_saved','prefs','Preferences saved','2005-08-07 06:31:26'),(473,'en-us','prefix_bad_characters','setup','The table prefix {dbprefix} contains characters that are not allowed.<br /> The first character must match one of <b>a-zA-Z_</b> and all following characters must match one of <b>a-zA-Z0-9_</b>','2005-09-05 08:34:09'),(474,'en-us','prefix_warning','setup','(Use ONLY if you require multiple installations in one database)','2005-09-05 08:34:09'),(475,'en-us','preflight_check','diag','Pre-flight check','2005-08-07 06:34:29'),(476,'en-us','prefs','prefs','Prefs','2005-08-07 06:31:26'),(477,'en-us','prev','public','prev','2005-08-07 06:34:03'),(478,'en-us','preview','public','preview','2005-08-07 06:34:03'),(479,'en-us','previewing_plugin','plugin','Previewing plugin:','2005-07-06 13:39:09'),(480,'en-us','private','file','Private','2005-07-06 13:39:09'),(481,'en-us','privileges','admin','Privileges','2005-07-06 13:39:09'),(482,'en-us','problem_connecting_rpc_server','prefs','There is a problem trying to connect to the RPC server. Please, try again later.','2005-08-07 06:31:26'),(483,'en-us','production_debug','prefs','Debugging','2005-08-07 06:31:26'),(484,'en-us','production_live','prefs','Live','2005-08-07 06:31:26'),(485,'en-us','production_status','prefs','Production Status','2005-08-07 06:31:26'),(486,'en-us','production_test','prefs','Testing','2005-08-07 06:31:26'),(487,'en-us','property','css','Property','2005-07-06 13:39:09'),(488,'en-us','pt-pt','public','Português','2005-08-07 06:34:03'),(489,'en-us','public','file','Public','2005-07-06 13:39:09'),(490,'en-us','publish','public','Publish','2005-08-07 06:34:03'),(491,'en-us','published_at','public','Published at','2005-08-07 06:34:03'),(492,'en-us','publisher','admin','Publisher','2005-07-06 13:39:09'),(493,'en-us','range','common','Range','2005-08-07 06:35:05'),(494,'en-us','real_name','admin','Real Name','2005-07-06 13:39:09'),(495,'en-us','recently','public','Recently','2005-08-07 06:34:03'),(496,'en-us','recent_articles','public','Recent Articles','2005-08-07 06:34:03'),(497,'en-us','recent_posts','public','Recent Posts','2005-08-07 06:34:03'),(498,'en-us','record_mentions','prefs','Record mentions','2005-08-07 06:31:26'),(499,'en-us','referrer','log','Referrer','2005-07-06 13:39:09'),(500,'en-us','referrers_only','prefs','Referrers only','2005-08-07 06:31:26'),(501,'en-us','register_globals','diag','Register globals','2005-08-07 06:34:29'),(502,'en-us','remember','public','Remember','2005-08-07 06:34:03'),(503,'en-us','replace_image','image','Replace image','2005-08-07 06:37:02'),(504,'en-us','reset','file','reset','2005-07-06 13:39:09'),(505,'en-us','reset_author_password','admin','Reset author password','2005-07-06 13:39:09'),(506,'en-us','reset_file_count_failure','file','Failed to reset file count','2005-07-06 13:39:09'),(507,'en-us','reset_file_count_success','file','Successfully reset file count','2005-07-06 13:39:09'),(508,'en-us','reset_time','article','Reset time to now','2005-08-07 06:35:43'),(509,'en-us','restricted_area','common','Restricted area','2005-08-07 06:35:05'),(510,'en-us','revert','public','Revert','2005-08-07 06:34:03'),(511,'en-us','rpc_connect_error','prefs','Can\'t connect to remote server to check for updated language files. Please try again later.','2005-08-07 06:31:26'),(512,'en-us','rss_how_many','prefs','How many articles on RSS?','2005-08-07 06:31:26'),(513,'en-us','ru-ru','public','Русский','2005-08-07 06:34:03'),(514,'en-us','russian','prefs','Russian','2005-08-07 06:31:26'),(515,'en-us','save','public','Save','2005-08-07 06:34:03'),(516,'en-us','saved','public','saved','2005-08-07 06:34:03'),(517,'en-us','save_button','public','Save','2005-08-07 06:34:03'),(518,'en-us','save_css_as','css','Save style sheet as:','2005-07-06 13:39:09'),(519,'en-us','save_new','common','Save New','2005-08-07 06:35:05'),(520,'en-us','save_these_settings_as_default','image','Save settings as default','2005-08-07 06:37:02'),(521,'en-us','save_this_declaration','css','Save this declaration','2005-07-06 13:39:09'),(522,'en-us','save_this_selector','css','Save this selector','2005-07-06 13:39:09'),(523,'en-us','scots','prefs','Scots','2005-08-07 06:31:26'),(524,'en-us','search','public','Search','2005-08-07 06:34:03'),(525,'en-us','search_input_form','tag','Search input','2005-07-06 13:39:09'),(526,'en-us','search_results','public','Search results','2005-08-07 06:34:03'),(527,'en-us','search_results_form','tag','Search results','2005-07-06 13:39:09'),(528,'en-us','section','section','Section','2005-07-06 13:39:09'),(529,'en-us','sections','section','Sections','2005-07-06 13:39:09'),(530,'en-us','section_head','section','Site Sections','2005-07-06 13:39:09'),(531,'en-us','section_id_title','prefs','/section/id/title','2005-08-07 06:31:26'),(532,'en-us','section_longtitle','section','Section title','2005-07-06 13:39:09'),(533,'en-us','section_name','section','Section name','2005-07-06 13:39:09'),(534,'en-us','section_name_already_exists','section','Section name already exists','2005-07-06 13:39:09'),(535,'en-us','section_title','prefs','/section/title','2005-08-07 06:31:26'),(536,'en-us','select','public','select','2005-08-07 06:34:03'),(537,'en-us','selected','public','selected','2005-08-07 06:34:03'),(538,'en-us','selected_by_default','section','Selected by default','2005-07-06 13:39:09'),(539,'en-us','selector','css','Selector','2005-07-06 13:39:09'),(540,'en-us','select_tool','import','Import from','2005-07-06 13:39:09'),(541,'en-us','send_lastmod','prefs','Send Last-Modified header','2005-08-07 06:31:26'),(542,'en-us','server','diag','Server','2005-08-07 06:34:29'),(543,'en-us','setup_comment_invite','setup','Comment','2005-09-05 08:34:09'),(544,'en-us','setup_login','setup','Choose a login name (basic characters and spaces only please)','2005-09-05 08:34:09'),(545,'en-us','set_to_now','article','Set timestamp to now','2005-08-07 06:35:43'),(546,'en-us','show_article_category_count','prefs','Show article count on Categories?','2005-08-07 06:31:26'),(547,'en-us','show_comment_count_in_feed','prefs','Show comment count in feeds?','2005-08-07 06:31:26'),(548,'en-us','site','public','Site','2005-08-07 06:34:03'),(549,'en-us','sitename','public','Site name','2005-08-07 06:34:03'),(550,'en-us','siteurl','public','Site URL','2005-08-07 06:34:03'),(551,'en-us','site_administration','admin','Site Administration','2005-07-06 13:39:09'),(552,'en-us','site_path','setup','Site path','2005-09-05 08:34:09'),(553,'en-us','site_prefs','prefs','Site Preferences','2005-08-07 06:31:26'),(554,'en-us','site_slogan','public','Site tagline','2005-08-07 06:34:03'),(555,'en-us','site_trailing_slash','diag','Site URL has a trailing slash','2005-08-07 06:34:29'),(556,'en-us','site_url','setup','Site URL','2005-09-05 08:34:09'),(557,'en-us','sk-sk','public','Slovenčina','2005-08-07 06:34:03'),(558,'en-us','sort_by','tag','Sort by','2005-07-06 13:39:09'),(559,'en-us','sort_direction','tag','Sort direction','2005-07-06 13:39:09'),(560,'en-us','sort_value','common','Sort Value','2005-08-07 06:35:05'),(561,'en-us','spam_blacklists','prefs','Spam blacklists (comma separated)','2005-08-07 06:31:26'),(562,'en-us','spanish','prefs','Español','2005-08-07 06:31:26'),(563,'en-us','staff_writer','admin','Staff writer','2005-07-06 13:39:09'),(564,'en-us','status','public','Status','2005-08-07 06:34:03'),(565,'en-us','stay_logged_in','common','Remain logged in with this browser','2005-08-07 06:35:05'),(566,'en-us','sticky','common','Sticky','2005-08-07 06:35:05'),(567,'en-us','still_exists','diag','still exists','2005-08-07 06:34:29'),(568,'en-us','strong','public','strong','2005-08-07 06:34:03'),(569,'en-us','structure','common','Structure','2005-08-07 06:35:05'),(570,'en-us','style','section','Style','2005-07-06 13:39:09'),(571,'en-us','style_sheet','css','Style sheet','2005-07-06 13:39:09'),(572,'en-us','style_sheet_saved','css','Style sheet saved','2005-07-06 13:39:09'),(573,'en-us','submit','public','Submit','2005-08-07 06:34:03'),(574,'en-us','subscript','public','subscript','2005-08-07 06:34:03'),(575,'en-us','superscript','public','superscript','2005-08-07 06:34:03'),(576,'en-us','sv-se','public','Svenska','2005-08-07 06:34:03'),(577,'en-us','swedish','prefs','Swedish','2005-08-07 06:31:26'),(578,'en-us','syndicate','public','Syndicate','2005-08-07 06:34:03'),(579,'en-us','syndicate_body_or_excerpt','prefs','Syndicate body or excerpt','2005-08-07 06:31:26'),(580,'en-us','table_prefix','setup','Table prefix','2005-09-05 08:34:09'),(581,'en-us','tab_admin','common','admin','2005-08-07 06:35:05'),(582,'en-us','tab_comments','common','comments','2005-08-07 06:35:05'),(583,'en-us','tab_content','common','content','2005-08-07 06:35:05'),(584,'en-us','tab_diagnostics','common','diagnostics','2005-08-07 06:35:05'),(585,'en-us','tab_extensions','common','extensions','2005-08-07 06:35:05'),(586,'en-us','tab_file','common','files','2005-08-07 06:35:05'),(587,'en-us','tab_forms','common','forms','2005-08-07 06:35:05'),(588,'en-us','tab_image','common','images','2005-08-07 06:35:05'),(589,'en-us','tab_import','common','import','2005-08-07 06:35:05'),(590,'en-us','tab_link','common','links','2005-08-07 06:35:05'),(591,'en-us','tab_list','common','articles','2005-08-07 06:35:05'),(592,'en-us','tab_logs','common','logs','2005-08-07 06:35:05'),(593,'en-us','tab_organise','common','organize','2005-08-07 06:35:05'),(594,'en-us','tab_pages','common','pages','2005-08-07 06:35:05'),(595,'en-us','tab_plugins','common','plugins','2005-08-07 06:35:05'),(596,'en-us','tab_preferences','common','preferences','2005-08-07 06:35:05'),(597,'en-us','tab_presentation','common','presentation','2005-08-07 06:35:05'),(598,'en-us','tab_sections','common','sections','2005-08-07 06:35:05'),(599,'en-us','tab_site_admin','common','site admin','2005-08-07 06:35:05'),(600,'en-us','tab_style','common','style','2005-08-07 06:35:05'),(601,'en-us','tab_view_site','common','view site','2005-08-07 06:35:05'),(602,'en-us','tab_write','common','write','2005-08-07 06:35:05'),(603,'en-us','tag','tag','Tag','2005-07-06 13:39:09'),(604,'en-us','tagalog','prefs','Tagalog','2005-08-07 06:31:26'),(605,'en-us','tags','tag','Tags','2005-07-06 13:39:09'),(606,'en-us','tag_article','tag','Articles (single or list)','2005-07-06 13:39:09'),(607,'en-us','tag_article_custom','tag','Articles (custom list)','2005-07-06 13:39:09'),(608,'en-us','tag_article_image','tag','Article image','2005-07-06 13:39:09'),(609,'en-us','tag_author','tag','Author','2005-07-06 13:39:09'),(610,'en-us','tag_body','tag','Body','2005-07-06 13:39:09'),(611,'en-us','tag_body_excerpt','tag','Body excerpt','2005-07-06 13:39:09'),(612,'en-us','tag_breadcrumb','tag','Breadcrumb','2005-07-06 13:39:09'),(613,'en-us','tag_category1','tag','Category 1','2005-07-06 13:39:09'),(614,'en-us','tag_category2','tag','Category 2','2005-07-06 13:39:09'),(615,'en-us','tag_category_list','tag','Category list','2005-07-06 13:39:09'),(616,'en-us','tag_comments_invite','tag','Comments invite','2005-07-06 13:39:09'),(617,'en-us','tag_comment_email_input','tag','Email input','2005-07-06 13:39:09'),(618,'en-us','tag_comment_message_input','tag','Message input','2005-07-06 13:39:09'),(619,'en-us','tag_comment_name','tag','Comment name','2005-07-06 13:39:09'),(620,'en-us','tag_comment_name_input','tag','Name input','2005-07-06 13:39:09'),(621,'en-us','tag_comment_permlink','tag','Permanent link','2005-07-06 13:39:09'),(622,'en-us','tag_comment_preview','tag','Preview button','2005-07-06 13:39:09'),(623,'en-us','tag_comment_remember','tag','Remember details checkbox','2005-07-06 13:39:09'),(624,'en-us','tag_comment_submit','tag','Submit button','2005-07-06 13:39:09'),(625,'en-us','tag_comment_time','tag','Time','2005-07-06 13:39:09'),(626,'en-us','tag_comment_web_input','tag','Web input','2005-07-06 13:39:09'),(627,'en-us','tag_css','tag','CSS link (head)','2005-07-06 13:39:09'),(628,'en-us','tag_email','tag','Email link (spam-proof)','2005-07-06 13:39:09'),(629,'en-us','tag_excerpt','tag','Excerpt','2005-07-06 13:39:09'),(630,'en-us','tag_feed_link','tag','Feed to articles','2005-07-06 13:39:09'),(631,'en-us','tag_file_download','tag','File download form','2005-07-06 13:39:09'),(632,'en-us','tag_file_download_category','tag','Category','2005-07-06 13:39:09'),(633,'en-us','tag_file_download_created','tag','Created time','2005-07-06 13:39:09'),(634,'en-us','tag_file_download_downloads','tag','Download count','2005-07-06 13:39:09'),(635,'en-us','tag_file_download_id','tag','ID','2005-07-06 13:39:09'),(636,'en-us','tag_file_download_link','tag','Link','2005-07-06 13:39:09'),(637,'en-us','tag_file_download_list','tag','File list','2005-07-06 13:39:09'),(638,'en-us','tag_file_download_modified','tag','Modified time','2005-07-06 13:39:09'),(639,'en-us','tag_file_download_name','tag','Name','2005-07-06 13:39:09'),(640,'en-us','tag_file_download_size','tag','Size','2005-07-06 13:39:09'),(641,'en-us','tag_home','tag','Home','2005-07-06 13:39:09'),(642,'en-us','tag_inline_','tag','Inline at end','2005-07-06 13:39:09'),(643,'en-us','tag_lang','tag','Language','2005-07-06 13:39:09'),(644,'en-us','tag_link','tag','Link only','2005-07-06 13:39:09'),(645,'en-us','tag_linkdesctitle','tag','Link, title=Description','2005-07-06 13:39:09'),(646,'en-us','tag_linklist','tag','List of links','2005-07-06 13:39:09'),(647,'en-us','tag_link_description','tag','Description only','2005-07-06 13:39:09'),(648,'en-us','tag_link_feed_link','tag','Feed to links','2005-07-06 13:39:09'),(649,'en-us','tag_link_text','tag','Link text only','2005-07-06 13:39:09'),(650,'en-us','tag_link_to_home','tag','Link to home page','2005-07-06 13:39:09'),(651,'en-us','tag_link_to_next','tag','Link to next article','2005-07-06 13:39:09'),(652,'en-us','tag_link_to_prev','tag','Link to previous article','2005-07-06 13:39:09'),(653,'en-us','tag_message','tag','Message','2005-07-06 13:39:09'),(654,'en-us','tag_name','tag','Commenter name','2005-07-06 13:39:09'),(655,'en-us','tag_newer','tag','Link to newer articles','2005-07-06 13:39:09'),(656,'en-us','tag_next_article','tag','Next article','2005-07-06 13:39:09'),(657,'en-us','tag_next_title','tag','Next article title','2005-07-06 13:39:09'),(658,'en-us','tag_older','tag','Link to older articles','2005-07-06 13:39:09'),(659,'en-us','tag_output_form','tag','Output form','2005-07-06 13:39:09'),(660,'en-us','tag_page_title','tag','Page title','2005-07-06 13:39:09'),(661,'en-us','tag_paging_link','tag','Next page link','2005-07-06 13:39:09'),(662,'en-us','tag_password_protect','tag','Password protection','2005-07-06 13:39:09'),(663,'en-us','tag_permlink','tag','Permanent link','2005-07-06 13:39:09'),(664,'en-us','tag_popup','tag','Popup list','2005-07-06 13:39:09'),(665,'en-us','tag_posted','tag','Posted','2005-07-06 13:39:09'),(666,'en-us','tag_prev_article','tag','Previous article','2005-07-06 13:39:09'),(667,'en-us','tag_prev_title','tag','Previous article title','2005-07-06 13:39:09'),(668,'en-us','tag_recent_articles','tag','Recent articles','2005-07-06 13:39:09'),(669,'en-us','tag_recent_comments','tag','Recent comments','2005-07-06 13:39:09'),(670,'en-us','tag_related_articles','tag','Related articles','2005-07-06 13:39:09'),(671,'en-us','tag_search_input','tag','Search input form','2005-07-06 13:39:09'),(672,'en-us','tag_search_result_date','tag','Result date','2005-07-06 13:39:09'),(673,'en-us','tag_search_result_excerpt','tag','Result excerpt','2005-07-06 13:39:09'),(674,'en-us','tag_search_result_title','tag','Result title','2005-07-06 13:39:09'),(675,'en-us','tag_search_result_url','tag','Result URL','2005-07-06 13:39:09'),(676,'en-us','tag_section','tag','Section','2005-07-06 13:39:09'),(677,'en-us','tag_sitename','tag','Site name','2005-07-06 13:39:09'),(678,'en-us','tag_site_slogan','tag','Site tagline','2005-07-06 13:39:09'),(679,'en-us','tag_title','tag','Title','2005-07-06 13:39:09'),(680,'en-us','tag__inline','tag','Inline at beginning','2005-07-06 13:39:09'),(681,'en-us','tempdir','prefs','Temp folder','2005-08-07 06:31:26'),(682,'en-us','textile_help','public','Textile Help','2005-08-07 06:34:03'),(683,'en-us','textile_links','prefs','Textile links description by default?','2005-08-07 06:31:26'),(684,'en-us','text_conversion','public','Text conversion','2005-08-07 06:34:03'),(685,'en-us','text_handling','public','Text handling','2005-08-07 06:34:03'),(686,'en-us','text_or_tag','tag','* text or tag here *','2005-07-06 13:39:09'),(687,'en-us','th-th','public','ไทย','2005-08-07 06:34:03'),(688,'en-us','thai','prefs','Thai','2005-08-07 06:31:26'),(689,'en-us','thanks','setup','Thank you.','2005-09-05 08:34:09'),(690,'en-us','thanks_for_interest','setup','Thank you for your interest in Textpattern.','2005-09-05 08:34:09'),(691,'en-us','that_went_well','setup','That went well. Database tables were created and populated.','2005-09-05 08:34:09'),(692,'en-us','thumbnail','common','Thumb','2005-08-07 06:35:05'),(693,'en-us','thumb_height','image','Height','2005-08-07 06:37:02'),(694,'en-us','thumb_width','image','Width','2005-08-07 06:37:02'),(695,'en-us','time','public','Time','2005-08-07 06:34:03'),(696,'en-us','timeoffset','prefs','Time offset (hours)','2005-08-07 06:31:26'),(697,'en-us','title','public','Title','2005-08-07 06:34:03'),(698,'en-us','title_body','common','Title & Body','2005-08-07 06:35:06'),(699,'en-us','title_only','prefs','/title','2005-08-07 06:31:26'),(700,'en-us','title_separator','tag','Sitename: Individual Article separator','2005-07-06 13:39:09'),(701,'en-us','tooltip','public','Link tooltip','2005-08-07 06:34:03'),(702,'en-us','txp_import','import','Import content from other publishing tools','2005-07-06 13:39:09'),(703,'en-us','txp_path','diag','Textpattern path','2005-08-07 06:34:29'),(704,'en-us','txp_version','diag','Textpattern version','2005-08-07 06:34:29'),(705,'en-us','type','public','Type','2005-08-07 06:34:03'),(706,'en-us','unban','discuss','Unban','2005-07-06 13:39:09'),(707,'en-us','undefined','public','Undefined','2005-08-07 06:34:03'),(708,'en-us','unknown_section','public','Unknown section','2005-08-07 06:34:03'),(709,'en-us','untitled','public','Untitled','2005-08-07 06:34:03'),(710,'en-us','updated','public','updated','2005-08-07 06:34:03'),(711,'en-us','updated_branch_version_available','prefs','There is an updated version of this Textpattern branch available.','2005-08-07 06:31:26'),(712,'en-us','update_languages','prefs','Update languages','2005-08-07 06:31:26'),(713,'en-us','upload','public','Upload','2005-08-07 06:34:03'),(714,'en-us','uploaded','public','uploaded','2005-08-07 06:34:03'),(715,'en-us','upload_category','image','Category','2005-08-07 06:37:02'),(716,'en-us','upload_dir_perms','image','directory permissions must be 777','2005-08-07 06:37:02'),(717,'en-us','upload_err_form_size','common','File exceeds the maximum size specified in textpattern\'s preferences','2005-08-07 06:35:06'),(718,'en-us','upload_err_ini_size','common','File exceeds the upload_max_filesize directive in php.ini','2005-08-07 06:35:06'),(719,'en-us','upload_err_no_file','common','No file was specified','2005-08-07 06:35:06'),(720,'en-us','upload_err_partial','common','File was only partially uploaded','2005-08-07 06:35:06'),(721,'en-us','upload_file','common','Upload file','2005-08-07 06:35:06'),(722,'en-us','upload_thumbnail','image','Upload thumbnail','2005-08-07 06:37:02'),(723,'en-us','url','public','URL','2005-08-07 06:34:03'),(724,'en-us','urls_to_ping','prefs','URLs to ping (comma separated)','2005-08-07 06:31:26'),(725,'en-us','url_mode','prefs','URL mode','2005-08-07 06:31:26'),(726,'en-us','url_title','article','URL-only title','2005-08-07 06:35:43'),(727,'en-us','url_title_is_blank','article','(URL-only title was left blank)','2005-08-07 06:35:43'),(728,'en-us','url_title_is_multiple','article','(The same URL-only title is used by {count} different articles)','2005-08-07 06:35:43'),(729,'en-us','useful_tags','tag','Useful tags','2005-07-06 13:39:09'),(730,'en-us','uses_page','section','Uses page','2005-07-06 13:39:09'),(731,'en-us','uses_style','section','Uses style','2005-07-06 13:39:09'),(732,'en-us','use_comments','prefs','Accept comments','2005-08-07 06:31:26'),(733,'en-us','use_dns','prefs','Use DNS?','2005-08-07 06:31:26'),(734,'en-us','use_mail_on_feeds_id','prefs','Use mail on feeds id?','2005-08-07 06:31:26'),(735,'en-us','use_plugins','prefs','Use plugins?','2005-08-07 06:31:26'),(736,'en-us','use_textile','common','Use Textile','2005-08-07 06:35:06'),(737,'en-us','using_db','setup','Using {dbname}','2005-09-05 08:34:09'),(738,'en-us','value','public','Value','2005-08-07 06:34:03'),(739,'en-us','version','public','Version','2005-08-07 06:34:03'),(740,'en-us','view','public','View','2005-08-07 06:34:03'),(741,'en-us','viewsite','common','View Site','2005-08-07 06:35:06'),(742,'en-us','visible','common','Visible','2005-08-07 06:35:06'),(743,'en-us','visitor_logs','log','visitor logs','2005-07-06 13:39:09'),(744,'en-us','warn_mail_unavailable','setup','Your php installation is missing the mail() function. Therefore no emails can be sent from textpattern, which limits certain functionality.','2005-09-05 08:34:09'),(745,'en-us','warn_register_globals_or_update','diag','Your version of PHP has security related risks. Please turn register_globals off or update to a newer PHP version.','2005-11-01 05:25:47'),(746,'en-us','website','public','website','2005-08-07 06:34:03'),(747,'en-us','web_domain','diag','Site URL','2005-08-07 06:34:29'),(748,'en-us','week','public','week','2005-08-07 06:34:03'),(749,'en-us','weeks','public','weeks','2005-08-07 06:34:03'),(750,'en-us','welcome_to_textpattern','setup','Welcome to Textpattern','2005-09-05 08:34:09'),(751,'en-us','with_selected','common','With selected:','2005-08-07 06:35:06'),(752,'en-us','wraptag','tag','Wraptag','2005-07-06 13:39:09'),(753,'en-us','writer','admin','Writer','2005-07-06 13:39:09'),(754,'en-us','year_month_day_title','prefs','/year/month/day/title','2005-08-07 06:31:26'),(755,'en-us','yes','public','yes','2005-08-07 06:34:03'),(756,'en-us','your_branch_is_updated','public','You have the most updated version of this Textpattern branch','2005-08-07 06:34:03'),(757,'en-us','your_email','setup','Your email address','2005-09-05 08:34:09'),(758,'en-us','your_full_name','setup','Your full name','2005-09-05 08:34:09'),(759,'en-us','your_ip_is_blacklisted_by','public','Your IP address has been blacklisted by','2005-08-07 06:34:03'),(760,'en-us','your_login_info','admin','Your login info','2005-07-06 13:39:09'),(761,'en-us','your_login_is','admin','Your login is','2005-07-06 13:39:09'),(762,'en-us','your_new_password','admin','Your new password','2005-07-06 13:39:09'),(763,'en-us','your_password_is','admin','Your password is','2005-07-06 13:39:09'),(764,'en-us','you_are_editing_css','css','You are editing CSS','2005-07-06 13:39:09'),(765,'en-us','you_are_editing_div','page','You are editing div','2005-07-06 13:39:09'),(766,'en-us','you_are_editing_form','form','You are editing form','2005-07-06 13:39:09'),(767,'en-us','you_are_editing_page','page','You are editing page template','2005-07-06 13:39:09'),(768,'en-us','you_can_access','setup','You should be able to access the <a href=\"index.php\">main interface</a> with the login and password you chose.','2005-09-05 08:34:09'),(769,'en-us','you_have_been_banned','public','You have been banned from commenting.','2005-08-07 06:34:03'),(770,'en-us','you_have_been_registered','admin','You have been registered as a contributor to the site','2005-07-06 13:39:09'),(771,'en-us','yyyy-mm','public','yyyy-mm','2005-08-07 06:34:03'),(772,'en-us','zh-cn','public','中文(简体)','2005-09-05 08:34:09'),(773,'en-us','zh-tw','public','中文(繁體)','2005-09-05 08:34:09');
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_lang` ENABLE KEYS */;

--
-- Table structure for table `txp_link`
--

DROP TABLE IF EXISTS `txp_link`;
CREATE TABLE `txp_link` (
  `id` int(6) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `category` varchar(64) NOT NULL default '',
  `url` text NOT NULL,
  `linkname` varchar(255) NOT NULL default '',
  `linksort` varchar(128) NOT NULL default '',
  `description` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=1;

--
-- Dumping data for table `txp_link`
--


/*!40000 ALTER TABLE `txp_link` DISABLE KEYS */;
LOCK TABLES `txp_link` WRITE;
INSERT INTO `txp_link` VALUES (1,'2005-07-20 12:54:26','textpattern','http://textpattern.com','Textpattern','Textpattern',''),(2,'2005-07-20 12:54:41','textpattern','http://textpattern.net','TextBook','TextBook',''),(3,'2005-07-20 12:55:04','textpattern','http://textpattern.org','Txp Resources','Txp Recources','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_link` ENABLE KEYS */;

--
-- Table structure for table `txp_log`
--

DROP TABLE IF EXISTS `txp_log`;
CREATE TABLE `txp_log` (
  `id` int(12) NOT NULL auto_increment,
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `host` varchar(255) NOT NULL default '',
  `page` varchar(255) NOT NULL default '',
  `refer` mediumtext NOT NULL,
  `status` int(11) NOT NULL default '200',
  `method` varchar(16) NOT NULL default 'GET',
  `ip` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `txp_log`
--


/*!40000 ALTER TABLE `txp_log` DISABLE KEYS */;
LOCK TABLES `txp_log` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_log` ENABLE KEYS */;

--
-- Table structure for table `txp_page`
--

DROP TABLE IF EXISTS `txp_page`;
CREATE TABLE `txp_page` (
  `name` varchar(128) NOT NULL default '',
  `user_html` text NOT NULL,
  PRIMARY KEY  (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=1;

--
-- Dumping data for table `txp_page`
--


/*!40000 ALTER TABLE `txp_page` DISABLE KEYS */;
LOCK TABLES `txp_page` WRITE;
INSERT INTO `txp_page` VALUES ('default','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n        \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n<head>\r\n	<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\r\n	<link rel=\"stylesheet\" href=\"<txp:css />\" type=\"text/css\" media=\"screen\" />\r\n	<title><txp:page_title /></title>\r\n</head>\r\n<body>\r\n<div id=\"accessibility\">\r\n  <a href=\"#content\" title=\"Go to content\">Go to content</a> \r\n  <a href=\"#sidebar-1\" title=\"Go to navigation\">Go to navigation</a> \r\n  <a href=\"#sidebar-2\" title=\"Go to search\">Go to search</a> \r\n</div> <!-- /accessibility -->\r\n<div id=\"container\">\r\n\r\n<!-- head -->\r\n<div id=\"head\">\r\n<h1><txp:link_to_home><txp:sitename /></txp:link_to_home></h1>\r\n<h2><txp:site_slogan /></h2>\r\n\r\n</div>\r\n\r\n<!-- left -->\r\n<div id=\"sidebar-1\">\r\n\r\n	<txp:linklist wraptag=\"p\" />\r\n\r\n</div>\r\n\r\n<!-- right -->\r\n<div id=\"sidebar-2\">\r\n\r\n		<txp:search_input label=\"Search\" wraptag=\"p\" />\r\n		<txp:popup type=\"c\" label=\"Browse\" wraptag=\"p\" />\r\n		<p><txp:feed_link label=\"RSS\" /> / <txp:feed_link label=\"Atom\" flavor=\"atom\" /></p>\r\n\r\n		<p><img src=\"textpattern/txp_img/txp_slug105x45.gif\" alt=\"textpattern\" /></p>\r\n\r\n\r\n</div>\r\n\r\n<!-- center -->\r\n<div id=\"content\">\r\n\r\n	<txp:article />\r\n<txp:if_individual_article>\r\n<p>\r\n<txp:link_to_prev><txp:prev_title /></txp:link_to_prev>\r\n<txp:link_to_next><txp:next_title /></txp:link_to_next>\r\n</p>\r\n</txp:if_individual_article>\r\n<txp:if_article_list>\r\n<p>\r\n<txp:older>Previous</txp:older>\r\n<txp:newer>Next</txp:newer>\r\n</p>\r\n</txp:if_article_list>\r\n</div>\r\n\r\n<!-- footer -->\r\n<div id=\"foot\">&nbsp;</div>\r\n\r\n</div>\r\n\r\n</body>\r\n</html>'),('archive','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n        \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n<head>\r\n	<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\r\n	<link rel=\"stylesheet\" href=\"<txp:css />\" type=\"text/css\" media=\"screen\" />\r\n	<title><txp:page_title /></title>\r\n</head>\r\n<body>\r\n<div id=\"accessibility\">\r\n  <a href=\"#content\" title=\"Go to content\">Go to content</a> \r\n  <a href=\"#sidebar-1\" title=\"Go to navigation\">Go to navigation</a> \r\n  <a href=\"#sidebar-2\" title=\"Go to search\">Go to search</a> \r\n</div> <!-- /accessibility -->\r\n<div id=\"container\">\r\n\r\n<!-- head -->\r\n<div id=\"head\">\r\n<h1><txp:link_to_home><txp:sitename /></txp:link_to_home></h1>\r\n\r\n</div>\r\n\r\n<!-- left -->\r\n<div id=\"sidebar-1\">\r\n\r\n	<txp:linklist wraptag=\"p\" />\r\n\r\n</div>\r\n\r\n<!-- right -->\r\n<div id=\"sidebar-2\">\r\n\r\n		<txp:search_input label=\"Search\" wraptag=\"p\" />\r\n		<txp:popup type=\"c\" label=\"Browse\" wraptag=\"p\" />\r\n		<p><txp:feed_link label=\"RSS\" /> / <txp:feed_link label=\"Atom\" flavor=\"atom\" /></p>\r\n\r\n		<p><img src=\"<txp:site_url />textpattern/txp_img/txp_slug105x45.gif\" alt=\"\" /></p>\r\n\r\n\r\n</div>\r\n\r\n<!-- center -->\r\n<div id=\"content\">\r\n\r\n	<txp:article />\r\n<txp:if_individual_article>\r\n<p>\r\n<txp:link_to_prev><txp:prev_title /></txp:link_to_prev>\r\n<txp:link_to_next><txp:next_title /></txp:link_to_next>\r\n</p>\r\n</txp:if_individual_article>\r\n<txp:if_article_list>\r\n<p>\r\n<txp:older>Previous</txp:older>\r\n<txp:newer>Next</txp:newer>\r\n</p>\r\n</txp:if_article_list>\r\n</div>\r\n\r\n<!-- footer -->\r\n<div id=\"foot\">&nbsp;</div>\r\n\r\n</div>\r\n\r\n</body>\r\n</html>\r\n\r\n');
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_page` ENABLE KEYS */;

--
-- Table structure for table `txp_plugin`
--

DROP TABLE IF EXISTS `txp_plugin`;
CREATE TABLE `txp_plugin` (
  `name` varchar(64) NOT NULL default '',
  `status` int(2) NOT NULL default '1',
  `author` varchar(128) NOT NULL default '',
  `author_uri` varchar(128) NOT NULL default '',
  `version` varchar(10) NOT NULL default '1.0',
  `description` text NOT NULL,
  `help` text NOT NULL,
  `code` text NOT NULL,
  `code_restore` text NOT NULL,
  `code_md5` varchar(32) NOT NULL default '',
  `type` int(2) NOT NULL default '0',
  UNIQUE KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `txp_plugin`
--


/*!40000 ALTER TABLE `txp_plugin` DISABLE KEYS */;
LOCK TABLES `txp_plugin` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_plugin` ENABLE KEYS */;

--
-- Table structure for table `txp_prefs`
--

DROP TABLE IF EXISTS `txp_prefs`;
CREATE TABLE `txp_prefs` (
  `prefs_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `val` varchar(255) default NULL,
  `type` smallint(5) unsigned NOT NULL default '2',
  `event` varchar(12) NOT NULL default 'publish',
  `html` varchar(64) NOT NULL default 'text_input',
  `position` smallint(5) unsigned NOT NULL default '0',
  UNIQUE KEY `prefs_idx` (`prefs_id`,`name`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `txp_prefs`
--


/*!40000 ALTER TABLE `txp_prefs` DISABLE KEYS */;
LOCK TABLES `txp_prefs` WRITE;
INSERT INTO `txp_prefs` VALUES (1,'prefs_id','1',2,'publish','text_input',0),(1,'sitename','My Site',0,'publish','text_input',10),(1,'siteurl','',0,'publish','text_input',20),(1,'site_slogan','My pithy slogan',0,'publish','text_input',30),(1,'language','en-us',2,'publish','languages',40),(1,'url_mode','1',2,'publish','text_input',0),(1,'timeoffset','0',2,'publish','text_input',0),(1,'comments_on_default','0',0,'comments','yesnoradio',140),(1,'comments_default_invite','Comment',0,'comments','text_input',180),(1,'comments_mode','0',0,'comments','commentmode',200),(1,'comments_disabled_after','42',0,'comments','weeks',210),(1,'use_textile','2',0,'publish','pref_text',110),(1,'ping_weblogsdotcom','0',1,'publish','yesnoradio',0),(1,'rss_how_many','5',1,'admin','text_input',0),(1,'logging','all',0,'publish','logging',100),(1,'use_comments','1',0,'publish','yesnoradio',120),(1,'use_categories','1',2,'publish','text_input',0),(1,'use_sections','1',2,'publish','text_input',0),(1,'send_lastmod','0',1,'admin','yesnoradio',0),(1,'path_from_root','/',2,'publish','text_input',0),(1,'lastmod','2005-07-23 16:24:10',2,'publish','text_input',0),(1,'comments_dateformat','%b %d, %I:%M %p',0,'comments','dateformats',190),(1,'dateformat','since',0,'publish','dateformats',70),(1,'archive_dateformat','%b %d, %I:%M %p',0,'publish','dateformats',80),(1,'comments_moderate','1',0,'comments','yesnoradio',130),(1,'img_dir','images',1,'admin','text_input',0),(1,'comments_disallow_images','0',0,'comments','yesnoradio',170),(1,'comments_sendmail','0',0,'comments','yesnoradio',160),(1,'file_max_upload_size','2000000',1,'admin','text_input',0),(1,'file_list_pageby','25',2,'publish','text_input',0),(1,'path_to_site','',2,'publish','text_input',0),(1,'article_list_pageby','25',2,'publish','text_input',0),(1,'link_list_pageby','25',2,'publish','text_input',0),(1,'image_list_pageby','25',2,'publish','text_input',0),(1,'log_list_pageby','25',2,'publish','text_input',0),(1,'comment_list_pageby','25',2,'publish','text_input',0),(1,'permlink_mode','section_id_title',0,'publish','permlinkmodes',90),(1,'comments_are_ol','1',0,'comments','yesnoradio',150),(1,'is_dst','0',0,'publish','yesnoradio',60),(1,'locale','en_US',2,'publish','text_input',0),(1,'tempdir','',1,'admin','text_input',0),(1,'file_base_path','',1,'admin','text_input',0),(1,'blog_uid','3d281e996e1db19be331e1c72dc6df70',2,'publish','text_input',0),(1,'blog_mail_uid','',2,'publish','text_input',0),(1,'blog_time_uid','2005',2,'publish','text_input',0),(1,'edit_raw_css_by_default','1',1,'css','yesnoradio',0),(1,'allow_page_php_scripting','1',1,'publish','yesnoradio',0),(1,'allow_article_php_scripting','1',1,'publish','yesnoradio',0),(1,'textile_links','0',1,'link','yesnoradio',0),(1,'show_article_category_count','1',2,'category','yesnoradio',0),(1,'show_comment_count_in_feed','1',1,'publish','yesnoradio',0),(1,'syndicate_body_or_excerpt','1',1,'publish','yesnoradio',0),(1,'include_email_atom','1',1,'publish','yesnoradio',0),(1,'comment_means_site_updated','1',1,'publish','yesnoradio',0),(1,'never_display_email','0',1,'publish','yesnoradio',0),(1,'comments_require_name','1',1,'comments','yesnoradio',0),(1,'comments_require_email','1',1,'comments','yesnoradio',0),(1,'articles_use_excerpts','1',1,'publish','yesnoradio',0),(1,'allow_form_override','1',1,'publish','yesnoradio',0),(1,'attach_titles_to_permalinks','1',1,'publish','yesnoradio',0),(1,'permalink_title_format','1',1,'publish','yesnoradio',0),(1,'expire_logs_after','7',1,'publish','text_input',0),(1,'use_plugins','1',1,'publish','yesnoradio',0),(1,'custom_1_set','custom1',1,'custom','text_input',1),(1,'custom_2_set','custom2',1,'custom','text_input',2),(1,'custom_3_set','',1,'custom','text_input',3),(1,'custom_4_set','',1,'custom','text_input',4),(1,'custom_5_set','',1,'custom','text_input',5),(1,'custom_6_set','',1,'custom','text_input',6),(1,'custom_7_set','',1,'custom','text_input',7),(1,'custom_8_set','',1,'custom','text_input',8),(1,'custom_9_set','',1,'custom','text_input',9),(1,'custom_10_set','',1,'custom','text_input',10),(1,'ping_textpattern_com','1',1,'publish','yesnoradio',0),(1,'use_dns','1',1,'publish','yesnoradio',0),(1,'admin_side_plugins','1',1,'publish','yesnoradio',0),(1,'comment_nofollow','1',1,'publish','yesnoradio',0),(1,'use_mail_on_feeds_id','0',1,'publish','yesnoradio',0),(1,'max_url_len','200',1,'publish','text_input',0),(1,'spam_blacklists','sbl.spamhaus.org',1,'publish','text_input',0),(1,'override_emailcharset','0',1,'admin','yesnoradio',21),(1,'production_status','testing',0,'publish','prod_levels',210),(1,'comments_auto_append','1',0,'comments','yesnoradio',211),(1,'dbupdatetime','1122194504',2,'publish','text_input',0),(1,'version','1.0rc4',2,'publish','text_input',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_prefs` ENABLE KEYS */;

--
-- Table structure for table `txp_section`
--

DROP TABLE IF EXISTS `txp_section`;
CREATE TABLE `txp_section` (
  `name` varchar(128) NOT NULL default '',
  `page` varchar(128) NOT NULL default '',
  `css` varchar(128) NOT NULL default '',
  `is_default` int(2) NOT NULL default '0',
  `in_rss` int(2) NOT NULL default '1',
  `on_frontpage` int(2) NOT NULL default '1',
  `searchable` int(2) NOT NULL default '1',
  `title` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=1;

--
-- Dumping data for table `txp_section`
--


/*!40000 ALTER TABLE `txp_section` DISABLE KEYS */;
LOCK TABLES `txp_section` WRITE;
INSERT INTO `txp_section` VALUES ('article','archive','default',1,1,1,1,'article'),('default','default','default',0,1,1,1,'default'),('about','default','default',0,0,0,1,'about');
UNLOCK TABLES;
/*!40000 ALTER TABLE `txp_section` ENABLE KEYS */;

--
-- Table structure for table `txp_users`
--

DROP TABLE IF EXISTS `txp_users`;
CREATE TABLE `txp_users` (
  `user_id` int(4) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  `pass` varchar(128) NOT NULL default '',
  `RealName` varchar(64) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `privs` tinyint(2) NOT NULL default '1',
  `last_access` datetime NOT NULL default '0000-00-00 00:00:00',
  `nonce` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

