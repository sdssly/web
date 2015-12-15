-- ecshop v2.x SQL Dump Program
-- http://qxu1146210007.my3w.com
-- 
-- DATE : 2015-12-11 14:00:32
-- MYSQL SERVER VERSION : 5.1.48-log
-- PHP VERSION : 5.2.14
-- ECShop VERSION : v2.7.3
-- Vol : 1
DROP TABLE IF EXISTS `ecs_account_log`;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_ad`;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_ad_custom`;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_ad_position`;
CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_admin_action`;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('1', '0', 'goods', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('2', '0', 'cms_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('3', '0', 'users_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('4', '0', 'priv_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('5', '0', 'sys_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('6', '0', 'order_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('7', '0', 'promotion', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('8', '0', 'email', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('9', '0', 'templates_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('10', '0', 'db_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('11', '0', 'sms_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('21', '1', 'goods_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('22', '1', 'remove_back', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('23', '1', 'cat_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('25', '1', 'attr_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('26', '1', 'brand_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('27', '1', 'comment_priv', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('84', '1', 'tag_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('30', '2', 'article_cat', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('31', '2', 'article_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('32', '2', 'shopinfo_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('33', '2', 'shophelp_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('34', '2', 'vote_priv', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('35', '7', 'topic_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('74', '4', 'template_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('73', '3', 'feedback_priv', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('38', '3', 'integrate_users', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('39', '3', 'sync_users', 'integrate_users');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('40', '3', 'users_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('42', '3', 'user_rank', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('43', '4', 'admin_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('46', '4', 'logs_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('48', '5', 'shop_config', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('49', '5', 'ship_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('50', '5', 'payment', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('51', '5', 'shiparea_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('52', '5', 'area_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('53', '6', 'order_os_edit', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('57', '6', 'order_view', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('58', '6', 'order_view_finished', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('59', '6', 'repay_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('60', '6', 'booking', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('61', '6', 'sale_order_stats', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('62', '6', 'client_flow_stats', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('78', '7', 'snatch_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('83', '7', 'ad_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('80', '7', 'gift_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('81', '7', 'card_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('70', '1', 'goods_type', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('82', '7', 'pack', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('79', '7', 'bonus_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('75', '5', 'friendlink', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('76', '5', 'db_backup', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('86', '4', 'agency_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('87', '3', 'account_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('88', '5', 'flash_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('89', '5', 'navigator', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('90', '7', 'auction', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('91', '7', 'group_by', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('92', '7', 'favourable', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('93', '7', 'whole_sale', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('94', '1', 'goods_auto', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('95', '2', 'article_auto', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('96', '5', 'cron', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('97', '5', 'affiliate', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('98', '5', 'affiliate_ck', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('99', '8', 'attention_list', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('100', '8', 'email_list', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('101', '8', 'magazine_list', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('102', '8', 'view_sendlist', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('103', '1', 'virualcard', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('104', '7', 'package_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('105', '1', 'picture_batch', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('106', '1', 'goods_export', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('107', '1', 'goods_batch', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('108', '1', 'gen_goods_script', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('109', '5', 'sitemap', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('110', '5', 'file_priv', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('111', '5', 'file_check', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('112', '9', 'template_select', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('113', '9', 'template_setup', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('114', '9', 'library_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('115', '9', 'lang_edit', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('116', '9', 'backup_setting', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('117', '9', 'mail_template', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('118', '10', 'db_backup', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('119', '10', 'db_renew', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('120', '10', 'db_optimize', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('121', '10', 'sql_query', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('122', '10', 'convert', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('124', '11', 'sms_send', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('128', '7', 'exchange_goods', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('129', '6', 'delivery_view', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('130', '6', 'back_view', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('131', '5', 'reg_fields', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('132', '5', 'shop_authorized', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('133', '5', 'webcollect_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('134', '4', 'suppliers_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('135', '4', 'role_manage', '');
DROP TABLE IF EXISTS `ecs_admin_log`;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('1', '1449769475', '1', 'ç¼–è¾‘å•†åº—è®¾ç½®: ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('2', '1449769559', '1', 'æ·»åŠ å•†å“åˆ†ç±»: å¹´å†', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('3', '1449769587', '1', 'æ‰¹é‡ä¸Šä¼ å•†å“: ', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('4', '1449769913', '1', 'å›æ”¶å•†å“: A4 è´è¶ç²¾è£…3', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('5', '1449769939', '1', 'æ‰¹é‡å›æ”¶å•†å“: ', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('6', '1449769946', '1', 'æ‰¹é‡å›æ”¶å•†å“: ', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('7', '1449769973', '1', 'æ‰¹é‡ä¸Šä¼ å•†å“: ', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('8', '1449770931', '1', 'æ·»åŠ å•†å“åˆ†ç±»: é«˜ç«¯ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('9', '1449770969', '1', 'æ·»åŠ å•†å“åˆ†ç±»: ç²¾è‡´é½è¾¹ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('10', '1449771237', '1', 'ç¼–è¾‘å•†å“: A5 è´è¶è£\…', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('11', '1449771365', '1', 'æ·»åŠ å•†å“åˆ†ç±»: å¸ƒè‰ºç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('12', '1449771377', '1', 'æ·»åŠ å•†å“åˆ†ç±»: å¤§éŸ©ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('13', '1449771392', '1', 'æ·»åŠ å•†å“åˆ†ç±»: æ°´æ™¶ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('14', '1449771405', '1', 'æ·»åŠ å•†å“åˆ†ç±»: é“æ¿ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('15', '1449771415', '1', 'æ·»åŠ å•†å“åˆ†ç±»: æ‚å¿—ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('16', '1449771424', '1', 'æ·»åŠ å•†å“åˆ†ç±»: æ—¶å°šç¡¬é¢ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('17', '1449771439', '1', 'æ·»åŠ å•†å“åˆ†ç±»: çš®é¢ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('18', '1449771452', '1', 'æ·»åŠ å•†å“åˆ†ç±»: å¿«æ˜“å†\Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('19', '1449771467', '1', 'æ·»åŠ å•†å“åˆ†ç±»: ç…§ç‰‡å†²å°', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('20', '1449771482', '1', 'æ·»åŠ å•†å“åˆ†ç±»: ç…§ç‰‡', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('21', '1449771494', '1', 'æ·»åŠ å•†å“åˆ†ç±»: æ˜ä¿¡ç‰\‡', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('22', '1449771507', '1', 'æ·»åŠ å•†å“åˆ†ç±»: å®æƒ ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('23', '1449771523', '1', 'æ·»åŠ å•†å“åˆ†ç±»: è´è¶è½¯è£… A4ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('24', '1449771531', '1', 'æ·»åŠ å•†å“åˆ†ç±»: A5ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('25', '1449771541', '1', 'æ·»åŠ å•†å“åˆ†ç±»: è´è¶ç²¾è£… A4ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('26', '1449771552', '1', 'æ·»åŠ å•†å“åˆ†ç±»: ä¸ªæ€§å®šåˆ¶ç¤¼å“\', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('27', '1449771564', '1', 'æ·»åŠ å•†å“åˆ†ç±»: æ‘†å°', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('28', '1449771580', '1', 'æ·»åŠ å•†å“åˆ†ç±»: é å«å¥\—', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('29', '1449771593', '1', 'æ·»åŠ å•†å“åˆ†ç±»: ä¸ªæ€§æ‰‹æœºå£³', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('30', '1449771611', '1', 'æ·»åŠ å•†å“åˆ†ç±»: æŒ‚å†', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('31', '1449771624', '1', 'æ·»åŠ å•†å“åˆ†ç±»: æŒ‚å† ä¸°å¯Œç‰\ˆ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('32', '1449771636', '1', 'æ·»åŠ å•†å“åˆ†ç±»: æŒ‚å† ç²¾å·§ç‰\ˆ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('33', '1449771645', '1', 'æ·»åŠ å•†å“åˆ†ç±»: å°å†', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('34', '1449771656', '1', 'æ·»åŠ å•†å“åˆ†ç±»: å°å† ä¸°å¯Œç‰\ˆ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('35', '1449771667', '1', 'æ·»åŠ å•†å“åˆ†ç±»: å°å† ç²¾å·§ç‰\ˆ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('36', '1449771771', '1', 'ç¼–è¾‘å•†å“: A5 è´è¶è£\…', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('37', '1449771820', '1', 'ç¼–è¾‘å•†å“: A5 è´è¶è£\…', '58.32.203.135');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('38', '1449771927', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…11', '180.166.196.210');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('39', '1449771981', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…11', '180.166.196.210');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('40', '1449773975', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…10', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('41', '1449774000', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…9', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('42', '1449774020', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…8', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('43', '1449774080', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…7', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('44', '1449774098', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…6', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('45', '1449774122', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…5', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('46', '1449774140', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…4', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('47', '1449776165', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…3', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('48', '1449776203', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…2', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('49', '1449776227', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…1', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('50', '1449776407', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…5', '180.166.196.211');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('51', '1449776450', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…1', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('52', '1449776780', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶è½¯è£…11', '180.166.196.210');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('53', '1449776832', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…10', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('54', '1449776858', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…9', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('55', '1449776890', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…8', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('56', '1449776919', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…7', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('57', '1449776947', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…6', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('58', '1449776973', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…5', '180.166.196.208');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('59', '1449777003', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…4', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('60', '1449777113', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…3', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('61', '1449777164', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…2', '58.32.203.135');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('62', '1449777200', '1', 'ç¼–è¾‘å•†å“: A4 è´è¶ç²¾è£…', '180.166.196.210');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('63', '1449777336', '1', 'å›æ”¶å•†å“: ç¾ç…§å†²å°2', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('64', '1449777358', '1', 'è¿˜åŸå•†å“: ç¾ç…§å†²å°2', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('65', '1449777411', '1', 'ç¼–è¾‘å•†å“: ç¾ç…§å†²å°2', '180.166.196.210');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('66', '1449777489', '1', 'ç¼–è¾‘å•†å“: æ‘†å°2', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('67', '1449777565', '1', 'ç¼–è¾‘å•†å“: å¿«æ˜“å†\Œ4', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('68', '1449777634', '1', 'ç¼–è¾‘å•†å“: å¿«æ˜“å†\Œ3', '180.166.196.208');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('69', '1449777671', '1', 'ç¼–è¾‘å•†å“: å¿«æ˜“å†\Œ2', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('70', '1449777700', '1', 'ç¼–è¾‘å•†å“: å¿«æ˜“å†\Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('71', '1449777759', '1', 'ç¼–è¾‘å•†å“: æ°´æ™¶ç›¸å†Œ4', '180.166.196.211');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('72', '1449777802', '1', 'ç¼–è¾‘å•†å“: æ°´æ™¶ç›¸å†Œ3', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('73', '1449777834', '1', 'ç¼–è¾‘å•†å“: æ°´æ™¶ç›¸å†Œ2', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('74', '1449777893', '1', 'ç¼–è¾‘å•†å“: æ°´æ™¶ç›¸å†Œ', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('75', '1449777941', '1', 'ç¼–è¾‘å•†å“: å¸ƒè‰ºç›¸å†Œ3', '192.55.46.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('76', '1449777997', '1', 'ç¼–è¾‘å•†å“: æ—¶å°šç¡¬é¢ç›¸å†Œ2', '180.166.196.209');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('77', '1449778049', '1', 'ç¼–è¾‘å•†å“: å¤§éŸ©æ°´æ™¶ç›¸å†Œ2', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('78', '1449778101', '1', 'ç¼–è¾‘å•†å“: å¤§éŸ©æ°´æ™¶ç›¸å†Œ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('79', '1449778154', '1', 'ç¼–è¾‘å•†å“: å¸ƒè‰ºç›¸å†Œ2', '180.166.196.210');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('80', '1449781683', '1', 'ç¼–è¾‘å•†å“: å¹´å†2', '58.32.203.135');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('81', '1449781716', '1', 'ç¼–è¾‘å•†å“: å¹´å†', '180.166.196.210');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('82', '1449781825', '1', 'ç¼–è¾‘å•†å“: å°å†ä¸°å¯Œç‰\ˆ8', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('83', '1449781868', '1', 'ç¼–è¾‘å•†å“: å°å†ä¸°å¯Œç‰\ˆ7', '192.102.204.36');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('84', '1449781914', '1', 'ç¼–è¾‘å•†å“: å°å†ä¸°å¯Œç‰\ˆ6', '192.102.204.36');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('85', '1449781969', '1', 'ç¼–è¾‘å•†å“: å°å†ä¸°å¯Œç‰\ˆ5', '192.102.204.36');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('86', '1449782006', '1', 'ç¼–è¾‘å•†å“: å°å†ä¸°å¯Œç‰\ˆ4', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('87', '1449782041', '1', 'ç¼–è¾‘å•†å“: é«˜æ¡£çš®é¢ç›¸å†Œ3', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('88', '1449782666', '1', 'ç¼–è¾‘å•†å“: å°å†ä¸°å¯Œç‰\ˆ3', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('89', '1449782701', '1', 'ç¼–è¾‘å•†å“: å°å†ä¸°å¯Œç‰\ˆ2', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('90', '1449782737', '1', 'ç¼–è¾‘å•†å“: å°å† ä¸°å¯Œç‰\ˆ', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('91', '1449782926', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†9', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('92', '1449783139', '1', 'ç¼–è¾‘å•†å“: é«˜æ¡£çš®é¢ç›¸å†Œ6', '180.166.196.209');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('93', '1449783183', '1', 'ç¼–è¾‘å•†å“: é«˜æ¡£çš®é¢ç›¸å†Œ5', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('94', '1449783247', '1', 'ç¼–è¾‘å•†å“: é«˜æ¡£çš®é¢ç›¸å†Œ4', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('95', '1449783277', '1', 'ç¼–è¾‘å•†å“: é«˜æ¡£çš®é¢ç›¸å†Œ3', '192.102.204.36');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('96', '1449783364', '1', 'ç¼–è¾‘å•†å“: é«˜æ¡£çš®é¢ç›¸å†Œ2', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('97', '1449783455', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†8', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('98', '1449783504', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†7', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('99', '1449783545', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†6', '180.166.196.211');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('100', '1449783583', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†5', '180.166.196.211');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('101', '1449783625', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†4', '58.32.203.134');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('102', '1449783823', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†3', '192.102.204.36');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('103', '1449783863', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†2', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('104', '1449783907', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§å°å†1', '192.102.204.36');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('105', '1449783961', '1', 'ç¼–è¾‘å•†å“: æ—¶å°šç¡¬é¢ç›¸å†Œ', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('106', '1449784219', '1', 'ç¼–è¾‘å•†å“: çº¤å·§å†\Œ', '192.102.204.37');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('107', '1449784303', '1', 'ç¼–è¾‘å•†å“: æ‰‹å·¥é«˜çº§å®šåˆ¶å¸ƒè‰ºç›¸å†Œ', '180.166.196.208');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('108', '1449784361', '1', 'ç¼–è¾‘å•†å“: é«˜æ¡£ç§è—çš®é¢ç›¸å†Œ1', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('109', '1449784441', '1', 'ç¼–è¾‘å•†å“: æ‘†å°', '192.102.204.38');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('110', '1449784537', '1', 'ç¼–è¾‘å•†å“: ç¾ç…§å†²å°', '58.32.203.135');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('111', '1449784626', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§é½è¾¹ç›¸å†Œ', '192.102.204.36');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('112', '1449784659', '1', 'ç¼–è¾‘å•†å“: ç²¾å·§é½è¾¹ç›¸å†Œ', '192.102.204.38');
DROP TABLE IF EXISTS `ecs_admin_message`;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_admin_user` ( `user_id`, `user_name`, `email`, `password`, `ec_salt`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `suppliers_id`, `todolist`, `role_id` ) VALUES  ('1', 'admin', 'sdssly@sina.com', '8d2c1e42a4e67769c2f8cc39791a4d63', '6742', '1449769351', '1449784618', '192.102.204.36', 'all', 'å•†å“åˆ—è¡¨|goods.php?act=list,è®¢å•åˆ—è¡¨|order.php?act=list,ç”¨æˆ·è¯„è®º|comment_manage.php?act=list,ä¼šå‘˜åˆ—è¡¨|users.php?act=list,å•†åº—è®¾ç½®|shop_config.php?act=list_edit', '', '0', '0', '', '');
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_affiliate_log`;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_agency`;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('1', '2', 'å…è´£æ¡æ¬¾', '', '', '', '', '0', '1', '1449798151', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('2', '2', 'éšç§ä¿æŠ¤', '', '', '', '', '0', '1', '1449798151', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('3', '2', 'å’¨è¯¢çƒ­ç‚¹', '', '', '', '', '0', '1', '1449798151', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('4', '2', 'è”ç³»æˆ‘ä»¬', '', '', '', '', '0', '1', '1449798151', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('5', '2', 'å…¬å¸ç®€ä»\‹', '', '', '', '', '0', '1', '1449798151', '', '0', '', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('6', '-1', 'ç”¨æˆ·åè®®', '', '', '', '', '0', '1', '1449798151', '', '0', '', '');
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('1', 'ç³»ç»Ÿåˆ†ç±»', '2', '', 'ç³»ç»Ÿä¿ç•™åˆ†ç±»', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('2', 'ç½‘åº—ä¿¡æ¯', '3', '', 'ç½‘åº—ä¿¡æ¯åˆ†ç±»', '50', '0', '1');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('3', 'ç½‘åº—å¸®åŠ©åˆ†ç±»', '4', '', 'ç½‘åº—å¸®åŠ©åˆ†ç±»', '50', '0', '1');
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_auction_log`;
CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_auto_manage`;
CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_back_goods`;
CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_back_order`;
CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_bonus_type`;
CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_booking_goods`;
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_brand` ( `brand_id`, `brand_name`, `brand_logo`, `brand_desc`, `site_url`, `sort_order`, `is_show` ) VALUES  ('1', 'ç‰¹åˆ«å\°', '', '', '', '50', '1');
DROP TABLE IF EXISTS `ecs_card`;
CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_cat_recommend`;
CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_cat_recommend` ( `cat_id`, `recommend_type` ) VALUES  ('2', '1');
INSERT INTO `ecs_cat_recommend` ( `cat_id`, `recommend_type` ) VALUES  ('2', '2');
INSERT INTO `ecs_cat_recommend` ( `cat_id`, `recommend_type` ) VALUES  ('2', '3');
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('1', 'å¹´å†', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('2', 'é«˜ç«¯ç›¸å†Œ', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('3', 'ç²¾è‡´é½è¾¹ç›¸å†Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('4', 'å¸ƒè‰ºç›¸å†Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('5', 'å¤§éŸ©ç›¸å†Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('6', 'æ°´æ™¶ç›¸å†Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('7', 'é“æ¿ç›¸å†Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('8', 'æ‚å¿—ç›¸å†Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('9', 'æ—¶å°šç¡¬é¢ç›¸å†Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('10', 'çš®é¢ç›¸å†Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('11', 'å¿«æ˜“å†\Œ', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('12', 'ç…§ç‰‡å†²å°', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('13', 'ç…§ç‰‡', '', '', '12', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('14', 'æ˜ä¿¡ç‰\‡', '', '', '12', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('15', 'å®æƒ ç›¸å†Œ', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('16', 'è´è¶è½¯è£… A4ç›¸å†Œ', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('17', 'A5ç›¸å†Œ', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('18', 'è´è¶ç²¾è£… A4ç›¸å†Œ', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('19', 'ä¸ªæ€§å®šåˆ¶ç¤¼å“\', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('20', 'æ‘†å°', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('21', 'é å«å¥\—', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('22', 'ä¸ªæ€§æ‰‹æœºå£³', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('23', 'æŒ‚å†', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('24', 'æŒ‚å† ä¸°å¯Œç‰\ˆ', '', '', '23', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('25', 'æŒ‚å† ç²¾å·§ç‰\ˆ', '', '', '23', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('26', 'å°å†', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('27', 'å°å† ä¸°å¯Œç‰\ˆ', '', '', '26', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('28', 'å°å† ç²¾å·§ç‰\ˆ', '', '', '26', '50', '', '', '0', '', '1', '0', '');
DROP TABLE IF EXISTS `ecs_collect_goods`;
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_crons`;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_delivery_goods`;
CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_delivery_order`;
CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_email_list`;
CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_email_sendlist`;
CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_error_log`;
CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_exchange_goods`;
CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_favourable_activity`;
CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_feedback`;
CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_friend_link`;
CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_friend_link` ( `link_id`, `link_name`, `link_url`, `link_logo`, `show_order` ) VALUES  ('1', 'ECSHOP ç½‘ä¸Šå•†åº—ç®¡ç†ç³»ç»Ÿ', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', '50');
INSERT INTO `ecs_friend_link` ( `link_id`, `link_name`, `link_url`, `link_logo`, `show_order` ) VALUES  ('2', 'ä¹°å¦ç½\‘', 'http://www.maifou.net/', '', '51');
INSERT INTO `ecs_friend_link` ( `link_id`, `link_name`, `link_url`, `link_logo`, `show_order` ) VALUES  ('3', 'å…è´¹å¼€ç‹¬ç«‹ç½‘åº—', 'http://www.wdwd.com/', '', '52');
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('1', '1', 'cp000609', 'ç¾ç…§å†²å°', '+', '0', '1', '', '1', '0.000', '0.96', '0.80', '0.00', '0', '0', '1', '', 'ä¸“ä¸šçš„ç…§ç‰‡å¤„ç†æŠ€æœ¯ï¼Œå®Œç¾å¤„ç†ä½ æœ€çè´µçš„å›å¿†ï¼Œè‰²å½©è¿˜åŸçœŸå®ï¼Œè®°å¿†ç”¨ä¸è¤ªè‰²ã€\‚', '', '', '', '', '1', '', '1', '1', '0', '0', '1449769587', '100', '1', '1', '1', '1', '0', '0', '1449769946', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('2', '1', 'cp000610', 'æ‘†å°', '+', '0', '0', '', '100', '0.000', '60.00', '30.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '3', '1449769587', '100', '1', '1', '1', '1', '0', '0', '1449769946', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('3', '1', 'XCPM', 'é«˜æ¡£ç§è—çš®é¢ç›¸å†Œ1', '+', '0', '0', '', '0', '102.000', '133.00', '100.00', '0.00', '0', '0', '0', '', 'å•†å“é»˜è®¤20é¡µï¼Œå¯æ ¹æ®å®¢æˆ·éœ€è¦åŠ é¡µï¼Œå¤šç§å°ºå¯¸æ¨¡æ¿ä¾›é€‰æ‹©ã€\‚', '<p>Â <span style=color: rgb(255', '', '', '', '1', '', '0', '1', '0', '10', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769946', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('4', '1', 'XCBY', 'æ‰‹å·¥é«˜çº§å®šåˆ¶å¸ƒè‰ºç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '133.00', '100.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '10', '1449769587', '100', '1', '1', '1', '1', '0', '0', '1449769946', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('5', '1', 'XCKYC', 'çº¤å·§å†\Œ', '+', '0', '0', '', '100', '0.000', '100.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1449769587', '100', '1', '1', '1', '1', '0', '0', '1449769946', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('6', '1', 'XCLL', 'ç’€ç’¨æ°´æ™¶ç›¸å†\Œ', '+', '0', '0', '', '0', '60.000', '250.00', '150.00', '0.00', '0', '0', '0', '', 'ä¸€ä½“åˆ¶ä½œå·¥è‰ºï¼Œéš”ç»ç©ºæ°”ï¼Œè¡¨é¢å¹³æ»‘å…‰äº®ï¼Œè´¨æ„Ÿï¼Œä¸å˜è‰²ã€ä¸æ‰è‰²ï¼Œæ­£å¦‚è®°å¿†ä¸€æ ·ï¼Œæ°¸ä¸é€€è‰²â€¦é€šè¿‡æ°´æ™¶æ£±è§’æŠ˜å°„å‡ºçš„ç‚«ä¸½å…‰èŠ’ï¼Œä½ çœ‹åˆ°è¢«å°å°åœ¨æ°´æ™¶å†…çš„è®°å¿†ï¼Œé‚£å¼ ç…§ç‰‡ä¸­çš„é¢å®¹ï¼Œå‡­æ·»äº†ç”ŸåŠ¨ä¹‹ç¾ï¼Œæ™¶è¹å‰”é€ï¼Œé«˜è´µå…¸é›…ï¼Œè¿™ä¾¿æ˜¯æ°´æ™¶ç›¸å†Œå¸¦æ¥çš„è§¦åŠ¨ã€\‚', '<p><span style=color: rgb(60', '', '', '', '0', 'virtual_card', '1', '1', '0', '15', '1449769587', '100', '0', '0', '0', '0', '0', '0', '1449769587', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('7', '1', 'XCYM', 'æ—¶å°šç¡¬é¢ç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1449769587', '100', '1', '1', '1', '1', '0', '0', '1449769946', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('8', '1', 'cp000617', 'ç²¾å·§å°å†1', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769946', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('9', '1', 'XCQB', 'ç²¾å·§é½è¾¹ç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1449769587', '100', '1', '1', '1', '1', '0', '0', '1449769946', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('10', '1', 'cp000621', 'ç²¾å·§å°å†2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('11', '1', 'cp000622', 'ç²¾å·§å°å†3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('12', '1', 'cp000623', 'ç²¾å·§å°å†4', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('13', '1', 'cp000624', 'ç²¾å·§å°å†5', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('14', '1', 'cp000625', 'ç²¾å·§å°å†6', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('15', '1', 'cp000626', 'ç²¾å·§å°å†7', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('16', '1', 'cp000627', 'ç²¾å·§å°å†8', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('17', '1', 'cp000628', 'é«˜æ¡£çš®é¢ç›¸å†Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('18', '1', 'cp000629', 'é«˜æ¡£çš®é¢ç›¸å†Œ3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('19', '1', 'cp000630', 'é«˜æ¡£çš®é¢ç›¸å†Œ4', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('20', '1', 'cp000631', 'é«˜æ¡£çš®é¢ç›¸å†Œ5', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('21', '1', 'cp000632', 'é«˜æ¡£çš®é¢ç›¸å†Œ6', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('22', '1', 'cp000633', 'ç²¾å·§å°å†9', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('23', '1', 'cp000634', 'å°å† ä¸°å¯Œç‰\ˆ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('24', '1', 'cp000635', 'å°å†ä¸°å¯Œç‰\ˆ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('25', '1', 'cp000636', 'å°å†ä¸°å¯Œç‰\ˆ3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('26', '1', 'cp000637', 'å°å†ä¸°å¯Œç‰\ˆ4', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('27', '1', 'cp000638', 'å°å†ä¸°å¯Œç‰\ˆ5', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('28', '1', 'cp000639', 'å°å†ä¸°å¯Œç‰\ˆ6', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('29', '1', 'cp000640', 'å°å†ä¸°å¯Œç‰\ˆ7', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('30', '1', 'cp000641', 'å°å†ä¸°å¯Œç‰\ˆ8', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('31', '1', 'cp000642', 'å¹´å†', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('32', '1', 'cp000643', 'å¹´å†2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('33', '1', 'cp000644', 'å¸ƒè‰ºç›¸å†Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('34', '1', 'cp000645', 'å¤§éŸ©æ°´æ™¶ç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('35', '1', 'cp000646', 'å¤§éŸ©æ°´æ™¶ç›¸å†Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('36', '1', 'cp000647', 'æ—¶å°šç¡¬é¢ç›¸å†Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('37', '1', 'cp000648', 'å¸ƒè‰ºç›¸å†Œ3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('38', '1', 'cp000649', 'æ°´æ™¶ç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('39', '1', 'cp000650', 'æ°´æ™¶ç›¸å†Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('40', '1', 'cp000651', 'æ°´æ™¶ç›¸å†Œ3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('41', '1', 'cp000652', 'æ°´æ™¶ç›¸å†Œ4', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('42', '1', 'cp000653', 'å¿«æ˜“å†\Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('43', '1', 'cp000654', 'å¿«æ˜“å†\Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('44', '1', 'cp000655', 'å¿«æ˜“å†\Œ3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('45', '1', 'cp000656', 'å¿«æ˜“å†\Œ4', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('46', '1', 'cp000657', 'æ‘†å°2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('47', '1', 'cp000658', 'ç¾ç…§å†²å°2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('48', '1', 'cp000659', 'A4 è´è¶ç²¾è£…', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('49', '1', 'cp000660', 'A4 è´è¶ç²¾è£…2', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769939', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('50', '1', 'cp000661', 'A4 è´è¶ç²¾è£…3', '+', '1', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1449769587', '100', '1', '0', '0', '0', '0', '0', '1449769587', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('51', '1', 'cp000709', 'ç¾ç…§å†²å°', '+', '0', '1', '', '1', '0.000', '0.96', '0.80', '0.00', '0', '0', '1', '', 'ä¸“ä¸šçš„ç…§ç‰‡å¤„ç†æŠ€æœ¯ï¼Œå®Œç¾å¤„ç†ä½ æœ€çè´µçš„å›å¿†ï¼Œè‰²å½©è¿˜åŸçœŸå®ï¼Œè®°å¿†ç”¨ä¸è¤ªè‰²ã€\‚', '', 'images/201512/thumb_img/51_thumb_G_1449784537371.jpg', 'images/201512/goods_img/51_G_1449784537245.jpg', 'images/201512/source_img/51_G_1449784537122.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '1', '1', '1', '0', '0', '1449784537', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('52', '20', 'cp000710', 'æ‘†å°', '+', '1', '0', '', '100', '0.000', '60.00', '30.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/52_thumb_G_1449784441717.jpg', 'images/201512/goods_img/52_G_1449784441016.jpg', 'images/201512/source_img/52_G_1449784441138.JPG', '1', '', '1', '1', '0', '3', '1449769972', '100', '0', '1', '1', '1', '0', '0', '1449784441', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('53', '1', 'XCPM1', 'é«˜æ¡£ç§è—çš®é¢ç›¸å†Œ1', '+', '0', '0', '', '0', '102.000', '133.00', '100.00', '0.00', '0', '0', '0', '', 'å•†å“é»˜è®¤20é¡µï¼Œå¯æ ¹æ®å®¢æˆ·éœ€è¦åŠ é¡µï¼Œå¤šç§å°ºå¯¸æ¨¡æ¿ä¾›é€‰æ‹©ã€\‚', '', 'images/201512/thumb_img/53_thumb_G_1449784361424.jpg', 'images/201512/goods_img/53_G_1449784361730.jpg', 'images/201512/source_img/53_G_1449784361039.JPG', '1', '', '0', '1', '0', '10', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449784361', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('54', '4', 'XCBY1', 'æ‰‹å·¥é«˜çº§å®šåˆ¶å¸ƒè‰ºç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '133.00', '100.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/54_thumb_G_1449784303300.jpg', 'images/201512/goods_img/54_G_1449784303667.jpg', 'images/201512/source_img/54_G_1449784303862.JPG', '1', '', '1', '1', '0', '10', '1449769972', '100', '0', '1', '1', '1', '0', '0', '1449784303', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('55', '11', 'XCKYC1', 'çº¤å·§å†\Œ', '+', '0', '0', '', '100', '0.000', '100.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/55_thumb_G_1449784219077.jpg', 'images/201512/goods_img/55_G_1449784219979.jpg', 'images/201512/source_img/55_G_1449784219620.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '1', '1', '1', '0', '0', '1449784219', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('56', '1', 'XCLL', 'ç’€ç’¨æ°´æ™¶ç›¸å†\Œ', '+', '0', '0', '', '0', '60.000', '250.00', '150.00', '0.00', '0', '0', '0', '', 'ä¸€ä½“åˆ¶ä½œå·¥è‰ºï¼Œéš”ç»ç©ºæ°”ï¼Œè¡¨é¢å¹³æ»‘å…‰äº®ï¼Œè´¨æ„Ÿï¼Œä¸å˜è‰²ã€ä¸æ‰è‰²ï¼Œæ­£å¦‚è®°å¿†ä¸€æ ·ï¼Œæ°¸ä¸é€€è‰²â€¦é€šè¿‡æ°´æ™¶æ£±è§’æŠ˜å°„å‡ºçš„ç‚«ä¸½å…‰èŠ’ï¼Œä½ çœ‹åˆ°è¢«å°å°åœ¨æ°´æ™¶å†…çš„è®°å¿†ï¼Œé‚£å¼ ç…§ç‰‡ä¸­çš„é¢å®¹ï¼Œå‡­æ·»äº†ç”ŸåŠ¨ä¹‹ç¾ï¼Œæ™¶è¹å‰”é€ï¼Œé«˜è´µå…¸é›…ï¼Œè¿™ä¾¿æ˜¯æ°´æ™¶ç›¸å†Œå¸¦æ¥çš„è§¦åŠ¨ã€\‚', '<p><span style=color: rgb(60', '', '', '', '0', 'virtual_card', '1', '1', '0', '15', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449769972', '0', '', '-1', '-1', '', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('57', '9', 'XCYM1', 'æ—¶å°šç¡¬é¢ç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/57_thumb_G_1449783961208.jpg', 'images/201512/goods_img/57_G_1449783961780.jpg', 'images/201512/source_img/57_G_1449783961505.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '1', '1', '1', '0', '0', '1449783961', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('58', '28', 'cp000717', 'ç²¾å·§å°å†1', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/58_thumb_G_1449783907135.jpg', 'images/201512/goods_img/58_G_1449783907241.jpg', 'images/201512/source_img/58_G_1449783907189.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783907', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('59', '3', 'XCQB1', 'ç²¾å·§é½è¾¹ç›¸å†Œ', '+', '4', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/59_thumb_G_1449784626361.jpg', 'images/201512/goods_img/59_G_1449784626722.jpg', 'images/201512/source_img/59_G_1449784626841.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '1', '1', '1', '0', '0', '1449784659', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('60', '28', 'cp000721', 'ç²¾å·§å°å†2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/60_thumb_G_1449783863450.jpg', 'images/201512/goods_img/60_G_1449783863074.jpg', 'images/201512/source_img/60_G_1449783863050.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783863', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('61', '28', 'cp000722', 'ç²¾å·§å°å†3', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/61_thumb_G_1449783823461.jpg', 'images/201512/goods_img/61_G_1449783823166.jpg', 'images/201512/source_img/61_G_1449783823811.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783823', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('62', '28', 'cp000723', 'ç²¾å·§å°å†4', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/62_thumb_G_1449783625505.jpg', 'images/201512/goods_img/62_G_1449783625951.jpg', 'images/201512/source_img/62_G_1449783625872.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783625', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('63', '28', 'cp000724', 'ç²¾å·§å°å†5', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/63_thumb_G_1449783583422.jpg', 'images/201512/goods_img/63_G_1449783583075.jpg', 'images/201512/source_img/63_G_1449783583819.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783583', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('64', '28', 'cp000725', 'ç²¾å·§å°å†6', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/64_thumb_G_1449783545801.jpg', 'images/201512/goods_img/64_G_1449783545708.jpg', 'images/201512/source_img/64_G_1449783545020.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783545', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('65', '28', 'cp000726', 'ç²¾å·§å°å†7', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/65_thumb_G_1449783504188.jpg', 'images/201512/goods_img/65_G_1449783504762.jpg', 'images/201512/source_img/65_G_1449783504141.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783504', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('66', '28', 'cp000727', 'ç²¾å·§å°å†8', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/66_thumb_G_1449783455956.jpg', 'images/201512/goods_img/66_G_1449783455488.jpg', 'images/201512/source_img/66_G_1449783455240.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783455', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('67', '10', 'cp000728', 'é«˜æ¡£çš®é¢ç›¸å†Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/67_thumb_G_1449783364500.jpg', 'images/201512/goods_img/67_G_1449783364014.jpg', 'images/201512/source_img/67_G_1449783364758.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783364', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('68', '10', 'cp000729', 'é«˜æ¡£çš®é¢ç›¸å†Œ3', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/68_thumb_G_1449783277610.jpg', 'images/201512/goods_img/68_G_1449783277409.jpg', 'images/201512/source_img/68_G_1449783277081.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783277', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('69', '10', 'cp000730', 'é«˜æ¡£çš®é¢ç›¸å†Œ4', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/69_thumb_G_1449783247929.jpg', 'images/201512/goods_img/69_G_1449783247905.jpg', 'images/201512/source_img/69_G_1449783247611.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783247', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('70', '10', 'cp000731', 'é«˜æ¡£çš®é¢ç›¸å†Œ5', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/70_thumb_G_1449783183253.jpg', 'images/201512/goods_img/70_G_1449783183505.jpg', 'images/201512/source_img/70_G_1449783183695.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783183', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('71', '10', 'cp000732', 'é«˜æ¡£çš®é¢ç›¸å†Œ6', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/71_thumb_G_1449783139921.jpg', 'images/201512/goods_img/71_G_1449783139002.jpg', 'images/201512/source_img/71_G_1449783139895.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449783139', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('72', '28', 'cp000733', 'ç²¾å·§å°å†9', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/72_thumb_G_1449782926109.jpg', 'images/201512/goods_img/72_G_1449782926973.jpg', 'images/201512/source_img/72_G_1449782926170.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449782926', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('73', '27', 'cp000734', 'å°å† ä¸°å¯Œç‰\ˆ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/73_thumb_G_1449782737662.jpg', 'images/201512/goods_img/73_G_1449782737514.jpg', 'images/201512/source_img/73_G_1449782737257.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449782737', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('74', '27', 'cp000735', 'å°å†ä¸°å¯Œç‰\ˆ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/74_thumb_G_1449782701690.jpg', 'images/201512/goods_img/74_G_1449782701326.jpg', 'images/201512/source_img/74_G_1449782701603.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449782701', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('75', '27', 'cp000736', 'å°å†ä¸°å¯Œç‰\ˆ3', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/75_thumb_G_1449782666970.jpg', 'images/201512/goods_img/75_G_1449782666142.jpg', 'images/201512/source_img/75_G_1449782666880.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449782666', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('76', '1', 'cp000737', 'å°å†ä¸°å¯Œç‰\ˆ4', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/76_thumb_G_1449782006583.jpg', 'images/201512/goods_img/76_G_1449782006068.jpg', 'images/201512/source_img/76_G_1449782006731.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449782006', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('77', '27', 'cp000738', 'å°å†ä¸°å¯Œç‰\ˆ5', '+', '2', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/77_thumb_G_1449781969427.jpg', 'images/201512/goods_img/77_G_1449781969426.jpg', 'images/201512/source_img/77_G_1449781969857.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449781969', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('78', '27', 'cp000739', 'å°å†ä¸°å¯Œç‰\ˆ6', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/78_thumb_G_1449781914132.jpg', 'images/201512/goods_img/78_G_1449781914769.jpg', 'images/201512/source_img/78_G_1449781914119.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449781914', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('79', '27', 'cp000740', 'å°å†ä¸°å¯Œç‰\ˆ7', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/79_thumb_G_1449781868004.jpg', 'images/201512/goods_img/79_G_1449781868508.jpg', 'images/201512/source_img/79_G_1449781868241.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449781868', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('80', '27', 'cp000741', 'å°å†ä¸°å¯Œç‰\ˆ8', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/80_thumb_G_1449781825018.jpg', 'images/201512/goods_img/80_G_1449781825751.jpg', 'images/201512/source_img/80_G_1449781825856.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449781825', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('81', '1', 'cp000742', 'å¹´å†', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/81_thumb_G_1449781716541.jpg', 'images/201512/goods_img/81_G_1449781716531.jpg', 'images/201512/source_img/81_G_1449781716679.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449781716', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('82', '1', 'cp000743', 'å¹´å†2', '+', '2', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/82_thumb_G_1449781683058.jpg', 'images/201512/goods_img/82_G_1449781683742.jpg', 'images/201512/source_img/82_G_1449781683531.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449781683', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('83', '4', 'cp000744', 'å¸ƒè‰ºç›¸å†Œ2', '+', '2', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/83_thumb_G_1449778154124.jpg', 'images/201512/goods_img/83_G_1449778154096.jpg', 'images/201512/source_img/83_G_1449778154299.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449778154', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('84', '5', 'cp000745', 'å¤§éŸ©æ°´æ™¶ç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/84_thumb_G_1449778101057.jpg', 'images/201512/goods_img/84_G_1449778101741.jpg', 'images/201512/source_img/84_G_1449778101978.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449778101', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('85', '5', 'cp000746', 'å¤§éŸ©æ°´æ™¶ç›¸å†Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/85_thumb_G_1449778049178.jpg', 'images/201512/goods_img/85_G_1449778049701.jpg', 'images/201512/source_img/85_G_1449778049946.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449778049', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('86', '9', 'cp000747', 'æ—¶å°šç¡¬é¢ç›¸å†Œ2', '+', '1', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/86_thumb_G_1449777997665.jpg', 'images/201512/goods_img/86_G_1449777997416.jpg', 'images/201512/source_img/86_G_1449777997947.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777997', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('87', '4', 'cp000748', 'å¸ƒè‰ºç›¸å†Œ3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/87_thumb_G_1449777941167.jpg', 'images/201512/goods_img/87_G_1449777941380.jpg', 'images/201512/source_img/87_G_1449777941360.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777941', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('88', '6', 'cp000749', 'æ°´æ™¶ç›¸å†Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/88_thumb_G_1449777893393.jpg', 'images/201512/goods_img/88_G_1449777893566.jpg', 'images/201512/source_img/88_G_1449777893472.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777893', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('89', '6', 'cp000750', 'æ°´æ™¶ç›¸å†Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/89_thumb_G_1449777834660.jpg', 'images/201512/goods_img/89_G_1449777834748.jpg', 'images/201512/source_img/89_G_1449777834101.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777834', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('90', '6', 'cp000751', 'æ°´æ™¶ç›¸å†Œ3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/90_thumb_G_1449777802939.jpg', 'images/201512/goods_img/90_G_1449777802599.jpg', 'images/201512/source_img/90_G_1449777802895.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777802', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('91', '1', 'cp000752', 'æ°´æ™¶ç›¸å†Œ4', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/91_thumb_G_1449777759867.jpg', 'images/201512/goods_img/91_G_1449777759280.jpg', 'images/201512/source_img/91_G_1449777759486.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777759', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('92', '11', 'cp000753', 'å¿«æ˜“å†\Œ', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/92_thumb_G_1449777700243.jpg', 'images/201512/goods_img/92_G_1449777700430.jpg', 'images/201512/source_img/92_G_1449777700473.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777700', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('93', '11', 'cp000754', 'å¿«æ˜“å†\Œ2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/93_thumb_G_1449777671706.jpg', 'images/201512/goods_img/93_G_1449777671189.jpg', 'images/201512/source_img/93_G_1449777671730.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777671', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('94', '11', 'cp000755', 'å¿«æ˜“å†\Œ3', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/94_thumb_G_1449777634589.jpg', 'images/201512/goods_img/94_G_1449777634805.jpg', 'images/201512/source_img/94_G_1449777634960.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777634', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('95', '11', 'cp000756', 'å¿«æ˜“å†\Œ4', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/95_thumb_G_1449777565734.jpg', 'images/201512/goods_img/95_G_1449777565761.jpg', 'images/201512/source_img/95_G_1449777565070.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777565', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('96', '20', 'cp000759', 'æ‘†å°2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/96_thumb_G_1449777489402.jpg', 'images/201512/goods_img/96_G_1449777489960.jpg', 'images/201512/source_img/96_G_1449777489484.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777489', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('97', '13', 'cp00064', 'ç¾ç…§å†²å°2', '+', '0', '0', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/97_thumb_G_1449777411449.jpg', 'images/201512/goods_img/97_G_1449777411692.jpg', 'images/201512/source_img/97_G_1449777411785.JPG', '1', '', '1', '1', '0', '0', '1449777358', '100', '0', '0', '0', '0', '0', '0', '1449777411', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('98', '18', 'cp00065', 'A4 è´è¶ç²¾è£…', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/98_thumb_G_1449777200492.jpg', 'images/201512/goods_img/98_G_1449777200665.jpg', 'images/201512/source_img/98_G_1449777200960.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777200', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('99', '18', 'cp00067', 'A4 è´è¶ç²¾è£…2', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/99_thumb_G_1449777164299.jpg', 'images/201512/goods_img/99_G_1449777164154.jpg', 'images/201512/source_img/99_G_1449777164461.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777164', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('100', '1', 'cp00066', 'A4 è´è¶ç²¾è£…3', '+', '2', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/100_thumb_G_1449777113565.jpg', 'images/201512/goods_img/100_G_1449777113539.jpg', 'images/201512/source_img/100_G_1449777113681.JPG', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777113', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('101', '18', 'cp000662', 'A4 è´è¶ç²¾è£…4', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/101_thumb_G_1449777003766.jpg', 'images/201512/goods_img/101_G_1449777003133.jpg', 'images/201512/source_img/101_G_1449777003565.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449777003', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('102', '18', 'cp000663', 'A4 è´è¶ç²¾è£…5', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/102_thumb_G_1449776973168.jpg', 'images/201512/goods_img/102_G_1449776973497.jpg', 'images/201512/source_img/102_G_1449776973829.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449776973', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('103', '18', 'cp000664', 'A4 è´è¶ç²¾è£…6', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/103_thumb_G_1449776947911.jpg', 'images/201512/goods_img/103_G_1449776947516.jpg', 'images/201512/source_img/103_G_1449776947081.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449776947', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('104', '18', 'cp000665', 'A4 è´è¶ç²¾è£…7', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/104_thumb_G_1449776919207.jpg', 'images/201512/goods_img/104_G_1449776919213.jpg', 'images/201512/source_img/104_G_1449776919636.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449776919', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('105', '18', 'cp000666', 'A4 è´è¶ç²¾è£…8', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/105_thumb_G_1449776891044.jpg', 'images/201512/goods_img/105_G_1449776891536.jpg', 'images/201512/source_img/105_G_1449776890653.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449776890', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('106', '18', 'cp000667', 'A4 è´è¶ç²¾è£…9', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/106_thumb_G_1449776858436.jpg', 'images/201512/goods_img/106_G_1449776858932.jpg', 'images/201512/source_img/106_G_1449776858132.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449776858', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('107', '16', 'cp000668', 'A4 è´è¶ç²¾è£…10', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/107_thumb_G_1449776832083.jpg', 'images/201512/goods_img/107_G_1449776832249.jpg', 'images/201512/source_img/107_G_1449776832738.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449776832', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('108', '16', 'cp000669', 'A4 è´è¶è½¯è£…1', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/108_thumb_G_1449776227449.jpg', 'images/201512/goods_img/108_G_1449776227512.jpg', 'images/201512/source_img/108_G_1449776227942.jpg', '1', '', '1', '1', '0', '0', '1449769972', '100', '0', '0', '0', '0', '0', '0', '1449776450', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('109', '1', 'cp000670', 'A4 è´è¶è½¯è£…2', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/109_thumb_G_1449776203656.jpg', 'images/201512/goods_img/109_G_1449776203751.jpg', 'images/201512/source_img/109_G_1449776203456.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449776203', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('110', '1', 'cp000671', 'A4 è´è¶è½¯è£…3', '+', '1', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/110_thumb_G_1449776165137.jpg', 'images/201512/goods_img/110_G_1449776165220.jpg', 'images/201512/source_img/110_G_1449776165573.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449776165', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('111', '1', 'cp000672', 'A4 è´è¶è½¯è£…4', '+', '1', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/111_thumb_G_1449774140432.jpg', 'images/201512/goods_img/111_G_1449774140749.jpg', 'images/201512/source_img/111_G_1449774140925.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449776330', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('112', '1', 'cp000673', 'A4 è´è¶è½¯è£…5', '+', '1', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/112_thumb_G_1449776407687.jpg', 'images/201512/goods_img/112_G_1449776407568.jpg', 'images/201512/source_img/112_G_1449776407854.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449776407', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('113', '1', 'cp000674', 'A4 è´è¶è½¯è£…6', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/113_thumb_G_1449774098906.jpg', 'images/201512/goods_img/113_G_1449774098868.jpg', 'images/201512/source_img/113_G_1449774098505.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449774098', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('114', '1', 'cp000675', 'A4 è´è¶è½¯è£…7', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/114_thumb_G_1449774080896.jpg', 'images/201512/goods_img/114_G_1449774080919.jpg', 'images/201512/source_img/114_G_1449774080111.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449774079', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('115', '1', 'cp000676', 'A4 è´è¶è½¯è£…8', '+', '2', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/115_thumb_G_1449774020142.jpg', 'images/201512/goods_img/115_G_1449774020141.jpg', 'images/201512/source_img/115_G_1449774020974.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449774020', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('116', '1', 'cp000677', 'A4 è´è¶è½¯è£…9', '+', '0', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/116_thumb_G_1449774000607.jpg', 'images/201512/goods_img/116_G_1449774000096.jpg', 'images/201512/source_img/116_G_1449774000960.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449774000', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('117', '1', 'cp000678', 'A4 è´è¶è½¯è£…10', '+', '1', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/117_thumb_G_1449773975645.jpg', 'images/201512/goods_img/117_G_1449773975799.jpg', 'images/201512/source_img/117_G_1449773975500.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449773975', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('118', '16', 'cp000679', 'A4 è´è¶è½¯è£…11', '+', '4', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/118_thumb_G_1449771981877.jpg', 'images/201512/goods_img/118_G_1449771981084.jpg', 'images/201512/source_img/118_G_1449771981182.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449776780', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('119', '17', 'cp000680', 'A5 è´è¶è£\…', '+', '7', '1', '', '100', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '', 'images/201512/thumb_img/119_thumb_G_1449771237248.jpg', 'images/201512/goods_img/119_G_1449771237782.jpg', 'images/201512/source_img/119_G_1449771237966.jpg', '1', '', '1', '1', '0', '0', '1449769973', '100', '0', '0', '0', '0', '0', '0', '1449777574', '0', '', '-1', '-1', '0', '');
DROP TABLE IF EXISTS `ecs_goods_activity`;
CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_article`;
CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('1', '1', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('2', '2', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('3', '3', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('4', '4', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('5', '5', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('6', '6', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('7', '7', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('8', '8', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('9', '9', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('10', '10', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('11', '11', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('12', '12', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('13', '13', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('14', '14', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('15', '15', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('16', '16', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('17', '17', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('18', '18', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('19', '19', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('20', '20', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('21', '21', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('22', '22', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('23', '23', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('24', '24', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('25', '25', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('26', '26', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('27', '27', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('28', '28', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('29', '29', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('30', '30', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('31', '31', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('32', '32', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('33', '33', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('34', '34', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('35', '35', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('36', '36', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('37', '37', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('38', '38', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('39', '39', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('40', '40', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('41', '41', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('42', '42', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('43', '43', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('44', '44', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('45', '45', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('46', '46', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('47', '47', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('48', '48', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('49', '49', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('50', '50', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('51', '51', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('52', '52', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('53', '53', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('54', '54', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('55', '55', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('56', '56', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('57', '57', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('58', '58', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('60', '60', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('61', '61', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('62', '62', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('63', '63', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('64', '64', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('65', '65', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('66', '66', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('67', '67', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('68', '68', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('69', '69', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('70', '70', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('71', '71', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('72', '72', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('73', '73', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('74', '74', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('75', '75', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('76', '76', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('77', '77', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('78', '78', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('79', '79', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('80', '80', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('81', '81', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('82', '82', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('83', '83', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('84', '84', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('85', '85', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('86', '86', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('87', '87', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('88', '88', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('89', '89', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('90', '90', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('91', '91', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('92', '92', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('93', '93', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('94', '94', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('95', '95', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('96', '96', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('97', '97', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('98', '98', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('99', '99', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('100', '100', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('101', '101', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('102', '102', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('103', '103', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('104', '104', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('105', '105', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('106', '106', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('107', '107', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('108', '108', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('109', '109', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('110', '110', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('111', '111', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('112', '112', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('113', '113', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('114', '114', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('115', '115', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('116', '116', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('117', '117', '', '', '', '');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('121', '118', 'images/201512/goods_img/118_P_1449771927641.jpg', '', 'images/201512/thumb_img/118_thumb_P_1449771927283.jpg', 'images/201512/source_img/118_P_1449771927900.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('120', '119', 'images/201512/goods_img/119_P_1449771237789.jpg', '', 'images/201512/thumb_img/119_thumb_P_1449771237132.jpg', 'images/201512/source_img/119_P_1449771237207.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('122', '118', 'images/201512/goods_img/118_P_1449771981583.jpg', '', 'images/201512/thumb_img/118_thumb_P_1449771981945.jpg', 'images/201512/source_img/118_P_1449771981298.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('123', '117', 'images/201512/goods_img/117_P_1449773975244.jpg', '', 'images/201512/thumb_img/117_thumb_P_1449773975962.jpg', 'images/201512/source_img/117_P_1449773975888.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('124', '116', 'images/201512/goods_img/116_P_1449774000686.jpg', '', 'images/201512/thumb_img/116_thumb_P_1449774000813.jpg', 'images/201512/source_img/116_P_1449774000445.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('125', '115', 'images/201512/goods_img/115_P_1449774020674.jpg', '', 'images/201512/thumb_img/115_thumb_P_1449774020642.jpg', 'images/201512/source_img/115_P_1449774020662.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('126', '114', 'images/201512/goods_img/114_P_1449774080020.jpg', '', 'images/201512/thumb_img/114_thumb_P_1449774080300.jpg', 'images/201512/source_img/114_P_1449774080467.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('127', '113', 'images/201512/goods_img/113_P_1449774098836.jpg', '', 'images/201512/thumb_img/113_thumb_P_1449774098877.jpg', 'images/201512/source_img/113_P_1449774098150.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('128', '102', 'images/201512/goods_img/102_P_1449774122142.jpg', '', 'images/201512/thumb_img/102_thumb_P_1449774122457.jpg', 'images/201512/source_img/102_P_1449774122184.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('129', '111', 'images/201512/goods_img/111_P_1449774140725.jpg', '', 'images/201512/thumb_img/111_thumb_P_1449774140623.jpg', 'images/201512/source_img/111_P_1449774140633.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('130', '110', 'images/201512/goods_img/110_P_1449776165883.jpg', '', 'images/201512/thumb_img/110_thumb_P_1449776165231.jpg', 'images/201512/source_img/110_P_1449776165583.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('131', '109', 'images/201512/goods_img/109_P_1449776203608.jpg', '', 'images/201512/thumb_img/109_thumb_P_1449776203511.jpg', 'images/201512/source_img/109_P_1449776203891.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('132', '108', 'images/201512/goods_img/108_P_1449776227220.jpg', '', 'images/201512/thumb_img/108_thumb_P_1449776227955.jpg', 'images/201512/source_img/108_P_1449776227330.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('133', '112', 'images/201512/goods_img/112_P_1449776407097.jpg', '', 'images/201512/thumb_img/112_thumb_P_1449776407144.jpg', 'images/201512/source_img/112_P_1449776407764.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('134', '107', 'images/201512/goods_img/107_P_1449776832585.jpg', '', 'images/201512/thumb_img/107_thumb_P_1449776832409.jpg', 'images/201512/source_img/107_P_1449776832813.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('135', '106', 'images/201512/goods_img/106_P_1449776858462.jpg', '', 'images/201512/thumb_img/106_thumb_P_1449776858873.jpg', 'images/201512/source_img/106_P_1449776858184.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('136', '105', 'images/201512/goods_img/105_P_1449776891543.jpg', '', 'images/201512/thumb_img/105_thumb_P_1449776891292.jpg', 'images/201512/source_img/105_P_1449776891046.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('137', '104', 'images/201512/goods_img/104_P_1449776919802.jpg', '', 'images/201512/thumb_img/104_thumb_P_1449776919934.jpg', 'images/201512/source_img/104_P_1449776919307.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('138', '103', 'images/201512/goods_img/103_P_1449776947013.jpg', '', 'images/201512/thumb_img/103_thumb_P_1449776947733.jpg', 'images/201512/source_img/103_P_1449776947696.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('139', '102', 'images/201512/goods_img/102_P_1449776973364.jpg', '', 'images/201512/thumb_img/102_thumb_P_1449776973810.jpg', 'images/201512/source_img/102_P_1449776973737.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('140', '101', 'images/201512/goods_img/101_P_1449777003519.jpg', '', 'images/201512/thumb_img/101_thumb_P_1449777003201.jpg', 'images/201512/source_img/101_P_1449777003182.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('141', '100', 'images/201512/goods_img/100_P_1449777113002.JPG', '', 'images/201512/thumb_img/100_thumb_P_1449777113169.jpg', 'images/201512/source_img/100_P_1449777113442.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('142', '99', 'images/201512/goods_img/99_P_1449777164787.jpg', '', 'images/201512/thumb_img/99_thumb_P_1449777164895.jpg', 'images/201512/source_img/99_P_1449777164019.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('143', '98', 'images/201512/goods_img/98_P_1449777200791.jpg', '', 'images/201512/thumb_img/98_thumb_P_1449777200047.jpg', 'images/201512/source_img/98_P_1449777200290.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('144', '97', 'images/201512/goods_img/97_P_1449777411369.JPG', '', 'images/201512/thumb_img/97_thumb_P_1449777411993.jpg', 'images/201512/source_img/97_P_1449777411696.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('145', '96', 'images/201512/goods_img/96_P_1449777489209.JPG', '', 'images/201512/thumb_img/96_thumb_P_1449777489871.jpg', 'images/201512/source_img/96_P_1449777489975.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('146', '95', 'images/201512/goods_img/95_P_1449777565624.JPG', '', 'images/201512/thumb_img/95_thumb_P_1449777565376.jpg', 'images/201512/source_img/95_P_1449777565425.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('147', '94', 'images/201512/goods_img/94_P_1449777634947.JPG', '', 'images/201512/thumb_img/94_thumb_P_1449777634480.jpg', 'images/201512/source_img/94_P_1449777634341.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('148', '93', 'images/201512/goods_img/93_P_1449777671784.JPG', '', 'images/201512/thumb_img/93_thumb_P_1449777671297.jpg', 'images/201512/source_img/93_P_1449777671470.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('149', '92', 'images/201512/goods_img/92_P_1449777700048.JPG', '', 'images/201512/thumb_img/92_thumb_P_1449777700173.jpg', 'images/201512/source_img/92_P_1449777700873.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('150', '91', 'images/201512/goods_img/91_P_1449777759209.JPG', '', 'images/201512/thumb_img/91_thumb_P_1449777759196.jpg', 'images/201512/source_img/91_P_1449777759915.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('151', '90', 'images/201512/goods_img/90_P_1449777802908.JPG', '', 'images/201512/thumb_img/90_thumb_P_1449777802065.jpg', 'images/201512/source_img/90_P_1449777802609.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('152', '89', 'images/201512/goods_img/89_P_1449777834221.JPG', '', 'images/201512/thumb_img/89_thumb_P_1449777834630.jpg', 'images/201512/source_img/89_P_1449777834404.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('153', '88', 'images/201512/goods_img/88_P_1449777893974.JPG', '', 'images/201512/thumb_img/88_thumb_P_1449777893670.jpg', 'images/201512/source_img/88_P_1449777893330.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('154', '87', 'images/201512/goods_img/87_P_1449777941397.JPG', '', 'images/201512/thumb_img/87_thumb_P_1449777941186.jpg', 'images/201512/source_img/87_P_1449777941260.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('155', '86', 'images/201512/goods_img/86_P_1449777997985.JPG', '', 'images/201512/thumb_img/86_thumb_P_1449777997314.jpg', 'images/201512/source_img/86_P_1449777997283.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('156', '85', 'images/201512/goods_img/85_P_1449778049648.jpg', '', 'images/201512/thumb_img/85_thumb_P_1449778049626.jpg', 'images/201512/source_img/85_P_1449778049837.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('157', '84', 'images/201512/goods_img/84_P_1449778101916.JPG', '', 'images/201512/thumb_img/84_thumb_P_1449778101353.jpg', 'images/201512/source_img/84_P_1449778101574.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('158', '83', 'images/201512/goods_img/83_P_1449778154866.JPG', '', 'images/201512/thumb_img/83_thumb_P_1449778154109.jpg', 'images/201512/source_img/83_P_1449778154769.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('159', '82', 'images/201512/goods_img/82_P_1449781683757.jpg', '', 'images/201512/thumb_img/82_thumb_P_1449781683037.jpg', 'images/201512/source_img/82_P_1449781683236.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('160', '81', 'images/201512/goods_img/81_P_1449781716930.jpg', '', 'images/201512/thumb_img/81_thumb_P_1449781716999.jpg', 'images/201512/source_img/81_P_1449781716408.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('161', '80', 'images/201512/goods_img/80_P_1449781825372.jpg', '', 'images/201512/thumb_img/80_thumb_P_1449781825471.jpg', 'images/201512/source_img/80_P_1449781825758.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('162', '79', 'images/201512/goods_img/79_P_1449781868692.jpg', '', 'images/201512/thumb_img/79_thumb_P_1449781868474.jpg', 'images/201512/source_img/79_P_1449781868149.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('163', '78', 'images/201512/goods_img/78_P_1449781914197.jpg', '', 'images/201512/thumb_img/78_thumb_P_1449781914775.jpg', 'images/201512/source_img/78_P_1449781914264.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('164', '77', 'images/201512/goods_img/77_P_1449781969466.jpg', '', 'images/201512/thumb_img/77_thumb_P_1449781969763.jpg', 'images/201512/source_img/77_P_1449781969111.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('165', '76', 'images/201512/goods_img/76_P_1449782006531.jpg', '', 'images/201512/thumb_img/76_thumb_P_1449782006843.jpg', 'images/201512/source_img/76_P_1449782006982.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('166', '68', 'images/201512/goods_img/68_P_1449782041081.jpg', '', 'images/201512/thumb_img/68_thumb_P_1449782041182.jpg', 'images/201512/source_img/68_P_1449782041463.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('167', '75', 'images/201512/goods_img/75_P_1449782666525.jpg', '', 'images/201512/thumb_img/75_thumb_P_1449782666529.jpg', 'images/201512/source_img/75_P_1449782666922.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('168', '74', 'images/201512/goods_img/74_P_1449782701899.jpg', '', 'images/201512/thumb_img/74_thumb_P_1449782701860.jpg', 'images/201512/source_img/74_P_1449782701744.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('169', '73', 'images/201512/goods_img/73_P_1449782737306.jpg', '', 'images/201512/thumb_img/73_thumb_P_1449782737658.jpg', 'images/201512/source_img/73_P_1449782737159.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('170', '72', 'images/201512/goods_img/72_P_1449782926483.jpg', '', 'images/201512/thumb_img/72_thumb_P_1449782926464.jpg', 'images/201512/source_img/72_P_1449782926971.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('171', '71', 'images/201512/goods_img/71_P_1449783139898.JPG', '', 'images/201512/thumb_img/71_thumb_P_1449783139966.jpg', 'images/201512/source_img/71_P_1449783139638.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('172', '70', 'images/201512/goods_img/70_P_1449783183784.JPG', '', 'images/201512/thumb_img/70_thumb_P_1449783183103.jpg', 'images/201512/source_img/70_P_1449783183149.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('173', '69', 'images/201512/goods_img/69_P_1449783247832.JPG', '', 'images/201512/thumb_img/69_thumb_P_1449783247925.jpg', 'images/201512/source_img/69_P_1449783247962.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('174', '68', 'images/201512/goods_img/68_P_1449783277541.JPG', '', 'images/201512/thumb_img/68_thumb_P_1449783277162.jpg', 'images/201512/source_img/68_P_1449783277560.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('175', '67', 'images/201512/goods_img/67_P_1449783364104.JPG', '', 'images/201512/thumb_img/67_thumb_P_1449783364437.jpg', 'images/201512/source_img/67_P_1449783364426.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('176', '66', 'images/201512/goods_img/66_P_1449783455060.jpg', '', 'images/201512/thumb_img/66_thumb_P_1449783455881.jpg', 'images/201512/source_img/66_P_1449783455145.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('177', '65', 'images/201512/goods_img/65_P_1449783504974.jpg', '', 'images/201512/thumb_img/65_thumb_P_1449783504461.jpg', 'images/201512/source_img/65_P_1449783504553.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('178', '64', 'images/201512/goods_img/64_P_1449783545955.jpg', '', 'images/201512/thumb_img/64_thumb_P_1449783545859.jpg', 'images/201512/source_img/64_P_1449783545723.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('179', '63', 'images/201512/goods_img/63_P_1449783583332.jpg', '', 'images/201512/thumb_img/63_thumb_P_1449783583054.jpg', 'images/201512/source_img/63_P_1449783583941.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('180', '62', 'images/201512/goods_img/62_P_1449783625570.jpg', '', 'images/201512/thumb_img/62_thumb_P_1449783625438.jpg', 'images/201512/source_img/62_P_1449783625216.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('181', '61', 'images/201512/goods_img/61_P_1449783823522.jpg', '', 'images/201512/thumb_img/61_thumb_P_1449783823180.jpg', 'images/201512/source_img/61_P_1449783823002.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('182', '60', 'images/201512/goods_img/60_P_1449783863047.jpg', '', 'images/201512/thumb_img/60_thumb_P_1449783863009.jpg', 'images/201512/source_img/60_P_1449783863202.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('183', '58', 'images/201512/goods_img/58_P_1449783907038.jpg', '', 'images/201512/thumb_img/58_thumb_P_1449783907060.jpg', 'images/201512/source_img/58_P_1449783907251.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('184', '57', 'images/201512/goods_img/57_P_1449783961888.JPG', '', 'images/201512/thumb_img/57_thumb_P_1449783961418.jpg', 'images/201512/source_img/57_P_1449783961721.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('185', '55', 'images/201512/goods_img/55_P_1449784219873.jpg', '', 'images/201512/thumb_img/55_thumb_P_1449784219456.jpg', 'images/201512/source_img/55_P_1449784219617.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('186', '54', 'images/201512/goods_img/54_P_1449784303388.JPG', '', 'images/201512/thumb_img/54_thumb_P_1449784303949.jpg', 'images/201512/source_img/54_P_1449784303041.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('187', '53', 'images/201512/goods_img/53_P_1449784361391.JPG', '', 'images/201512/thumb_img/53_thumb_P_1449784361051.jpg', 'images/201512/source_img/53_P_1449784361116.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('188', '52', 'images/201512/goods_img/52_P_1449784441160.JPG', '', 'images/201512/thumb_img/52_thumb_P_1449784441927.jpg', 'images/201512/source_img/52_P_1449784441153.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('189', '51', 'images/201512/goods_img/51_P_1449784537136.JPG', '', 'images/201512/thumb_img/51_thumb_P_1449784537207.jpg', 'images/201512/source_img/51_P_1449784537067.JPG');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('190', '59', 'images/201512/goods_img/59_P_1449784626782.JPG', '', 'images/201512/thumb_img/59_thumb_P_1449784626584.jpg', 'images/201512/source_img/59_P_1449784626352.JPG');
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_keywords`;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_mail_templates`;
CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('1', 'send_password', '1', 'å¯†ç æ‰¾å›', '{$user_name}æ‚¨å¥½ï¼\<br>\n<br>\næ‚¨å·²ç»è¿›è¡Œäº†å¯†ç é‡ç½®çš„æ“ä½œï¼Œè¯·ç‚¹å‡»ä»¥ä¸‹é“¾æ\¥(æˆ–è€…å¤åˆ¶åˆ°æ‚¨çš„æµè§ˆå™\¨):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\nä»¥ç¡®è®¤æ‚¨çš„æ–°å¯†ç é‡ç½®æ“ä½œï¼\<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('2', 'order_confirm', '0', 'è®¢å•ç¡®è®¤é€šçŸ¥', 'äº²çˆ±çš„{$order.consignee}ï¼Œä½ å¥½ï¼ \n\næˆ‘ä»¬å·²ç»æ”¶åˆ°æ‚¨äº {$order.formated_add_time} æäº¤çš„è®¢å•ï¼Œè¯¥è®¢å•ç¼–å·ä¸ºï¼š{$order.order_sn} è¯·è®°ä½è¿™ä¸ªç¼–å·ä»¥ä¾¿æ—¥åçš„æŸ¥è¯¢ã€\‚\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('3', 'deliver_notice', '1', 'å‘è´§é€šçŸ¥', 'äº²çˆ±çš„{$order.consignee}ã€‚ä½ å¥½ï¼</br></br>\n\næ‚¨çš„è®¢å•{$order.order_sn}å·²äº{$send_time}æŒ‰ç…§æ‚¨é¢„å®šçš„é…é€æ–¹å¼ç»™æ‚¨å‘è´§äº†ã€\‚</br>\n</br>\n{if $order.invoice_no}å‘è´§å•å·æ˜¯{$order.invoice_no}ã€\‚</br>{/if}\n</br>\nåœ¨æ‚¨æ”¶åˆ°è´§ç‰©ä¹‹åè¯·ç‚¹å‡»ä¸‹é¢çš„é“¾æ¥ç¡®è®¤æ‚¨å·²ç»æ”¶åˆ°è´§ç‰©ï¼š</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\nå¦‚æœæ‚¨è¿˜æ²¡æœ‰æ”¶åˆ°è´§ç‰©å¯ä»¥ç‚¹å‡»ä»¥ä¸‹é“¾æ¥ç»™æˆ‘ä»¬ç•™è¨€ï¼\š</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\nå†æ¬¡æ„Ÿè°¢æ‚¨å¯¹æˆ‘ä»¬çš„æ”¯æŒã€‚æ¬¢è¿æ‚¨çš„å†æ¬¡å…‰ä¸´ã€\‚ <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('4', 'order_cancel', '0', 'è®¢å•å–æ¶ˆ', 'äº²çˆ±çš„{$order.consignee}ï¼Œä½ å¥½ï¼ \n\næ‚¨çš„ç¼–å·ä¸ºï¼š{$order.order_sn}çš„è®¢å•å·²å–æ¶ˆã€\‚\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('5', 'order_invalid', '0', 'è®¢å•æ— æ•ˆ', 'äº²çˆ±çš„{$order.consignee}ï¼Œä½ å¥½ï¼\n\næ‚¨çš„ç¼–å·ä¸ºï¼š{$order.order_sn}çš„è®¢å•æ— æ•ˆã€\‚\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('6', 'send_bonus', '0', 'å‘çº¢åŒ\…', 'äº²çˆ±çš„{$user_name}æ‚¨å¥½ï¼\\n\næ­å–œæ‚¨è·å¾—äº†{$count}ä¸ªçº¢åŒ…ï¼Œé‡‘é¢{if $count > 1}åˆ†åˆ«{/if}ä¸º{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('7', 'group_buy', '1', 'å›¢è´­å•†å“', 'äº²çˆ±çš„{$consignee}ï¼Œæ‚¨å¥½ï¼<br>\n<br>\næ‚¨äº{$order_time}åœ¨æœ¬åº—å‚åŠ å›¢è´­å•†å“æ´»åŠ¨ï¼Œæ‰€è´­ä¹°çš„å•†å“åç§°ä¸ºï¼š{$goods_name}ï¼Œæ•°é‡ï¼š{$goods_number}ï¼Œè®¢å•å·ä¸ºï¼š{$order_sn}ï¼Œè®¢å•é‡‘é¢ä¸ºï¼š{$order_amount}<br>\n<br>\næ­¤å›¢è´­å•†å“ç°åœ¨å·²åˆ°ç»“æŸæ—¥æœŸï¼Œå¹¶è¾¾åˆ°æœ€ä½ä»·æ ¼ï¼Œæ‚¨ç°åœ¨å¯ä»¥å¯¹è¯¥è®¢å•ä»˜æ¬¾ã€\‚<br>\n<br>\nè¯·ç‚¹å‡»ä¸‹é¢çš„é“¾æ¥ï¼\š<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\nè¯·å°½å¿«ç™»å½•åˆ°ç”¨æˆ·ä¸­å¿ƒï¼ŒæŸ¥çœ‹æ‚¨çš„è®¢å•è¯¦æƒ…ä¿¡æ¯ã€\‚ <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('8', 'register_validate', '1', 'é‚®ä»¶éªŒè¯', '{$user_name}æ‚¨å¥½ï¼\<br><br>\r\n\r\nè¿™å°é‚®ä»¶æ˜\¯ {$shop_name} å‘é€çš„ã€‚ä½ æ”¶åˆ°è¿™å°é‚®ä»¶æ˜¯ä¸ºäº†éªŒè¯ä½ æ³¨å†Œé‚®ä»¶åœ°å€æ˜¯å¦æœ‰æ•ˆã€‚å¦‚æœæ‚¨å·²ç»é€šè¿‡éªŒè¯äº†ï¼Œè¯·å¿½ç•¥è¿™å°é‚®ä»¶ã€\‚<br>\r\nè¯·ç‚¹å‡»ä»¥ä¸‹é“¾æ\¥(æˆ–è€…å¤åˆ¶åˆ°æ‚¨çš„æµè§ˆå™\¨)æ¥éªŒè¯ä½ çš„é‚®ä»¶åœ°å€:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('9', 'virtual_card', '0', 'è™šæ‹Ÿå¡ç‰‡', 'äº²çˆ±çš„{$order.consignee}\r\nä½ å¥½ï¼æ‚¨çš„è®¢å•{$order.order_sn}ä¸­{$goods.goods_name} å•†å“çš„è¯¦ç»†ä¿¡æ¯å¦‚ä¸\‹:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}å¡å·ï¼š{$card.card_sn}{/if}{if $card.card_password}å¡ç‰‡å¯†ç ï¼š{$card.card_password}{/if}{if $card.end_date}æˆªè‡³æ—¥æœŸï¼š{$card.end_date}{/if}\r\n{/foreach}\r\nå†æ¬¡æ„Ÿè°¢æ‚¨å¯¹æˆ‘ä»¬çš„æ”¯æŒã€‚æ¬¢è¿æ‚¨çš„å†æ¬¡å…‰ä¸´ã€\‚\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('10', 'attention_list', '0', 'å…³æ³¨å•†å“', 'äº²çˆ±çš„{$user_name}æ‚¨å¥½~\n\næ‚¨å…³æ³¨çš„å•†å“ : {$goods_name} æœ€è¿‘å·²ç»æ›´æ–\°,è¯·æ‚¨æŸ¥çœ‹æœ€æ–°çš„å•†å“ä¿¡æ¯\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('11', 'remind_of_new_order', '0', 'æ–°è®¢å•é€šçŸ¥', 'äº²çˆ±çš„åº—é•¿ï¼Œæ‚¨å¥½ï¼\š\n   å¿«æ¥çœ‹çœ‹å§ï¼Œåˆæœ‰æ–°è®¢å•äº†ã€\‚\n    è®¢å•å\·:{$order.order_sn} \n è®¢å•é‡‘é¢:{$order.order_amount}ï¼\Œ\n ç”¨æˆ·è´­ä¹°å•†å“:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(è´§å·:{$goods_data.goods_sn})    {/foreach} \n\n æ”¶è´§äº\º:{$order.consignee}ï¼\Œ \n æ”¶è´§äººåœ°å€:{$order.address}ï¼\Œ\n æ”¶è´§äººç”µè¯\:{$order.tel} {$order.mobile}, \n é…é€æ–¹å¼\:{$order.shipping_name}(è´¹ç”¨:{$order.shipping_fee}), \n ä»˜æ¬¾æ–¹å¼:{$order.pay_name}(è´¹ç”¨:{$order.pay_fee})ã€\‚\n\n               ç³»ç»Ÿæé†’\n               {$send_date}', '1196239170', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('12', 'goods_booking', '1', 'ç¼ºè´§å›å¤', 'äº²çˆ±çš„{$user_name}ã€‚ä½ å¥½ï¼</br></br>{$dispose_note}</br></br>æ‚¨æäº¤çš„ç¼ºè´§å•†å“é“¾æ¥ä¸\º</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('13', 'user_message', '1', 'ç•™è¨€å›å¤', 'äº²çˆ±çš„{$user_name}ã€‚ä½ å¥½ï¼</br></br>å¯¹æ‚¨çš„ç•™è¨€ï¼\š</br>{$message_content}</br></br>åº—ä¸»ä½œäº†å¦‚ä¸‹å›å¤ï¼\š</br>{$message_note}</br></br>æ‚¨å¯ä»¥éšæ—¶å›åˆ°åº—ä¸­å’Œåº—ä¸»ç»§ç»­æ²Ÿé€šã€\‚</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('14', 'recomment', '1', 'ç”¨æˆ·è¯„è®ºå›å¤', 'äº²çˆ±çš„{$user_name}ã€‚ä½ å¥½ï¼</br></br>å¯¹æ‚¨çš„è¯„è®ºï¼š</br>â€œ{$comment}â€\</br></br>åº—ä¸»ä½œäº†å¦‚ä¸‹å›å¤ï¼\š</br>â€œ{$recomment}â€\</br></br>æ‚¨å¯ä»¥éšæ—¶å›åˆ°åº—ä¸­å’Œåº—ä¸»ç»§ç»­æ²Ÿé€šã€\‚</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_nav`;
CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_nav` ( `id`, `ctype`, `cid`, `name`, `ifshow`, `vieworder`, `opennew`, `url`, `type` ) VALUES  ('1', 'c', '2', 'é«˜ç«¯ç›¸å†Œ', '1', '1', '0', 'category.php?id=2', 'top');
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_pack`;
CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_package_goods`;
CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_pay_log`;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_plugins`;
CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_products`;
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_reg_extend_info`;
CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_reg_fields`;
CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('1', 'MSN', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('2', 'QQ', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('3', 'åŠå…¬ç”µè¯', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('4', 'å®¶åº­ç”µè¯', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('5', 'æ‰‹æœº', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('6', 'å¯†ç æ‰¾å›é—®é¢˜', '0', '1', '1', '1');
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1', '0', 'ä¸­å›½', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2', '1', 'åŒ—äº¬', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3', '1', 'å®‰å¾½', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('4', '1', 'ç¦å»º', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('5', '1', 'ç”˜è‚ƒ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('6', '1', 'å¹¿ä¸œ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('7', '1', 'å¹¿è¥¿', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('8', '1', 'è´µå·', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('9', '1', 'æµ·å—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('10', '1', 'æ²³åŒ—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('11', '1', 'æ²³å—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('12', '1', 'é»‘é¾™æ±\Ÿ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('13', '1', 'æ¹–åŒ—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('14', '1', 'æ¹–å—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('15', '1', 'å‰æ—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('16', '1', 'æ±Ÿè‹', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('17', '1', 'æ±Ÿè¥¿', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('18', '1', 'è¾½å®', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('19', '1', 'å†…è’™å\¤', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('20', '1', 'å®å¤', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('21', '1', 'é’æµ·', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('22', '1', 'å±±ä¸œ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('23', '1', 'å±±è¥¿', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('24', '1', 'é™•è¥¿', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('25', '1', 'ä¸Šæµ·', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('26', '1', 'å››å·', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('27', '1', 'å¤©æ´¥', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('28', '1', 'è¥¿è—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('29', '1', 'æ–°ç–†', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('30', '1', 'äº‘å—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('31', '1', 'æµ™æ±Ÿ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('32', '1', 'é‡åº†', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('33', '1', 'é¦™æ¸¯', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('34', '1', 'æ¾³é—¨', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('35', '1', 'å°æ¹¾', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('36', '3', 'å®‰åº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('37', '3', 'èšŒåŸ ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('38', '3', 'å·¢æ¹–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('39', '3', 'æ± å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('40', '3', 'æ»å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('41', '3', 'é˜œé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('42', '3', 'æ·®åŒ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('43', '3', 'æ·®å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('44', '3', 'é»„å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('45', '3', 'å…­å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('46', '3', 'é©¬éå±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('47', '3', 'å®¿å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('48', '3', 'é“œé™µ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('49', '3', 'èŠœæ¹–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('50', '3', 'å®£åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('51', '3', 'äº³å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('52', '2', 'åŒ—äº¬', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('53', '4', 'ç¦å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('54', '4', 'é¾™å²©', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('55', '4', 'å—å¹³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('56', '4', 'å®å¾·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('57', '4', 'è†ç”°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('58', '4', 'æ³‰å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('59', '4', 'ä¸‰æ˜', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('60', '4', 'å¦é—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('61', '4', 'æ¼³å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('62', '5', 'å…°å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('63', '5', 'ç™½é“¶', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('64', '5', 'å®šè¥¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('65', '5', 'ç”˜å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('66', '5', 'å˜‰å³ªå…\³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('67', '5', 'é‡‘æ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('68', '5', 'é…’æ³‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('69', '5', 'ä¸´å¤', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('70', '5', 'é™‡å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('71', '5', 'å¹³å‡‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('72', '5', 'åº†é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('73', '5', 'å¤©æ°´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('74', '5', 'æ­¦å¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('75', '5', 'å¼ æ–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('76', '6', 'å¹¿å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('77', '6', 'æ·±åœ³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('78', '6', 'æ½®å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('79', '6', 'ä¸œè', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('80', '6', 'ä½›å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('81', '6', 'æ²³æº', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('82', '6', 'æƒ å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('83', '6', 'æ±Ÿé—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('84', '6', 'æ­é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('85', '6', 'èŒ‚å', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('86', '6', 'æ¢…å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('87', '6', 'æ¸…è¿œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('88', '6', 'æ±•å¤´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('89', '6', 'æ±•å°¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('90', '6', 'éŸ¶å…³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('91', '6', 'é˜³æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('92', '6', 'äº‘æµ®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('93', '6', 'æ¹›æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('94', '6', 'è‚‡åº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('95', '6', 'ä¸­å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('96', '6', 'ç æµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('97', '7', 'å—å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('98', '7', 'æ¡‚æ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('99', '7', 'ç™¾è‰²', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('100', '7', 'åŒ—æµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('101', '7', 'å´‡å·¦', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('102', '7', 'é˜²åŸæ¸\¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('103', '7', 'è´µæ¸¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('104', '7', 'æ²³æ± ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('105', '7', 'è´ºå·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('106', '7', 'æ¥å®¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('107', '7', 'æŸ³å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('108', '7', 'é’¦å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('109', '7', 'æ¢§å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('110', '7', 'ç‰æ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('111', '8', 'è´µé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('112', '8', 'å®‰é¡º', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('113', '8', 'æ¯•èŠ‚', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('114', '8', 'å…­ç›˜æ°\´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('115', '8', 'é»”ä¸œå\—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('116', '8', 'é»”å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('117', '8', 'é»”è¥¿å\—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('118', '8', 'é“œä»', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('119', '8', 'éµä¹‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('120', '9', 'æµ·å£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('121', '9', 'ä¸‰äºš', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('122', '9', 'ç™½æ²™', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('123', '9', 'ä¿äº­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('124', '9', 'æ˜Œæ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('125', '9', 'æ¾„è¿ˆå\¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('126', '9', 'å®šå®‰å\¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('127', '9', 'ä¸œæ–¹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('128', '9', 'ä¹ä¸œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('129', '9', 'ä¸´é«˜å\¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('130', '9', 'é™µæ°´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('131', '9', 'ç¼æµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('132', '9', 'ç¼ä¸­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('133', '9', 'å±¯æ˜Œå\¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('134', '9', 'ä¸‡å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('135', '9', 'æ–‡æ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('136', '9', 'äº”æŒ‡å±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('137', '9', 'å„‹å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('138', '10', 'çŸ³å®¶åº\„', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('139', '10', 'ä¿å®š', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('140', '10', 'æ²§å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('141', '10', 'æ‰¿å¾·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('142', '10', 'é‚¯éƒ¸', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('143', '10', 'è¡¡æ°´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('144', '10', 'å»ŠåŠ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('145', '10', 'ç§¦çš‡å²\›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('146', '10', 'å”å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('147', '10', 'é‚¢å°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('148', '10', 'å¼ å®¶å\£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('149', '11', 'éƒ‘å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('150', '11', 'æ´›é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('151', '11', 'å¼€å°\', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('152', '11', 'å®‰é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('153', '11', 'é¹¤å£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('154', '11', 'æµæº', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('155', '11', 'ç„¦ä½œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('156', '11', 'å—é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('157', '11', 'å¹³é¡¶å±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('158', '11', 'ä¸‰é—¨å³\¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('159', '11', 'å•†ä¸˜', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('160', '11', 'æ–°ä¹¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('161', '11', 'ä¿¡é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('162', '11', 'è®¸æ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('163', '11', 'å‘¨å£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('164', '11', 'é©»é©¬åº\—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('165', '11', 'æ¼¯æ²³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('166', '11', 'æ¿®é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('167', '12', 'å“ˆå°”æ»\¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('168', '12', 'å¤§åº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('169', '12', 'å¤§å…´å®‰å²­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('170', '12', 'é¹¤å²—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('171', '12', 'é»‘æ²³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('172', '12', 'é¸¡è¥¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('173', '12', 'ä½³æœ¨æ–\¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('174', '12', 'ç‰¡ä¸¹æ±\Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('175', '12', 'ä¸ƒå°æ²\³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('176', '12', 'é½é½å“ˆå°”', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('177', '12', 'åŒé¸­å±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('178', '12', 'ç»¥åŒ–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('179', '12', 'ä¼Šæ˜¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('180', '13', 'æ­¦æ±‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('181', '13', 'ä»™æ¡ƒ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('182', '13', 'é„‚å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('183', '13', 'é»„å†ˆ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('184', '13', 'é»„çŸ³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('185', '13', 'è†é—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('186', '13', 'è†å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('187', '13', 'æ½œæ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('188', '13', 'ç¥å†œæ¶æ—åŒ\º', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('189', '13', 'åå °', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('190', '13', 'éšå·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('191', '13', 'å¤©é—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('192', '13', 'å’¸å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('193', '13', 'è¥„æ¨Š', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('194', '13', 'å­æ„Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('195', '13', 'å®œæ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('196', '13', 'æ©æ–½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('197', '14', 'é•¿æ²™', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('198', '14', 'å¼ å®¶ç•\Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('199', '14', 'å¸¸å¾·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('200', '14', 'éƒ´å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('201', '14', 'è¡¡é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('202', '14', 'æ€€åŒ\–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('203', '14', 'å¨„åº•', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('204', '14', 'é‚µé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('205', '14', 'æ¹˜æ½­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('206', '14', 'æ¹˜è¥¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('207', '14', 'ç›Šé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('208', '14', 'æ°¸å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('209', '14', 'å²³é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('210', '14', 'æ ªæ´²', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('211', '15', 'é•¿æ˜¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('212', '15', 'å‰æ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('213', '15', 'ç™½åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('214', '15', 'ç™½å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('215', '15', 'è¾½æº', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('216', '15', 'å››å¹³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('217', '15', 'æ¾åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('218', '15', 'é€šåŒ–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('219', '15', 'å»¶è¾¹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('220', '16', 'å—äº¬', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('221', '16', 'è‹å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('222', '16', 'æ— é”¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('223', '16', 'å¸¸å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('224', '16', 'æ·®å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('225', '16', 'è¿äº‘æ¸\¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('226', '16', 'å—é€\š', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('227', '16', 'å®¿è¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('228', '16', 'æ³°å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('229', '16', 'å¾å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('230', '16', 'ç›åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('231', '16', 'æ‰¬å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('232', '16', 'é•‡æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('233', '17', 'å—æ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('234', '17', 'æŠšå·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('235', '17', 'èµ£å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('236', '17', 'å‰å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('237', '17', 'æ™¯å¾·é•\‡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('238', '17', 'ä¹æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('239', '17', 'èä¹¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('240', '17', 'ä¸Šé¥¶', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('241', '17', 'æ–°ä½™', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('242', '17', 'å®œæ˜¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('243', '17', 'é¹°æ½­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('244', '18', 'æ²ˆé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('245', '18', 'å¤§è¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('246', '18', 'éå±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('247', '18', 'æœ¬æºª', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('248', '18', 'æœé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('249', '18', 'ä¸¹ä¸œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('250', '18', 'æŠšé¡º', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('251', '18', 'é˜œæ–°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('252', '18', 'è‘«èŠ¦å²\›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('253', '18', 'é”¦å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('254', '18', 'è¾½é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('255', '18', 'ç›˜é”¦', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('256', '18', 'é“å²­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('257', '18', 'è¥å£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('258', '19', 'å‘¼å’Œæµ©ç‰¹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('259', '19', 'é˜¿æ‹‰å–„ç›Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('260', '19', 'å·´å½¦æ·–å°”ç›\Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('261', '19', 'åŒ…å¤´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('262', '19', 'èµ¤å³°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('263', '19', 'é„‚å°”å¤šæ–¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('264', '19', 'å‘¼ä¼¦è´å°”', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('265', '19', 'é€šè¾½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('266', '19', 'ä¹Œæµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('267', '19', 'ä¹Œå…°å¯Ÿå¸ƒå¸\‚', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('268', '19', 'é”¡æ—éƒ­å‹’ç›\Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('269', '19', 'å…´å®‰ç›\Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('270', '20', 'é“¶å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('271', '20', 'å›ºåŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('272', '20', 'çŸ³å˜´å±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('273', '20', 'å´å¿ ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('274', '20', 'ä¸­å«', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('275', '21', 'è¥¿å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('276', '21', 'æœæ´›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('277', '21', 'æµ·åŒ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('278', '21', 'æµ·ä¸œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('279', '21', 'æµ·å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('280', '21', 'æµ·è¥¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('281', '21', 'é»„å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('282', '21', 'ç‰æ ‘', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('283', '22', 'æµå—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('284', '22', 'é’å²›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('285', '22', 'æ»¨å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('286', '22', 'å¾·å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('287', '22', 'ä¸œè¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('288', '22', 'èæ³½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('289', '22', 'æµå®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('290', '22', 'è±èŠœ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('291', '22', 'èŠåŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('292', '22', 'ä¸´æ²‚', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('293', '22', 'æ—¥ç…§', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('294', '22', 'æ³°å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('295', '22', 'å¨æµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('296', '22', 'æ½åŠ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('297', '22', 'çƒŸå°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('298', '22', 'æ£åº„', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('299', '22', 'æ·„åš', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('300', '23', 'å¤ªåŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('301', '23', 'é•¿æ²»', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('302', '23', 'å¤§åŒ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('303', '23', 'æ™‹åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('304', '23', 'æ™‹ä¸­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('305', '23', 'ä¸´æ±¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('306', '23', 'å•æ¢', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('307', '23', 'æœ”å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('308', '23', 'å¿»å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('309', '23', 'é˜³æ³‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('310', '23', 'è¿åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('311', '24', 'è¥¿å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('312', '24', 'å®‰åº·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('313', '24', 'å®é¸¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('314', '24', 'æ±‰ä¸­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('315', '24', 'å•†æ´›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('316', '24', 'é“œå·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('317', '24', 'æ¸­å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('318', '24', 'å’¸é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('319', '24', 'å»¶å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('320', '24', 'æ¦†æ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('321', '25', 'ä¸Šæµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('322', '26', 'æˆéƒ½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('323', '26', 'ç»µé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('324', '26', 'é˜¿å', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('325', '26', 'å·´ä¸­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('326', '26', 'è¾¾å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('327', '26', 'å¾·é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('328', '26', 'ç”˜å­œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('329', '26', 'å¹¿å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('330', '26', 'å¹¿å…ƒ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('331', '26', 'ä¹å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('332', '26', 'å‡‰å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('333', '26', 'çœ‰å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('334', '26', 'å—å……', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('335', '26', 'å†…æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('336', '26', 'æ”€æèŠ±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('337', '26', 'é‚å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('338', '26', 'é›…å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('339', '26', 'å®œå®¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('340', '26', 'èµ„é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('341', '26', 'è‡ªè´¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('342', '26', 'æ³¸å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('343', '27', 'å¤©æ´¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('344', '28', 'æ‹‰è¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('345', '28', 'é˜¿é‡Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('346', '28', 'æ˜Œéƒ½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('347', '28', 'æ—èŠ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('348', '28', 'é‚£æ›²', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('349', '28', 'æ—¥å–€åˆ\™', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('350', '28', 'å±±å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('351', '29', 'ä¹Œé²æœ¨é½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('352', '29', 'é˜¿å…‹è‹\', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('353', '29', 'é˜¿æ‹‰å°\”', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('354', '29', 'å·´éŸ³éƒ­æ¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('355', '29', 'åšå°”å¡”æ‹‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('356', '29', 'æ˜Œå‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('357', '29', 'å“ˆå¯†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('358', '29', 'å’Œç”°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('359', '29', 'å–€ä»€', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('360', '29', 'å…‹æ‹‰ç›ä¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('361', '29', 'å…‹å­œå‹’è‹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('362', '29', 'çŸ³æ²³å­\', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('363', '29', 'å›¾æœ¨èˆ’å…‹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('364', '29', 'åé²ç•\ª', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('365', '29', 'äº”å®¶æ¸\ ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('366', '29', 'ä¼ŠçŠ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('367', '30', 'æ˜†æ˜', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('368', '30', 'æ€’æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('369', '30', 'æ™®æ´±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('370', '30', 'ä¸½æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('371', '30', 'ä¿å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('372', '30', 'æ¥šé›„', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('373', '30', 'å¤§ç†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('374', '30', 'å¾·å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('375', '30', 'è¿ªåº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('376', '30', 'çº¢æ²³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('377', '30', 'ä¸´æ²§', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('378', '30', 'æ›²é–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('379', '30', 'æ–‡å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('380', '30', 'è¥¿åŒç‰ˆçº³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('381', '30', 'ç‰æºª', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('382', '30', 'æ˜­é€\š', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('383', '31', 'æ­å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('384', '31', 'æ¹–å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('385', '31', 'å˜‰å…´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('386', '31', 'é‡‘å', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('387', '31', 'ä¸½æ°´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('388', '31', 'å®æ³¢', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('389', '31', 'ç»å…´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('390', '31', 'å°å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('391', '31', 'æ¸©å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('392', '31', 'èˆŸå±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('393', '31', 'è¡¢å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('394', '32', 'é‡åº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('395', '33', 'é¦™æ¸¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('396', '34', 'æ¾³é—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('397', '35', 'å°æ¹¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('398', '36', 'è¿æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('399', '36', 'å¤§è§‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('400', '36', 'å®œç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('401', '36', 'æ¡åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('402', '36', 'æ€€å®å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('403', '36', 'æé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('404', '36', 'æ½œå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('405', '36', 'å¤ªæ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('406', '36', 'å®¿æ¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('407', '36', 'æœ›æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('408', '36', 'å²³è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('409', '37', 'ä¸­å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('410', '37', 'ä¸œå¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('411', '37', 'è¥¿å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('412', '37', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('413', '37', 'æ€€è¿œå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('414', '37', 'äº”æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('415', '37', 'å›ºé•‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('416', '38', 'å±…å·¢åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('417', '38', 'åºæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('418', '38', 'æ— ä¸ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('419', '38', 'å«å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('420', '38', 'å’Œå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('421', '39', 'è´µæ± åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('422', '39', 'ä¸œè‡³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('423', '39', 'çŸ³å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('424', '39', 'é’é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('425', '40', 'ç…çŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('426', '40', 'å—è°¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('427', '40', 'å¤©é•¿å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('428', '40', 'æ˜å…‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('429', '40', 'æ¥å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('430', '40', 'å…¨æ¤’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('431', '40', 'å®šè¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('432', '40', 'å‡¤é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('433', '41', 'èšŒå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('434', '41', 'é¾™å­æ¹–åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('435', '41', 'ç¦¹ä¼šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('436', '41', 'æ·®ä¸ŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('437', '41', 'é¢å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('438', '41', 'é¢ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('439', '41', 'é¢æ³‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('440', '41', 'ç•Œé¦–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('441', '41', 'ä¸´æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('442', '41', 'å¤ªå’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('443', '41', 'é˜œå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('444', '41', 'é¢–ä¸Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('445', '42', 'ç›¸å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('446', '42', 'æœé›†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('447', '42', 'çƒˆå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('448', '42', 'æ¿‰æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('449', '43', 'ç”°å®¶åºµåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('450', '43', 'å¤§é€šåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('451', '43', 'è°¢å®¶é›†åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('452', '43', 'å…«å…¬å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('453', '43', 'æ½˜é›†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('454', '43', 'å‡¤å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('455', '44', 'å±¯æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('456', '44', 'é»„å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('457', '44', 'å¾½å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('458', '44', 'æ­™å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('459', '44', 'ä¼‘å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('460', '44', 'é»Ÿå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('461', '44', 'ç¥é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('462', '45', 'é‡‘å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('463', '45', 'è£•å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('464', '45', 'å¯¿å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('465', '45', 'éœé‚±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('466', '45', 'èˆ’åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('467', '45', 'é‡‘å¯¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('468', '45', 'éœå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('469', '46', 'é›¨å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('470', '46', 'èŠ±å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('471', '46', 'é‡‘å®¶åº„åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('472', '46', 'å½“æ¶‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('473', '47', 'åŸ‡æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('474', '47', 'ç €å±±å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('475', '47', 'è§å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('476', '47', 'çµç’§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('477', '47', 'æ³—å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('478', '48', 'é“œå®˜å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('479', '48', 'ç‹®å­å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('480', '48', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('481', '48', 'é“œé™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('482', '49', 'é•œæ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('483', '49', 'å¼‹æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('484', '49', 'é¸ æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('485', '49', 'ä¸‰å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('486', '49', 'èŠœæ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('487', '49', 'ç¹æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('488', '49', 'å—é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('489', '50', 'å®£å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('490', '50', 'å®å›½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('491', '50', 'éƒæºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('492', '50', 'å¹¿å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('493', '50', 'æ³¾å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('494', '50', 'ç»©æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('495', '50', 'æ—Œå¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('496', '51', 'æ¶¡é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('497', '51', 'è’™åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('498', '51', 'åˆ©è¾›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('499', '51', 'è°¯åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('500', '52', 'ä¸œåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('501', '52', 'è¥¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('502', '52', 'æµ·æ·€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('503', '52', 'æœé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('504', '52', 'å´‡æ–‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('505', '52', 'å®£æ­¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('506', '52', 'ä¸°å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('507', '52', 'çŸ³æ™¯å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('508', '52', 'æˆ¿å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('509', '52', 'é—¨å¤´æ²ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('510', '52', 'é€šå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('511', '52', 'é¡ºä¹‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('512', '52', 'æ˜Œå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('513', '52', 'æ€€æŸ”åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('514', '52', 'å¹³è°·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('515', '52', 'å¤§å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('516', '52', 'å¯†äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('517', '52', 'å»¶åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('518', '53', 'é¼“æ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('519', '53', 'å°æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('520', '53', 'ä»“å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('521', '53', 'é©¬å°¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('522', '53', 'æ™‹å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('523', '53', 'ç¦æ¸…å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('524', '53', 'é•¿ä¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('525', '53', 'é—½ä¾¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('526', '53', 'è¿æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('527', '53', 'ç½—æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('528', '53', 'é—½æ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('529', '53', 'æ°¸æ³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('530', '53', 'å¹³æ½­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('531', '54', 'æ–°ç½—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('532', '54', 'æ¼³å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('533', '54', 'é•¿æ±€å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('534', '54', 'æ°¸å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('535', '54', 'ä¸Šæ­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('536', '54', 'æ­¦å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('537', '54', 'è¿åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('538', '55', 'å»¶å¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('539', '55', 'é‚µæ­¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('540', '55', 'æ­¦å¤·å±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('541', '55', 'å»ºç“¯å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('542', '55', 'å»ºé˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('543', '55', 'é¡ºæ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('544', '55', 'æµ¦åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('545', '55', 'å…‰æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('546', '55', 'æ¾æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('547', '55', 'æ”¿å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('548', '56', 'è•‰åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('549', '56', 'ç¦å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('550', '56', 'ç¦é¼å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('551', '56', 'éœæµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('552', '56', 'å¤ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('553', '56', 'å±å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('554', '56', 'å¯¿å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('555', '56', 'å‘¨å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('556', '56', 'æŸ˜è£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('557', '57', 'åŸå¢åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('558', '57', 'æ¶µæ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('559', '57', 'è”åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('560', '57', 'ç§€å±¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('561', '57', 'ä»™æ¸¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('562', '58', 'é²¤åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('563', '58', 'ä¸°æ³½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('564', '58', 'æ´›æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('565', '58', 'æ¸…æ¿›å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('566', '58', 'æ³‰æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('567', '58', 'çŸ³ç‹®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('568', '58', 'æ™‹æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('569', '58', 'å—å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('570', '58', 'æƒ å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('571', '58', 'å®‰æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('572', '58', 'æ°¸æ˜¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('573', '58', 'å¾·åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('574', '58', 'é‡‘é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('575', '59', 'æ¢…åˆ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('576', '59', 'ä¸‰å…ƒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('577', '59', 'æ°¸å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('578', '59', 'æ˜æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('579', '59', 'æ¸…æµå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('580', '59', 'å®åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('581', '59', 'å¤§ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('582', '59', 'å°¤æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('583', '59', 'æ²™å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('584', '59', 'å°†ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('585', '59', 'æ³°å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('586', '59', 'å»ºå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('587', '60', 'æ€æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('588', '60', 'æµ·æ²§åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('589', '60', 'æ¹–é‡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('590', '60', 'é›†ç¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('591', '60', 'åŒå®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('592', '60', 'ç¿”å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('593', '61', 'èŠ—åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('594', '61', 'é¾™æ–‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('595', '61', 'é¾™æµ·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('596', '61', 'äº‘éœ„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('597', '61', 'æ¼³æµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('598', '61', 'è¯å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('599', '61', 'é•¿æ³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('600', '61', 'ä¸œå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('601', '61', 'å—é–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('602', '61', 'å¹³å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('603', '61', 'åå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('604', '62', 'çš‹å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('605', '62', 'åŸå…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('606', '62', 'ä¸ƒé‡Œæ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('607', '62', 'è¥¿å›ºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('608', '62', 'å®‰å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('609', '62', 'çº¢å¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('610', '62', 'æ°¸ç™»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('611', '62', 'æ¦†ä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('612', '63', 'ç™½é“¶åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('613', '63', 'å¹³å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('614', '63', 'ä¼šå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('615', '63', 'æ™¯æ³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('616', '63', 'é–è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('617', '64', 'ä¸´æ´®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('618', '64', 'é™‡è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('619', '64', 'é€šæ¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('620', '64', 'æ¸­æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('621', '64', 'æ¼³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('622', '64', 'å²·å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('623', '64', 'å®‰å®šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('624', '64', 'å®‰å®šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('625', '65', 'åˆä½œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('626', '65', 'ä¸´æ½­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('627', '65', 'å“å°¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('628', '65', 'èˆŸæ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('629', '65', 'è¿­éƒ¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('630', '65', 'ç›æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('631', '65', 'ç¢Œæ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('632', '65', 'å¤æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('633', '66', 'å˜‰å³ªå…³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('634', '67', 'é‡‘å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('635', '67', 'æ°¸æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('636', '68', 'è‚ƒå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('637', '68', 'ç‰é—¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('638', '68', 'æ•¦ç…Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('639', '68', 'é‡‘å¡”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('640', '68', 'ç“œå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('641', '68', 'è‚ƒåŒ—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('642', '68', 'é˜¿å…‹å¡\', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('643', '69', 'ä¸´å¤å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('644', '69', 'ä¸´å¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('645', '69', 'åº·ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('646', '69', 'æ°¸é–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('647', '69', 'å¹¿æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('648', '69', 'å’Œæ”¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('649', '69', 'ä¸œä¹¡æ—è‡ªæ²»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('650', '69', 'ç§¯çŸ³å±\±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('651', '70', 'æˆå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('652', '70', 'å¾½å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('653', '70', 'åº·å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('654', '70', 'ç¤¼å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('655', '70', 'ä¸¤å½“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('656', '70', 'æ–‡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('657', '70', 'è¥¿å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('658', '70', 'å®•æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('659', '70', 'æ­¦éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('660', '71', 'å´‡ä¿¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('661', '71', 'åäº­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('662', '71', 'é™å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('663', '71', 'çµå°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('664', '71', 'å´†å³’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('665', '71', 'åº„æµªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('666', '71', 'æ³¾å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('667', '72', 'åˆæ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('668', '72', 'åæ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('669', '72', 'ç¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('670', '72', 'å®å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('671', '72', 'åº†åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('672', '72', 'è¥¿å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('673', '72', 'é•‡åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('674', '72', 'æ­£å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('675', '73', 'ç”˜è°·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('676', '73', 'ç§¦å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('677', '73', 'æ¸…æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('678', '73', 'ç§¦å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('679', '73', 'éº¦ç§¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('680', '73', 'æ­¦å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('681', '73', 'å¼ å®¶å·\', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('682', '74', 'å¤æµªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('683', '74', 'æ°‘å‹¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('684', '74', 'å¤©ç¥', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('685', '74', 'å‡‰å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('686', '75', 'é«˜å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('687', '75', 'ä¸´æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('688', '75', 'æ°‘ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('689', '75', 'å±±ä¸¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('690', '75', 'è‚ƒå—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('691', '75', 'ç”˜å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('692', '76', 'ä»åŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('693', '76', 'å¤©æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('694', '76', 'ä¸œå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('695', '76', 'ç™½äº‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('696', '76', 'æµ·ç åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('697', '76', 'è”æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('698', '76', 'è¶Šç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('699', '76', 'é»„åŸ”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('700', '76', 'ç•ªç¦ºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('701', '76', 'èŠ±éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('702', '76', 'å¢åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('703', '76', 'ä»åŒ–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('704', '76', 'å¸‚éƒŠ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('705', '77', 'ç¦ç”°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('706', '77', 'ç½—æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('707', '77', 'å—å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('708', '77', 'å®å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('709', '77', 'é¾™å²—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('710', '77', 'ç›ç”°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('711', '78', 'æ¹˜æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('712', '78', 'æ½®å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('713', '78', 'é¥¶å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('714', '79', 'å—åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('715', '79', 'ä¸œåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('716', '79', 'ä¸‡æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('717', '79', 'èåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('718', '79', 'çŸ³é¾™é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('719', '79', 'è™é—¨é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('720', '79', 'éº»æ¶Œé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('721', '79', 'é“æ»˜é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('722', '79', 'çŸ³ç¢£é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('723', '79', 'æ²™ç”°é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('724', '79', 'æœ›ç‰›å¢©é•‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('725', '79', 'æ´ªæ¢…é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('726', '79', 'èŒ¶å±±é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('727', '79', 'å¯®æ­¥é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('728', '79', 'å¤§å²­å±±é•‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('729', '79', 'å¤§æœ—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('730', '79', 'é»„æ±Ÿé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('731', '79', 'æ¨Ÿæœ¨å¤\´', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('732', '79', 'å‡¤å²—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('733', '79', 'å¡˜å¦é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('734', '79', 'è°¢å²—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('735', '79', 'åšè¡—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('736', '79', 'æ¸…æºªé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('737', '79', 'å¸¸å¹³é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('738', '79', 'æ¡¥å¤´é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('739', '79', 'æ¨ªæ²¥é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('740', '79', 'ä¸œå‘é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('741', '79', 'ä¼çŸ³é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('742', '79', 'çŸ³æ’é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('743', '79', 'é•¿å®‰é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('744', '79', 'ä¸­å ‚é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('745', '79', 'é«˜åŸ—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('746', '80', 'ç¦…åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('747', '80', 'å—æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('748', '80', 'é¡ºå¾·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('749', '80', 'ä¸‰æ°´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('750', '80', 'é«˜æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('751', '81', 'ä¸œæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('752', '81', 'å’Œå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('753', '81', 'æºåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('754', '81', 'è¿å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('755', '81', 'é¾™å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('756', '81', 'ç´«é‡‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('757', '82', 'æƒ é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('758', '82', 'æƒ åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('759', '82', 'å¤§äºšæ¹\¾', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('760', '82', 'åšç½—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('761', '82', 'æƒ ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('762', '82', 'é¾™é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('763', '83', 'æ±Ÿæµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('764', '83', 'è“¬æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('765', '83', 'æ–°ä¼šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('766', '83', 'å°å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('767', '83', 'å¼€å¹³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('768', '83', 'é¹¤å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('769', '83', 'æ©å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('770', '84', 'æ¦•åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('771', '84', 'æ™®å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('772', '84', 'æ­ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('773', '84', 'æ­è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('774', '84', 'æƒ æ¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('775', '85', 'èŒ‚å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('776', '85', 'èŒ‚æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('777', '85', 'é«˜å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('778', '85', 'åŒ–å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('779', '85', 'ä¿¡å®œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('780', '85', 'ç”µç™½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('781', '86', 'æ¢…å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('782', '86', 'æ¢…æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('783', '86', 'å…´å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('784', '86', 'å¤§åŸ”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('785', '86', 'ä¸°é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('786', '86', 'äº”åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('787', '86', 'å¹³è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('788', '86', 'è•‰å²­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('789', '87', 'æ¸…åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('790', '87', 'è‹±å¾·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('791', '87', 'è¿å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('792', '87', 'ä½›å†ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('793', '87', 'é˜³å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('794', '87', 'æ¸…æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('795', '87', 'è¿å±±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('796', '87', 'è¿å—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('797', '88', 'å—æ¾³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('798', '88', 'æ½®é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('799', '88', 'æ¾„æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('800', '88', 'é¾™æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('801', '88', 'é‡‘å¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('802', '88', 'æ¿ æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('803', '88', 'æ½®å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('804', '89', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('805', '89', 'é™†ä¸°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('806', '89', 'æµ·ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('807', '89', 'é™†æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('808', '90', 'æ›²æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('809', '90', 'æµˆæ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('810', '90', 'æ­¦æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('811', '90', 'æ›²æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('812', '90', 'ä¹æ˜Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('813', '90', 'å—é›„å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('814', '90', 'å§‹å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('815', '90', 'ä»åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('816', '90', 'ç¿æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('817', '90', 'æ–°ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('818', '90', 'ä¹³æº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('819', '91', 'æ±ŸåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('820', '91', 'é˜³æ˜¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('821', '91', 'é˜³è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('822', '91', 'é˜³ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('823', '92', 'äº‘åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('824', '92', 'ç½—å®šå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('825', '92', 'æ–°å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('826', '92', 'éƒå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('827', '92', 'äº‘å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('828', '93', 'èµ¤ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('829', '93', 'éœå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('830', '93', 'å¡å¤´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('831', '93', 'éº»ç« åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('832', '93', 'å»‰æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('833', '93', 'é›·å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('834', '93', 'å´å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('835', '93', 'é‚æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('836', '93', 'å¾é—»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('837', '94', 'è‚‡åº†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('838', '94', 'é«˜è¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('839', '94', 'å››ä¼šå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('840', '94', 'å¹¿å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('841', '94', 'æ€€é›†å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('842', '94', 'å°å¼€å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('843', '94', 'å¾·åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('844', '95', 'çŸ³å²è¡—é“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('845', '95', 'ä¸œåŒºè¡—é“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('846', '95', 'è¥¿åŒºè¡—é“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('847', '95', 'ç¯åŸè¡—é“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('848', '95', 'ä¸­å±±æ¸¯è¡—é\“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('849', '95', 'äº”æ¡‚å±±è¡—é\“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('850', '96', 'é¦™æ´²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('851', '96', 'æ–—é—¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('852', '96', 'é‡‘æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('853', '97', 'é‚•å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('854', '97', 'é’ç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('855', '97', 'å…´å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('856', '97', 'è‰¯åº†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('857', '97', 'è¥¿ä¹¡å¡˜åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('858', '97', 'æ±Ÿå—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('859', '97', 'æ­¦é¸£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('860', '97', 'éš†å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('861', '97', 'é©¬å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('862', '97', 'ä¸Šæ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('863', '97', 'å®¾é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('864', '97', 'æ¨ªå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('865', '98', 'ç§€å³°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('866', '98', 'å å½©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('867', '98', 'è±¡å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('868', '98', 'ä¸ƒæ˜ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('869', '98', 'é›å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('870', '98', 'é˜³æœ”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('871', '98', 'ä¸´æ¡‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('872', '98', 'çµå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('873', '98', 'å…¨å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('874', '98', 'å¹³ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('875', '98', 'å…´å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('876', '98', 'çŒé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('877', '98', 'è”æµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('878', '98', 'èµ„æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('879', '98', 'æ°¸ç¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('880', '98', 'é¾™èƒœ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('881', '98', 'æ­åŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('882', '99', 'å³æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('883', '99', 'å‡Œäº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('884', '99', 'å¹³æœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('885', '99', 'è¥¿æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('886', '99', 'ä¹ä¸šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('887', '99', 'å¾·ä¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('888', '99', 'ç”°æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('889', '99', 'ç”°é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('890', '99', 'é–è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('891', '99', 'ç”°ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('892', '99', 'é‚£å¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('893', '99', 'éš†æ—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('894', '100', 'æµ·åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('895', '100', 'é“¶æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('896', '100', 'é“å±±æ¸¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('897', '100', 'åˆæµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('898', '101', 'æ±Ÿå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('899', '101', 'å‡­ç¥¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('900', '101', 'å®æ˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('901', '101', 'æ‰¶ç»¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('902', '101', 'é¾™å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('903', '101', 'å¤§æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('904', '101', 'å¤©ç­‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('905', '102', 'æ¸¯å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('906', '102', 'é˜²åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('907', '102', 'ä¸œå…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('908', '102', 'ä¸Šæ€å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('909', '103', 'æ¸¯åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('910', '103', 'æ¸¯å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('911', '103', 'è¦ƒå¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('912', '103', 'æ¡‚å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('913', '103', 'å¹³å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('914', '104', 'é‡‘åŸæ±ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('915', '104', 'å®œå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('916', '104', 'å¤©å³¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('917', '104', 'å‡¤å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('918', '104', 'å—ä¸¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('919', '104', 'ä¸œå…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('920', '104', 'éƒ½å®‰', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('921', '104', 'ç½—åŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('922', '104', 'å·´é©¬', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('923', '104', 'ç¯æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('924', '104', 'å¤§åŒ–', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('925', '105', 'å…«æ­¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('926', '105', 'é’Ÿå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('927', '105', 'æ˜­å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('928', '105', 'å¯Œå·', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('929', '106', 'å…´å®¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('930', '106', 'åˆå±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('931', '106', 'è±¡å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('932', '106', 'æ­¦å®£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('933', '106', 'å¿»åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('934', '106', 'é‡‘ç§€', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('935', '107', 'åŸä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('936', '107', 'é±¼å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('937', '107', 'æŸ³åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('938', '107', 'æŸ³å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('939', '107', 'æŸ³æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('940', '107', 'æŸ³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('941', '107', 'é¹¿å¯¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('942', '107', 'èå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('943', '107', 'èæ°´', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('944', '107', 'ä¸‰æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('945', '108', 'é’¦å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('946', '108', 'é’¦åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('947', '108', 'çµå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('948', '108', 'æµ¦åŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('949', '109', 'ä¸‡ç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('950', '109', 'è¶å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('951', '109', 'é•¿æ´²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('952', '109', 'å²‘æºªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('953', '109', 'è‹æ¢§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('954', '109', 'è—¤å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('955', '109', 'è’™å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('956', '110', 'ç‰å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('957', '110', 'åŒ—æµå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('958', '110', 'å®¹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('959', '110', 'é™†å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('960', '110', 'åšç™½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('961', '110', 'å…´ä¸šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('962', '111', 'å—æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('963', '111', 'äº‘å²©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('964', '111', 'èŠ±æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('965', '111', 'ä¹Œå½“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('966', '111', 'ç™½äº‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('967', '111', 'å°æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('968', '111', 'é‡‘é˜³æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('969', '111', 'æ–°å¤©å›­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('970', '111', 'æ¸…é•‡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('971', '111', 'å¼€é˜³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('972', '111', 'ä¿®æ–‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('973', '111', 'æ¯çƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('974', '112', 'è¥¿ç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('975', '112', 'å…³å²­', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('976', '112', 'é•‡å®', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('977', '112', 'ç´«äº‘', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('978', '112', 'å¹³åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('979', '112', 'æ™®å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('980', '113', 'æ¯•èŠ‚å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('981', '113', 'å¤§æ–¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('982', '113', 'é»”è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('983', '113', 'é‡‘æ²™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('984', '113', 'ç»‡é‡‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('985', '113', 'çº³é›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('986', '113', 'èµ«ç« å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('987', '113', 'å¨å®', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('988', '114', 'é’Ÿå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('989', '114', 'å…­æç‰¹åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('990', '114', 'æ°´åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('991', '114', 'ç›˜å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('992', '115', 'å‡¯é‡Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('993', '115', 'é»„å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('994', '115', 'æ–½ç§‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('995', '115', 'ä¸‰ç©—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('996', '115', 'é•‡è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('997', '115', 'å²‘å·©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('998', '115', 'å¤©æŸ±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('999', '115', 'é”¦å±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1000', '115', 'å‰‘æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1001', '115', 'å°æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1002', '115', 'é»å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1003', '115', 'æ¦•æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1004', '115', 'ä»æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1005', '115', 'é›·å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1006', '115', 'éº»æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1007', '115', 'ä¸¹å¯¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1008', '116', 'éƒ½åŒ€å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1009', '116', 'ç¦æ³‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1010', '116', 'è”æ³¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1011', '116', 'è´µå®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1012', '116', 'ç“®å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1013', '116', 'ç‹¬å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1014', '116', 'å¹³å¡˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1015', '116', 'ç½—ç”¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1016', '116', 'é•¿é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1017', '116', 'é¾™é‡Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1018', '116', 'æƒ æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1019', '116', 'ä¸‰éƒ½', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1020', '117', 'å…´ä¹‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1021', '117', 'å…´ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1022', '117', 'æ™®å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1023', '117', 'æ™´éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1024', '117', 'è´ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1025', '117', 'æœ›è°Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1026', '117', 'å†Œäº¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1027', '117', 'å®‰é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1028', '118', 'é“œä»å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1029', '118', 'æ±Ÿå£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1030', '118', 'çŸ³é˜¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1031', '118', 'æ€å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1032', '118', 'å¾·æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1033', '118', 'ç‰å±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1034', '118', 'å°æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1035', '118', 'æ²¿æ²³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1036', '118', 'æ¾æ¡ƒ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1037', '118', 'ä¸‡å±±ç‰¹åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1038', '119', 'çº¢èŠ±å²—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1039', '119', 'åŠ¡å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1040', '119', 'é“çœŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1041', '119', 'æ±‡å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1042', '119', 'èµ¤æ°´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1043', '119', 'ä»æ€€å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1044', '119', 'éµä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1045', '119', 'æ¡æ¢“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1046', '119', 'ç»¥é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1047', '119', 'æ­£å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1048', '119', 'å‡¤å†ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1049', '119', 'æ¹„æ½­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1050', '119', 'ä½™åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1051', '119', 'ä¹ æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1052', '119', 'é“çœŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1053', '119', 'åŠ¡å·', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1054', '120', 'ç§€è‹±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1055', '120', 'é¾™ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1056', '120', 'ç¼å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1057', '120', 'ç¾å…°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1058', '137', 'å¸‚åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1059', '137', 'æ´‹æµ¦å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1060', '137', 'é‚£å¤§é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1061', '137', 'ç‹äº”é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1062', '137', 'é›…æ˜Ÿé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1063', '137', 'å¤§æˆé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1064', '137', 'ä¸­å’Œé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1065', '137', 'å³¨è”“é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1066', '137', 'å—ä¸°é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1067', '137', 'ç™½é©¬äº•é•‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1068', '137', 'å…°æ´‹é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1069', '137', 'å’Œåº†é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1070', '137', 'æµ·å¤´é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1071', '137', 'æ’æµ¦é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1072', '137', 'ä¸œæˆé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1073', '137', 'å…‰æ‘é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1074', '137', 'æœ¨æ£ é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1075', '137', 'æ–°å·é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1076', '137', 'ä¸‰éƒ½é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1077', '137', 'å…¶ä»–', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1078', '138', 'é•¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1079', '138', 'æ¡¥ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1080', '138', 'æ¡¥è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1081', '138', 'æ–°ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1082', '138', 'è£•ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1083', '138', 'äº•é™‰çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1084', '138', 'é«˜æ–°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1085', '138', 'è¾›é›†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1086', '138', 'è—åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1087', '138', 'æ™‹å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1088', '138', 'æ–°ä¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1089', '138', 'é¹¿æ³‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1090', '138', 'äº•é™‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1091', '138', 'æ­£å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1092', '138', 'æ ¾åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1093', '138', 'è¡Œå”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1094', '138', 'çµå¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1095', '138', 'é«˜é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1096', '138', 'æ·±æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1097', '138', 'èµçš‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1098', '138', 'æ— æå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1099', '138', 'å¹³å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1100', '138', 'å…ƒæ°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1101', '138', 'èµµå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1102', '139', 'æ–°å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1103', '139', 'å—å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1104', '139', 'åŒ—å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1105', '139', 'æ¶¿å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1106', '139', 'å®šå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1107', '139', 'å®‰å›½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1108', '139', 'é«˜ç¢‘åº—å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1109', '139', 'æ»¡åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1110', '139', 'æ¸…è‹‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1111', '139', 'æ¶æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1112', '139', 'é˜œå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1113', '139', 'å¾æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1114', '139', 'å®šå…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1115', '139', 'å”å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1116', '139', 'é«˜é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1117', '139', 'å®¹åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1118', '139', 'æ¶æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1119', '139', 'æœ›éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1120', '139', 'å®‰æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1121', '139', 'æ˜“å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1122', '139', 'æ›²é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1123', '139', 'è ¡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1124', '139', 'é¡ºå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1125', '139', 'åšé‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1126', '139', 'é›„å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1127', '140', 'è¿æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1128', '140', 'æ–°ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1129', '140', 'æ³Šå¤´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1130', '140', 'ä»»ä¸˜å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1131', '140', 'é»„éª…å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1132', '140', 'æ²³é—´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1133', '140', 'æ²§å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1134', '140', 'é’å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1135', '140', 'ä¸œå…‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1136', '140', 'æµ·å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1137', '140', 'ç›å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1138', '140', 'è‚ƒå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1139', '140', 'å—çš®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1140', '140', 'å´æ¡¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1141', '140', 'çŒ®å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1142', '140', 'å­Ÿæ‘', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1143', '141', 'åŒæ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1144', '141', 'åŒæ»¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1145', '141', 'é¹°æ‰‹è¥å­çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1146', '141', 'æ‰¿å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1147', '141', 'å…´éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1148', '141', 'å¹³æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1149', '141', 'æ»¦å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1150', '141', 'éš†åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1151', '141', 'ä¸°å®', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1152', '141', 'å®½åŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1153', '141', 'å›´åœº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1154', '142', 'ä»å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1155', '142', 'å¤å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1156', '142', 'é‚¯å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1157', '142', 'å³°å³°çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1158', '142', 'æ­¦å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1159', '142', 'é‚¯éƒ¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1160', '142', 'ä¸´æ¼³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1161', '142', 'æˆå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1162', '142', 'å¤§åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1163', '142', 'æ¶‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1164', '142', 'ç£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1165', '142', 'è‚¥ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1166', '142', 'æ°¸å¹´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1167', '142', 'é‚±å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1168', '142', 'é¸¡æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1169', '142', 'å¹¿å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1170', '142', 'é¦†é™¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1171', '142', 'é­å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1172', '142', 'æ›²å‘¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1173', '143', 'æ¡ƒåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1174', '143', 'å†€å·å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1175', '143', 'æ·±å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1176', '143', 'æ£å¼ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1177', '143', 'æ­¦é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1178', '143', 'æ­¦å¼ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1179', '143', 'é¥¶é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1180', '143', 'å®‰å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1181', '143', 'æ•…åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1182', '143', 'æ™¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1183', '143', 'é˜œåŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1184', '144', 'å®‰æ¬¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1185', '144', 'å¹¿é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1186', '144', 'éœ¸å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1187', '144', 'ä¸‰æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1188', '144', 'å›ºå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1189', '144', 'æ°¸æ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1190', '144', 'é¦™æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1191', '144', 'å¤§åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1192', '144', 'æ–‡å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1193', '144', 'å¤§å‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1194', '145', 'æµ·æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1195', '145', 'å±±æµ·å…³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1196', '145', 'åŒ—æˆ´æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1197', '145', 'æ˜Œé»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1198', '145', 'æŠšå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1199', '145', 'å¢é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1200', '145', 'é’é¾™', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1201', '146', 'è·¯åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1202', '146', 'è·¯å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1203', '146', 'å¤å†¶åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1204', '146', 'å¼€å¹³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1205', '146', 'ä¸°å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1206', '146', 'ä¸°æ¶¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1207', '146', 'éµåŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1208', '146', 'è¿å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1209', '146', 'æ»¦å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1210', '146', 'æ»¦å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1211', '146', 'ä¹äº­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1212', '146', 'è¿è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1213', '146', 'ç‰ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1214', '146', 'å”æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1215', '147', 'æ¡¥ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1216', '147', 'æ¡¥è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1217', '147', 'å—å®«å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1218', '147', 'æ²™æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1219', '147', 'é‚¢å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1220', '147', 'ä¸´åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1221', '147', 'å†…ä¸˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1222', '147', 'æŸä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1223', '147', 'éš†å°§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1224', '147', 'ä»»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1225', '147', 'å—å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1226', '147', 'å®æ™‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1227', '147', 'å·¨é¹¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1228', '147', 'æ–°æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1229', '147', 'å¹¿å®—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1230', '147', 'å¹³ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1231', '147', 'å¨å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1232', '147', 'æ¸…æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1233', '147', 'ä¸´è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1234', '148', 'æ¡¥è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1235', '148', 'æ¡¥ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1236', '148', 'å®£åŒ–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1237', '148', 'ä¸‹èŠ±å›­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1238', '148', 'å®£åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1239', '148', 'å¼ åŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1240', '148', 'åº·ä¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1241', '148', 'æ²½æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1242', '148', 'å°šä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1243', '148', 'è”šå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1244', '148', 'é˜³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1245', '148', 'æ€€å®‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1246', '148', 'ä¸‡å…¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1247', '148', 'æ€€æ¥å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1248', '148', 'æ¶¿é¹¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1249', '148', 'èµ¤åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1250', '148', 'å´‡ç¤¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1251', '149', 'é‡‘æ°´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1252', '149', 'é‚™å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1253', '149', 'äºŒä¸ƒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1254', '149', 'ç®¡åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1255', '149', 'ä¸­åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1256', '149', 'ä¸Šè¡—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1257', '149', 'æƒ æµåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1258', '149', 'éƒ‘ä¸œæ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1259', '149', 'ç»æµæŠ€æœ¯å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1260', '149', 'é«˜æ–°å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1261', '149', 'å‡ºå£åŠ å·¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1262', '149', 'å·©ä¹‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1263', '149', 'è¥é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1264', '149', 'æ–°å¯†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1265', '149', 'æ–°éƒ‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1266', '149', 'ç™»å°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1267', '149', 'ä¸­ç‰Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1268', '150', 'è¥¿å·¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1269', '150', 'è€åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1270', '150', 'æ¶§è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1271', '150', 'ç€æ²³å›æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1272', '150', 'æ´›é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1273', '150', 'å‰åˆ©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1274', '150', 'åƒå¸ˆå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1275', '150', 'å­Ÿæ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1276', '150', 'æ–°å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1277', '150', 'æ ¾å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1278', '150', 'åµ©å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1279', '150', 'æ±é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1280', '150', 'å®œé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1281', '150', 'æ´›å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1282', '150', 'ä¼Šå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1283', '151', 'é¼“æ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1284', '151', 'é¾™äº­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1285', '151', 'é¡ºæ²³å›æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1286', '151', 'é‡‘æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1287', '151', 'ç¦¹ç‹å°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1288', '151', 'æå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1289', '151', 'é€šè®¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1290', '151', 'å°‰æ°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1291', '151', 'å¼€å°å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1292', '151', 'å…°è€ƒå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1293', '152', 'åŒ—å…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1294', '152', 'æ–‡å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1295', '152', 'æ®·éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1296', '152', 'é¾™å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1297', '152', 'æ—å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1298', '152', 'å®‰é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1299', '152', 'æ±¤é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1300', '152', 'æ»‘å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1301', '152', 'å†…é»„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1302', '153', 'æ·‡æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1303', '153', 'å±±åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1304', '153', 'é¹¤å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1305', '153', 'æµšå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1306', '153', 'æ·‡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1307', '154', 'æµæºå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1308', '155', 'è§£æ”¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1309', '155', 'ä¸­ç«™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1310', '155', 'é©¬æ‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1311', '155', 'å±±é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1312', '155', 'æ²é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1313', '155', 'å­Ÿå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1314', '155', 'ä¿®æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1315', '155', 'åšçˆ±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1316', '155', 'æ­¦é™Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1317', '155', 'æ¸©å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1318', '156', 'å§é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1319', '156', 'å®›åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1320', '156', 'é‚“å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1321', '156', 'å—å¬å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1322', '156', 'æ–¹åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1323', '156', 'è¥¿å³¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1324', '156', 'é•‡å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1325', '156', 'å†…ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1326', '156', 'æ·…å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1327', '156', 'ç¤¾æ——å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1328', '156', 'å”æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1329', '156', 'æ–°é‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1330', '156', 'æ¡æŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1331', '157', 'æ–°ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1332', '157', 'å«ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1333', '157', 'æ¹›æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1334', '157', 'çŸ³é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1335', '157', 'èˆé’¢å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1336', '157', 'æ±å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1337', '157', 'å®ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1338', '157', 'å¶å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1339', '157', 'é²å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1340', '157', 'éƒå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1341', '158', 'æ¹–æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1342', '158', 'ä¹‰é©¬å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1343', '158', 'çµå®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1344', '158', 'æ¸‘æ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1345', '158', 'é™•å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1346', '158', 'å¢æ°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1347', '159', 'æ¢å›­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1348', '159', 'ç¢é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1349', '159', 'æ°¸åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1350', '159', 'æ°‘æƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1351', '159', 'ç¢å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1352', '159', 'å®é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1353', '159', 'è™åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1354', '159', 'æŸ˜åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1355', '159', 'å¤é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1356', '160', 'å«æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1357', '160', 'çº¢æ——åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1358', '160', 'å‡¤æ³‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1359', '160', 'ç‰§é‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1360', '160', 'å«è¾‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1361', '160', 'è¾‰å¿å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1362', '160', 'æ–°ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1363', '160', 'è·å˜‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1364', '160', 'åŸé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1365', '160', 'å»¶æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1366', '160', 'å°ä¸˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1367', '160', 'é•¿å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1368', '161', 'æµ‰æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1369', '161', 'å¹³æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1370', '161', 'ç½—å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1371', '161', 'å…‰å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1372', '161', 'æ–°å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1373', '161', 'å•†åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1374', '161', 'å›ºå§‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1375', '161', 'æ½¢å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1376', '161', 'æ·®æ»¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1377', '161', 'æ¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1378', '162', 'é­éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1379', '162', 'ç¦¹å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1380', '162', 'é•¿è‘›å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1381', '162', 'è®¸æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1382', '162', 'é„¢é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1383', '162', 'è¥„åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1384', '163', 'å·æ±‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1385', '163', 'é¡¹åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1386', '163', 'æ‰¶æ²Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1387', '163', 'è¥¿åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1388', '163', 'å•†æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1389', '163', 'æ²ˆä¸˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1390', '163', 'éƒ¸åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1391', '163', 'æ·®é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1392', '163', 'å¤ªåº·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1393', '163', 'é¹¿é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1394', '164', 'é©¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1395', '164', 'è¥¿å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1396', '164', 'ä¸Šè”¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1397', '164', 'å¹³èˆ†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1398', '164', 'æ­£é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1399', '164', 'ç¡®å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1400', '164', 'æ³Œé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1401', '164', 'æ±å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1402', '164', 'é‚å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1403', '164', 'æ–°è”¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1404', '165', 'éƒ¾åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1405', '165', 'æºæ±‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1406', '165', 'å¬é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1407', '165', 'èˆé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1408', '165', 'ä¸´é¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1409', '166', 'åé¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1410', '166', 'æ¸…ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1411', '166', 'å—ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1412', '166', 'èŒƒå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1413', '166', 'å°å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1414', '166', 'æ¿®é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1415', '167', 'é“é‡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1416', '167', 'å—å²—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1417', '167', 'åŠ¨åŠ›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1418', '167', 'å¹³æˆ¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1419', '167', 'é¦™åŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1420', '167', 'å¤ªå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1421', '167', 'é“å¤–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1422', '167', 'é˜¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1423', '167', 'å‘¼å…°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1424', '167', 'æ¾åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1425', '167', 'å°šå¿—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1426', '167', 'åŒåŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1427', '167', 'äº”å¸¸å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1428', '167', 'æ–¹æ­£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1429', '167', 'å®¾å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1430', '167', 'ä¾å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1431', '167', 'å·´å½¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1432', '167', 'é€šæ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1433', '167', 'æœ¨å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1434', '167', 'å»¶å¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1435', '168', 'è¨å°”å›¾åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1436', '168', 'çº¢å²—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1437', '168', 'é¾™å‡¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1438', '168', 'è®©èƒ¡è·¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1439', '168', 'å¤§åŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1440', '168', 'è‚‡å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1441', '168', 'è‚‡æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1442', '168', 'æ—ç”¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1443', '168', 'æœå°”ä¼¯ç‰¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1444', '169', 'å‘¼ç›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1445', '169', 'æ¼ æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1446', '169', 'å¡”æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1447', '170', 'å…´å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1448', '170', 'å·¥å†œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1449', '170', 'å—å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1450', '170', 'å…´å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1451', '170', 'å‘é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1452', '170', 'ä¸œå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1453', '170', 'èåŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1454', '170', 'ç»¥æ»¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1455', '171', 'çˆ±è¾‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1456', '171', 'äº”å¤§è¿æ± å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1457', '171', 'åŒ—å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1458', '171', 'å«©æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1459', '171', 'é€Šå…‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1460', '171', 'å­™å´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1461', '172', 'é¸¡å† åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1462', '172', 'æ’å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1463', '172', 'åŸå­æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1464', '172', 'æ»´é“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1465', '172', 'æ¢¨æ ‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1466', '172', 'è™æ—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1467', '172', 'å¯†å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1468', '172', 'é¸¡ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1469', '173', 'å‰è¿›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1470', '173', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1471', '173', 'å‘é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1472', '173', 'ä¸œé£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1473', '173', 'åŒæ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1474', '173', 'å¯Œé”¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1475', '173', 'æ¡¦å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1476', '173', 'æ¡¦å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1477', '173', 'æ±¤åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1478', '173', 'æŠšè¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1479', '174', 'çˆ±æ°‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1480', '174', 'ä¸œå®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1481', '174', 'é˜³æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1482', '174', 'è¥¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1483', '174', 'ç»¥èŠ¬æ²³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1484', '174', 'æµ·æ—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1485', '174', 'å®å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1486', '174', 'ç©†æ£±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1487', '174', 'ä¸œå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1488', '174', 'æ—å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1489', '175', 'æ¡ƒå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1490', '175', 'æ–°å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1491', '175', 'èŒ„å­æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1492', '175', 'å‹ƒåˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1493', '176', 'é¾™æ²™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1494', '176', 'æ˜‚æ˜‚æºªåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1495', '176', 'é“å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1496', '176', 'å»ºååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1497', '176', 'å¯Œæ‹‰å°”åŸºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1498', '176', 'ç¢¾å­å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1499', '176', 'æ¢…é‡Œæ–¯è¾¾æ–¡å°”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1500', '176', 'è®·æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1501', '176', 'é¾™æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1502', '176', 'ä¾å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1503', '176', 'æ³°æ¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1504', '176', 'ç”˜å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1505', '176', 'å¯Œè£•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1506', '176', 'å…‹å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1507', '176', 'å…‹ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1508', '176', 'æ‹œæ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1509', '177', 'å°–å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1510', '177', 'å²­ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1511', '177', 'å››æ–¹å°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1512', '177', 'å®å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1513', '177', 'é›†è´¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1514', '177', 'å‹è°Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1515', '177', 'å®æ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1516', '177', 'é¥¶æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1517', '178', 'åŒ—æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1518', '178', 'å®‰è¾¾å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1519', '178', 'è‚‡ä¸œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1520', '178', 'æµ·ä¼¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1521', '178', 'æœ›å¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1522', '178', 'å…°è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1523', '178', 'é’å†ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1524', '178', 'åº†å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1525', '178', 'æ˜æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1526', '178', 'ç»¥æ£±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1527', '179', 'ä¼Šæ˜¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1528', '179', 'å¸¦å²­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1529', '179', 'å—å²”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1530', '179', 'é‡‘å±±å±¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1531', '179', 'è¥¿æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1532', '179', 'ç¾æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1533', '179', 'ä¹Œé©¬æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1534', '179', 'ç¿ å³¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1535', '179', 'å‹å¥½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1536', '179', 'ä¸Šç”˜å²­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1537', '179', 'äº”è¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1538', '179', 'çº¢æ˜ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1539', '179', 'æ–°é’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1540', '179', 'æ±¤æ—ºæ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1541', '179', 'ä¹Œä¼Šå²­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1542', '179', 'é“åŠ›å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1543', '179', 'å˜‰è«å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1544', '180', 'æ±Ÿå²¸åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1545', '180', 'æ­¦æ˜ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1546', '180', 'æ±Ÿæ±‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1547', '180', 'ç¡šå£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1548', '180', 'æ±‰é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1549', '180', 'é’å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1550', '180', 'æ´ªå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1551', '180', 'ä¸œè¥¿æ¹–åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1552', '180', 'æ±‰å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1553', '180', 'è”¡ç”¸åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1554', '180', 'æ±Ÿå¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1555', '180', 'é»„é™‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1556', '180', 'æ–°æ´²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1557', '180', 'ç»æµå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1558', '181', 'ä»™æ¡ƒå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1559', '182', 'é„‚åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1560', '182', 'åå®¹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1561', '182', 'æ¢å­æ¹–åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1562', '183', 'é»„å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1563', '183', 'éº»åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1564', '183', 'æ­¦ç©´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1565', '183', 'å›¢é£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1566', '183', 'çº¢å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1567', '183', 'ç½—ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1568', '183', 'è‹±å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1569', '183', 'æµ æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1570', '183', 'è•²æ˜¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1571', '183', 'é»„æ¢…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1572', '184', 'é»„çŸ³æ¸¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1573', '184', 'è¥¿å¡å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1574', '184', 'ä¸‹é™†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1575', '184', 'é“å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1576', '184', 'å¤§å†¶å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1577', '184', 'é˜³æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1578', '185', 'ä¸œå®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1579', '185', 'æ‡åˆ€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1580', '185', 'é’Ÿç¥¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1581', '185', 'äº¬å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1582', '185', 'æ²™æ´‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1583', '186', 'æ²™å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1584', '186', 'è†å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1585', '186', 'çŸ³é¦–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1586', '186', 'æ´ªæ¹–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1587', '186', 'æ¾æ»‹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1588', '186', 'å…¬å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1589', '186', 'ç›‘åˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1590', '186', 'æ±Ÿé™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1591', '187', 'æ½œæ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1592', '188', 'ç¥å†œæ¶æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1593', '189', 'å¼ æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1594', '189', 'èŒ…ç®­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1595', '189', 'ä¸¹æ±Ÿå£å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1596', '189', 'éƒ§å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1597', '189', 'éƒ§è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1598', '189', 'ç«¹å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1599', '189', 'ç«¹æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1600', '189', 'æˆ¿å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1601', '190', 'æ›¾éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1602', '190', 'å¹¿æ°´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1603', '191', 'å¤©é—¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1604', '192', 'å’¸å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1605', '192', 'èµ¤å£å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1606', '192', 'å˜‰é±¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1607', '192', 'é€šåŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1608', '192', 'å´‡é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1609', '192', 'é€šå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1610', '193', 'è¥„åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1611', '193', 'æ¨ŠåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1612', '193', 'è¥„é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1613', '193', 'è€æ²³å£å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1614', '193', 'æ£é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1615', '193', 'å®œåŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1616', '193', 'å—æ¼³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1617', '193', 'è°·åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1618', '193', 'ä¿åº·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1619', '194', 'å­å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1620', '194', 'åº”åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1621', '194', 'å®‰é™†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1622', '194', 'æ±‰å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1623', '194', 'å­æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1624', '194', 'å¤§æ‚Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1625', '194', 'äº‘æ¢¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1626', '195', 'é•¿é˜³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1627', '195', 'äº”å³°', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1628', '195', 'è¥¿é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1629', '195', 'ä¼å®¶å²—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1630', '195', 'ç‚¹å†›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1631', '195', 'çŒ‡äº­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1632', '195', 'å¤·é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1633', '195', 'å®œéƒ½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1634', '195', 'å½“é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1635', '195', 'ææ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1636', '195', 'è¿œå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1637', '195', 'å…´å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1638', '195', 'ç§­å½’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1639', '196', 'æ©æ–½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1640', '196', 'åˆ©å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1641', '196', 'å»ºå§‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1642', '196', 'å·´ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1643', '196', 'å®£æ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1644', '196', 'å’¸ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1645', '196', 'æ¥å‡¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1646', '196', 'é¹¤å³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1647', '197', 'å²³éº“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1648', '197', 'èŠ™è“‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1649', '197', 'å¤©å¿ƒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1650', '197', 'å¼€ç¦åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1651', '197', 'é›¨èŠ±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1652', '197', 'å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1653', '197', 'æµé˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1654', '197', 'é•¿æ²™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1655', '197', 'æœ›åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1656', '197', 'å®ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1657', '198', 'æ°¸å®šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1658', '198', 'æ­¦é™µæºåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1659', '198', 'æ…ˆåˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1660', '198', 'æ¡‘æ¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1661', '199', 'æ­¦é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1662', '199', 'é¼åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1663', '199', 'æ´¥å¸‚å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1664', '199', 'å®‰ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1665', '199', 'æ±‰å¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1666', '199', 'æ¾§å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1667', '199', 'ä¸´æ¾§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1668', '199', 'æ¡ƒæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1669', '199', 'çŸ³é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1670', '200', 'åŒ—æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1671', '200', 'è‹ä»™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1672', '200', 'èµ„å…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1673', '200', 'æ¡‚é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1674', '200', 'å®œç« å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1675', '200', 'æ°¸å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1676', '200', 'å˜‰ç¦¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1677', '200', 'ä¸´æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1678', '200', 'æ±åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1679', '200', 'æ¡‚ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1680', '200', 'å®‰ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1681', '201', 'é›å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1682', '201', 'ç æ™–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1683', '201', 'çŸ³é¼“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1684', '201', 'è’¸æ¹˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1685', '201', 'å—å²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1686', '201', 'è€’é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1687', '201', 'å¸¸å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1688', '201', 'è¡¡é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1689', '201', 'è¡¡å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1690', '201', 'è¡¡å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1691', '201', 'è¡¡ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1692', '201', 'ç¥ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1693', '202', 'é¹¤åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1694', '202', 'é–å·', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1695', '202', 'éº»é˜³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1696', '202', 'é€šé“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1697', '202', 'æ–°æ™ƒ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1698', '202', 'èŠ·æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1699', '202', 'æ²…é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1700', '202', 'è¾°æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1701', '202', 'æº†æµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1702', '202', 'ä¸­æ–¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1703', '202', 'ä¼šåŒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1704', '202', 'æ´ªæ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1705', '203', 'å¨„æ˜ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1706', '203', 'å†·æ°´æ±Ÿå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1707', '203', 'æ¶Ÿæºå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1708', '203', 'åŒå³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1709', '203', 'æ–°åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1710', '204', 'åŸæ­¥', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1711', '204', 'åŒæ¸…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1712', '204', 'å¤§ç¥¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1713', '204', 'åŒ—å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1714', '204', 'æ­¦å†ˆå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1715', '204', 'é‚µä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1716', '204', 'æ–°é‚µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1717', '204', 'é‚µé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1718', '204', 'éš†å›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1719', '204', 'æ´å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1720', '204', 'ç»¥å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1721', '204', 'æ–°å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1722', '205', 'å²³å¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1723', '205', 'é›¨æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1724', '205', 'æ¹˜ä¹¡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1725', '205', 'éŸ¶å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1726', '205', 'æ¹˜æ½­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1727', '206', 'å‰é¦–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1728', '206', 'æ³¸æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1729', '206', 'å‡¤å‡°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1730', '206', 'èŠ±å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1731', '206', 'ä¿é–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1732', '206', 'å¤ä¸ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1733', '206', 'æ°¸é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1734', '206', 'é¾™å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1735', '207', 'èµ«å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1736', '207', 'èµ„é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1737', '207', 'æ²…æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1738', '207', 'å—å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1739', '207', 'æ¡ƒæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1740', '207', 'å®‰åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1741', '208', 'æ±Ÿå', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1742', '208', 'å†·æ°´æ»©åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1743', '208', 'é›¶é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1744', '208', 'ç¥é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1745', '208', 'ä¸œå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1746', '208', 'åŒç‰Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1747', '208', 'é“å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1748', '208', 'æ±Ÿæ°¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1749', '208', 'å®è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1750', '208', 'è“å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1751', '208', 'æ–°ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1752', '209', 'å²³é˜³æ¥¼åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1753', '209', 'å›å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1754', '209', 'äº‘æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1755', '209', 'æ±¨ç½—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1756', '209', 'ä¸´æ¹˜å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1757', '209', 'å²³é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1758', '209', 'åå®¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1759', '209', 'æ¹˜é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1760', '209', 'å¹³æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1761', '210', 'å¤©å…ƒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1762', '210', 'è·å¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1763', '210', 'èŠ¦æ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1764', '210', 'çŸ³å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1765', '210', 'é†´é™µå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1766', '210', 'æ ªæ´²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1767', '210', 'æ”¸å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1768', '210', 'èŒ¶é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1769', '210', 'ç‚é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1770', '211', 'æœé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1771', '211', 'å®½åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1772', '211', 'äºŒé“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1773', '211', 'å—å…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1774', '211', 'ç»¿å›­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1775', '211', 'åŒé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1776', '211', 'å‡€æœˆæ½­å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1777', '211', 'é«˜æ–°æŠ€æœ¯å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1778', '211', 'ç»æµæŠ€æœ¯å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1779', '211', 'æ±½è½¦äº§ä¸šå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1780', '211', 'å¾·æƒ å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1781', '211', 'ä¹å°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1782', '211', 'æ¦†æ ‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1783', '211', 'å†œå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1784', '212', 'èˆ¹è¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1785', '212', 'æ˜Œé‚‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1786', '212', 'é¾™æ½­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1787', '212', 'ä¸°æ»¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1788', '212', 'è›Ÿæ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1789', '212', 'æ¡¦ç”¸å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1790', '212', 'èˆ’å…°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1791', '212', 'ç£çŸ³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1792', '212', 'æ°¸å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1793', '213', 'æ´®åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1794', '213', 'æ´®å—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1795', '213', 'å¤§å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1796', '213', 'é•‡èµ‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1797', '213', 'é€šæ¦†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1798', '214', 'æ±ŸæºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1799', '214', 'å…«é“æ±ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1800', '214', 'é•¿ç™½', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1801', '214', 'ä¸´æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1802', '214', 'æŠšæ¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1803', '214', 'é–å®‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1804', '215', 'é¾™å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1805', '215', 'è¥¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1806', '215', 'ä¸œä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1807', '215', 'ä¸œè¾½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1808', '216', 'é“è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1809', '216', 'é“ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1810', '216', 'ä¼Šé€\š', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1811', '216', 'å…¬ä¸»å²­å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1812', '216', 'åŒè¾½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1813', '216', 'æ¢¨æ ‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1814', '217', 'å‰éƒ­å°”ç½—æ–\¯', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1815', '217', 'å®æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1816', '217', 'é•¿å²­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1817', '217', 'ä¹¾å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1818', '217', 'æ‰¶ä½™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1819', '218', 'ä¸œæ˜ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1820', '218', 'äºŒé“æ±ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1821', '218', 'æ¢…æ²³å£å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1822', '218', 'é›†å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1823', '218', 'é€šåŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1824', '218', 'è¾‰å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1825', '218', 'æŸ³æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1826', '219', 'å»¶å‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1827', '219', 'å›¾ä»¬å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1828', '219', 'æ•¦åŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1829', '219', 'ç²æ˜¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1830', '219', 'é¾™äº•å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1831', '219', 'å’Œé¾™å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1832', '219', 'å®‰å›¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1833', '219', 'æ±ªæ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1834', '220', 'ç„æ­¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1835', '220', 'é¼“æ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1836', '220', 'ç™½ä¸‹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1837', '220', 'å»ºé‚ºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1838', '220', 'ç§¦æ·®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1839', '220', 'é›¨èŠ±å°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1840', '220', 'ä¸‹å…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1841', '220', 'æ –éœåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1842', '220', 'æµ¦å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1843', '220', 'æ±Ÿå®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1844', '220', 'å…­åˆåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1845', '220', 'æº§æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1846', '220', 'é«˜æ·³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1847', '221', 'æ²§æµªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1848', '221', 'é‡‘é˜ŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1849', '221', 'å¹³æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1850', '221', 'è™ä¸˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1851', '221', 'å´ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1852', '221', 'ç›¸åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1853', '221', 'å›­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1854', '221', 'æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1855', '221', 'å¸¸ç†Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1856', '221', 'å¼ å®¶æ¸¯å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1857', '221', 'ç‰å±±é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1858', '221', 'å·´åŸé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1859', '221', 'å‘¨å¸‚é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1860', '221', 'é™†å®¶é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1861', '221', 'èŠ±æ¡¥é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1862', '221', 'æ·€å±±æ¹–é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1863', '221', 'å¼ æµ¦é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1864', '221', 'å‘¨åº„é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1865', '221', 'åƒç¯é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1866', '221', 'é”¦æºªé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1867', '221', 'å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1868', '221', 'å´æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1869', '221', 'å¤ªä»“å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1870', '222', 'å´‡å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1871', '222', 'åŒ—å¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1872', '222', 'å—é•¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1873', '222', 'é”¡å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1874', '222', 'æƒ å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1875', '222', 'æ»¨æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1876', '222', 'æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1877', '222', 'æ±Ÿé˜´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1878', '222', 'å®œå…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1879', '223', 'å¤©å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1880', '223', 'é’Ÿæ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1881', '223', 'æˆšå¢…å °åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1882', '223', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1883', '223', 'æ–°åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1884', '223', 'æ­¦è¿›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1885', '223', 'æº§é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1886', '223', 'é‡‘å›å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1887', '224', 'æ¸…æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1888', '224', 'æ¸…æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1889', '224', 'æ¥šå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1890', '224', 'æ·®é˜´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1891', '224', 'æ¶Ÿæ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1892', '224', 'æ´ªæ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1893', '224', 'ç›±çœ™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1894', '224', 'é‡‘æ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1895', '225', 'æ–°æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1896', '225', 'è¿äº‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1897', '225', 'æµ·å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1898', '225', 'èµ£æ¦†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1899', '225', 'ä¸œæµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1900', '225', 'çŒäº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1901', '225', 'çŒå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1902', '226', 'å´‡å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1903', '226', 'æ¸¯é—¸åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1904', '226', 'ç»æµå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1905', '226', 'å¯ä¸œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1906', '226', 'å¦‚çš‹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1907', '226', 'é€šå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1908', '226', 'æµ·é—¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1909', '226', 'æµ·å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1910', '226', 'å¦‚ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1911', '227', 'å®¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1912', '227', 'å®¿è±«åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1913', '227', 'å®¿è±«å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1914', '227', 'æ²­é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1915', '227', 'æ³—é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1916', '227', 'æ³—æ´ªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1917', '228', 'æµ·é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1918', '228', 'é«˜æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1919', '228', 'å…´åŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1920', '228', 'é–æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1921', '228', 'æ³°å…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1922', '228', 'å§œå °å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1923', '229', 'äº‘é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1924', '229', 'é¼“æ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1925', '229', 'ä¹é‡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1926', '229', 'è´¾æ±ªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1927', '229', 'æ³‰å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1928', '229', 'æ–°æ²‚å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1929', '229', 'é‚³å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1930', '229', 'ä¸°å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1931', '229', 'æ²›å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1932', '229', 'é“œå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1933', '229', 'ç¢å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1934', '230', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1935', '230', 'äº­æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1936', '230', 'ç›éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1937', '230', 'ç›éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1938', '230', 'ä¸œå°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1939', '230', 'å¤§ä¸°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1940', '230', 'å“æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1941', '230', 'æ»¨æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1942', '230', 'é˜œå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1943', '230', 'å°„é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1944', '230', 'å»ºæ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1945', '231', 'å¹¿é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1946', '231', 'ç»´æ‰¬åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1947', '231', 'é‚—æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1948', '231', 'ä»ªå¾å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1949', '231', 'é«˜é‚®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1950', '231', 'æ±Ÿéƒ½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1951', '231', 'å®åº”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1952', '232', 'äº¬å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1953', '232', 'æ¶¦å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1954', '232', 'ä¸¹å¾’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1955', '232', 'ä¸¹é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1956', '232', 'æ‰¬ä¸­å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1957', '232', 'å¥å®¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1958', '233', 'ä¸œæ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1959', '233', 'è¥¿æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1960', '233', 'é’äº‘è°±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1961', '233', 'æ¹¾é‡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1962', '233', 'é’å±±æ¹–åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1963', '233', 'çº¢è°·æ»©æ–°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1964', '233', 'æ˜ŒåŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1965', '233', 'é«˜æ–°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1966', '233', 'å—æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1967', '233', 'æ–°å»ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1968', '233', 'å®‰ä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1969', '233', 'è¿›è´¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1970', '234', 'ä¸´å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1971', '234', 'å—åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1972', '234', 'é»å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1973', '234', 'å—ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1974', '234', 'å´‡ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1975', '234', 'ä¹å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1976', '234', 'å®œé»„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1977', '234', 'é‡‘æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1978', '234', 'èµ„æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1979', '234', 'ä¸œä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1980', '234', 'å¹¿æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1981', '235', 'ç« è´¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1982', '235', 'äºéƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1983', '235', 'ç‘é‡‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1984', '235', 'å—åº·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1985', '235', 'èµ£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1986', '235', 'ä¿¡ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1987', '235', 'å¤§ä½™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1988', '235', 'ä¸ŠçŠ¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1989', '235', 'å´‡ä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1990', '235', 'å®‰è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1991', '235', 'é¾™å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1992', '235', 'å®šå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1993', '235', 'å…¨å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1994', '235', 'å®éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1995', '235', 'å…´å›½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1996', '235', 'ä¼šæ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1997', '235', 'å¯»ä¹Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1998', '235', 'çŸ³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1999', '236', 'å®‰ç¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2000', '236', 'å‰å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2001', '236', 'é’åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2002', '236', 'äº•å†ˆå±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2003', '236', 'å‰å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2004', '236', 'å‰æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2005', '236', 'å³¡æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2006', '236', 'æ–°å¹²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2007', '236', 'æ°¸ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2008', '236', 'æ³°å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2009', '236', 'é‚å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2010', '236', 'ä¸‡å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2011', '236', 'æ°¸æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2012', '237', 'ç å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2013', '237', 'æ˜Œæ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2014', '237', 'ä¹å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2015', '237', 'æµ®æ¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2016', '238', 'æµ”é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2017', '238', 'åºå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2018', '238', 'ç‘æ˜Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2019', '238', 'ä¹æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2020', '238', 'æ­¦å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2021', '238', 'ä¿®æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2022', '238', 'æ°¸ä¿®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2023', '238', 'å¾·å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2024', '238', 'æ˜Ÿå­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2025', '238', 'éƒ½æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2026', '238', 'æ¹–å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2027', '238', 'å½­æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2028', '239', 'å®‰æºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2029', '239', 'æ¹˜ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2030', '239', 'è²èŠ±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2031', '239', 'èŠ¦æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2032', '239', 'ä¸Šæ —å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2033', '240', 'ä¿¡å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2034', '240', 'å¾·å…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2035', '240', 'ä¸Šé¥¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2036', '240', 'å¹¿ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2037', '240', 'ç‰å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2038', '240', 'é“…å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2039', '240', 'æ¨ªå³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2040', '240', 'å¼‹é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2041', '240', 'ä½™å¹²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2042', '240', 'æ³¢é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2043', '240', 'ä¸‡å¹´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2044', '240', 'å©ºæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2045', '241', 'æ¸æ°´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2046', '241', 'åˆ†å®œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2047', '242', 'è¢å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2048', '242', 'ä¸°åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2049', '242', 'æ¨Ÿæ ‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2050', '242', 'é«˜å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2051', '242', 'å¥‰æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2052', '242', 'ä¸‡è½½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2053', '242', 'ä¸Šé«˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2054', '242', 'å®œä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2055', '242', 'é–å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2056', '242', 'é“œé¼“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2057', '243', 'æœˆæ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2058', '243', 'è´µæºªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2059', '243', 'ä½™æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2060', '244', 'æ²ˆæ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2061', '244', 'çš‡å§‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2062', '244', 'å’Œå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2063', '244', 'å¤§ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2064', '244', 'é“è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2065', '244', 'è‹å®¶å±¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2066', '244', 'ä¸œé™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2067', '244', 'æ²ˆåŒ—æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2068', '244', 'äºæ´ªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2069', '244', 'æµ‘å—æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2070', '244', 'æ–°æ°‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2071', '244', 'è¾½ä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2072', '244', 'åº·å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2073', '244', 'æ³•åº“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2074', '245', 'è¥¿å²—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2075', '245', 'ä¸­å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2076', '245', 'æ²™æ²³å£åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2077', '245', 'ç”˜äº•å­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2078', '245', 'æ—…é¡ºå£åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2079', '245', 'é‡‘å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2080', '245', 'å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2081', '245', 'ç“¦æˆ¿åº—å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2082', '245', 'æ™®å…°åº—å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2083', '245', 'åº„æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2084', '245', 'é•¿æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2085', '246', 'é“ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2086', '246', 'é“è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2087', '246', 'ç«‹å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2088', '246', 'åƒå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2089', '246', 'å²«å²©', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2090', '246', 'æµ·åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2091', '246', 'å°å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2092', '247', 'æœ¬æºª', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2093', '247', 'å¹³å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2094', '247', 'æ˜å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2095', '247', 'æºªæ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2096', '247', 'å—èŠ¬åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2097', '247', 'æ¡“ä»', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2098', '248', 'åŒå¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2099', '248', 'é¾™åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2100', '248', 'å–€å–‡æ²å·¦ç¿¼è’™å¤æ—è‡ªæ²»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2101', '248', 'åŒ—ç¥¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2102', '248', 'å‡Œæºå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2103', '248', 'æœé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2104', '248', 'å»ºå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2105', '249', 'æŒ¯å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2106', '249', 'å…ƒå®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2107', '249', 'æŒ¯å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2108', '249', 'å®½ç”¸', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2109', '249', 'ä¸œæ¸¯å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2110', '249', 'å‡¤åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2111', '250', 'é¡ºåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2112', '250', 'æ–°æŠšåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2113', '250', 'ä¸œæ´²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2114', '250', 'æœ›èŠ±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2115', '250', 'æ¸…åŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2116', '250', 'æ–°å®¾', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2117', '250', 'æŠšé¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2118', '251', 'é˜œæ–°', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2119', '251', 'æµ·å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2120', '251', 'æ–°é‚±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2121', '251', 'å¤ªå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2122', '251', 'æ¸…æ²³é—¨åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2123', '251', 'ç»†æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2124', '251', 'å½°æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2125', '252', 'é¾™æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2126', '252', 'å—ç¥¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2127', '252', 'è¿å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2128', '252', 'å…´åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2129', '252', 'ç»¥ä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2130', '252', 'å»ºæ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2131', '253', 'å¤ªå’ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2132', '253', 'å¤å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2133', '253', 'å‡Œæ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2134', '253', 'å‡Œæµ·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2135', '253', 'åŒ—é•‡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2136', '253', 'é»‘å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2137', '253', 'ä¹‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2138', '254', 'ç™½å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2139', '254', 'æ–‡åœ£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2140', '254', 'å®ä¼ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2141', '254', 'å¤ªå­æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2142', '254', 'å¼“é•¿å²­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2143', '254', 'ç¯å¡”å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2144', '254', 'è¾½é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2145', '255', 'åŒå°å­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2146', '255', 'å…´éš†å°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2147', '255', 'å¤§æ´¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2148', '255', 'ç›˜å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2149', '256', 'é“¶å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2150', '256', 'æ¸…æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2151', '256', 'è°ƒå…µå±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2152', '256', 'å¼€åŸå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2153', '256', 'é“å²­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2154', '256', 'è¥¿ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2155', '256', 'æ˜Œå›¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2156', '257', 'ç«™å‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2157', '257', 'è¥¿å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2158', '257', 'é²…é±¼åœˆåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2159', '257', 'è€è¾¹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2160', '257', 'ç›–å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2161', '257', 'å¤§çŸ³æ¡¥å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2162', '258', 'å›æ°‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2163', '258', 'ç‰æ³‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2164', '258', 'æ–°åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2165', '258', 'èµ›ç½•åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2166', '258', 'æ¸…æ°´æ²³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2167', '258', 'åœŸé»˜ç‰¹å·¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2168', '258', 'æ‰˜å…‹æ‰˜å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2169', '258', 'å’Œæ—æ ¼å°”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2170', '258', 'æ­¦å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2171', '259', 'é˜¿æ‹‰å–„å·¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2172', '259', 'é˜¿æ‹‰å–„å³æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2173', '259', 'é¢æµçº³æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2174', '260', 'ä¸´æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2175', '260', 'äº”åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2176', '260', 'ç£´å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2177', '260', 'ä¹Œæ‹‰ç‰¹å‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2178', '260', 'ä¹Œæ‹‰ç‰¹ä¸­æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2179', '260', 'ä¹Œæ‹‰ç‰¹åæ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2180', '260', 'æ­é”¦åæ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2181', '261', 'æ˜†éƒ½ä»‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2182', '261', 'é’å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2183', '261', 'ä¸œæ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2184', '261', 'ä¹åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2185', '261', 'çŸ³æ‹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2186', '261', 'ç™½äº‘çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2187', '261', 'åœŸé»˜ç‰¹å³æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2188', '261', 'å›ºé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2189', '261', 'è¾¾å°”ç½•èŒ‚æ˜å®‰è”åˆæ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2190', '262', 'çº¢å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2191', '262', 'å…ƒå®å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2192', '262', 'æ¾å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2193', '262', 'é˜¿é²ç§‘å°”æ²æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2194', '262', 'å·´æ—å·¦æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2195', '262', 'å·´æ—å³æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2196', '262', 'æ—è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2197', '262', 'å…‹ä»€å…‹è…¾æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2198', '262', 'ç¿ç‰›ç‰¹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2199', '262', 'å–€å–‡æ²æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2200', '262', 'å®åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2201', '262', 'æ•–æ±‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2202', '263', 'ä¸œèƒœåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2203', '263', 'è¾¾æ‹‰ç‰¹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2204', '263', 'å‡†æ ¼å°”æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2205', '263', 'é„‚æ‰˜å…‹å‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2206', '263', 'é„‚æ‰˜å…‹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2207', '263', 'æ­é”¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2208', '263', 'ä¹Œå®¡æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2209', '263', 'ä¼Šé‡‘éœæ´›æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2210', '264', 'æµ·æ‹‰å°”åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2211', '264', 'è«åŠ›è¾¾ç“¦', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2212', '264', 'æ»¡æ´²é‡Œå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2213', '264', 'ç‰™å…‹çŸ³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2214', '264', 'æ‰å…°å±¯å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2215', '264', 'é¢å°”å¤çº³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2216', '264', 'æ ¹æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2217', '264', 'é˜¿è£æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2218', '264', 'é„‚ä¼¦æ˜¥è‡ªæ²»æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2219', '264', 'é„‚æ¸©å…‹æ—è‡ªæ²»æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2220', '264', 'é™ˆå·´å°”è™æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2221', '264', 'æ–°å·´å°”è™å·¦æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2222', '264', 'æ–°å·´å°”è™å³æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2223', '265', 'ç§‘å°”æ²åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2224', '265', 'éœæ—éƒ­å‹’å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2225', '265', 'ç§‘å°”æ²å·¦ç¿¼ä¸­æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2226', '265', 'ç§‘å°”æ²å·¦ç¿¼åæ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2227', '265', 'å¼€é²å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2228', '265', 'åº“ä¼¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2229', '265', 'å¥ˆæ›¼æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2230', '265', 'æ‰é²ç‰¹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2231', '266', 'æµ·å‹ƒæ¹¾åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2232', '266', 'ä¹Œè¾¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2233', '266', 'æµ·å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2234', '267', 'åŒ–å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2235', '267', 'é›†å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2236', '267', 'ä¸°é•‡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2237', '267', 'å“èµ„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2238', '267', 'å•†éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2239', '267', 'å…´å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2240', '267', 'å‡‰åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2241', '267', 'å¯Ÿå“ˆå°”å³ç¿¼å‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2242', '267', 'å¯Ÿå“ˆå°”å³ç¿¼ä¸­æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2243', '267', 'å¯Ÿå“ˆå°”å³ç¿¼åæ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2244', '267', 'å››å­ç‹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2245', '268', 'äºŒè¿æµ©ç‰¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2246', '268', 'é”¡æ—æµ©ç‰¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2247', '268', 'é˜¿å·´å˜æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2248', '268', 'è‹å°¼ç‰¹å·¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2249', '268', 'è‹å°¼ç‰¹å³æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2250', '268', 'ä¸œä¹Œç ç©†æ²æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2251', '268', 'è¥¿ä¹Œç ç©†æ²æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2252', '268', 'å¤ªä»†å¯ºæ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2253', '268', 'é•¶é»„æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2254', '268', 'æ­£é•¶ç™½æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2255', '268', 'æ­£è“æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2256', '268', 'å¤šä¼¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2257', '269', 'ä¹Œå…°æµ©ç‰¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2258', '269', 'é˜¿å°”å±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2259', '269', 'ç§‘å°”æ²å³ç¿¼å‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2260', '269', 'ç§‘å°”æ²å³ç¿¼ä¸­æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2261', '269', 'æ‰èµ‰ç‰¹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2262', '269', 'çªæ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2263', '270', 'è¥¿å¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2264', '270', 'é‡‘å‡¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2265', '270', 'å…´åº†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2266', '270', 'çµæ­¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2267', '270', 'æ°¸å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2268', '270', 'è´ºå…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2269', '271', 'åŸå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2270', '271', 'æµ·åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2271', '271', 'è¥¿å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2272', '271', 'éš†å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2273', '271', 'æ³¾æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2274', '271', 'å½­é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2275', '272', 'æƒ å†œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2276', '272', 'å¤§æ­¦å£åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2277', '272', 'æƒ å†œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2278', '272', 'é™¶ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2279', '272', 'å¹³ç½—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2280', '273', 'åˆ©é€šåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2281', '273', 'ä¸­å«å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2282', '273', 'é’é“œå³¡å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2283', '273', 'ä¸­å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2284', '273', 'ç›æ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2285', '273', 'åŒå¿ƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2286', '274', 'æ²™å¡å¤´åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2287', '274', 'æµ·åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2288', '274', 'ä¸­å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2289', '275', 'åŸä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2290', '275', 'åŸä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2291', '275', 'åŸè¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2292', '275', 'åŸåŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2293', '275', 'æ¹Ÿä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2294', '275', 'æ¹Ÿæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2295', '275', 'å¤§é€\š', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2296', '276', 'ç›æ²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2297', '276', 'ç­ç›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2298', '276', 'ç”˜å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2299', '276', 'è¾¾æ—¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2300', '276', 'ä¹…æ²»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2301', '276', 'ç›å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2302', '277', 'æµ·æ™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2303', '277', 'ç¥è¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2304', '277', 'åˆšå¯Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2305', '277', 'é—¨æº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2306', '278', 'å¹³å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2307', '278', 'ä¹éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2308', '278', 'æ°‘å’Œ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2309', '278', 'äº’åŠ©', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2310', '278', 'åŒ–éš†', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2311', '278', 'å¾ªåŒ–', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2312', '279', 'å…±å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2313', '279', 'åŒå¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2314', '279', 'è´µå¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2315', '279', 'å…´æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2316', '279', 'è´µå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2317', '280', 'å¾·ä»¤å“ˆå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2318', '280', 'æ ¼å°”æœ¨å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2319', '280', 'ä¹Œå…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2320', '280', 'éƒ½å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2321', '280', 'å¤©å³»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2322', '281', 'åŒä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2323', '281', 'å°–æ‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2324', '281', 'æ³½åº“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2325', '281', 'æ²³å—è’™å¤æ—è‡ªæ²»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2326', '282', 'ç‰æ ‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2327', '282', 'æ‚å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2328', '282', 'ç§°å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2329', '282', 'æ²»å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2330', '282', 'å›Šè°¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2331', '282', 'æ›²éº»è±å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2332', '283', 'å¸‚ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2333', '283', 'å†ä¸‹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2334', '283', 'å¤©æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2335', '283', 'æ§è«åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2336', '283', 'å†åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2337', '283', 'é•¿æ¸…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2338', '283', 'ç« ä¸˜å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2339', '283', 'å¹³é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2340', '283', 'æµé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2341', '283', 'å•†æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2342', '284', 'å¸‚å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2343', '284', 'å¸‚åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2344', '284', 'åŸé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2345', '284', 'å››æ–¹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2346', '284', 'ææ²§åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2347', '284', 'é»„å²›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2348', '284', 'å´‚å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2349', '284', 'èƒ¶å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2350', '284', 'å³å¢¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2351', '284', 'å¹³åº¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2352', '284', 'èƒ¶å—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2353', '284', 'è±è¥¿å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2354', '285', 'æ»¨åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2355', '285', 'æƒ æ°‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2356', '285', 'é˜³ä¿¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2357', '285', 'æ— æ££å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2358', '285', 'æ²¾åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2359', '285', 'åšå…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2360', '285', 'é‚¹å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2361', '286', 'å¾·åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2362', '286', 'é™µå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2363', '286', 'ä¹é™µå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2364', '286', 'ç¦¹åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2365', '286', 'å®æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2366', '286', 'åº†äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2367', '286', 'ä¸´é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2368', '286', 'é½æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2369', '286', 'å¹³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2370', '286', 'å¤æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2371', '286', 'æ­¦åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2372', '287', 'ä¸œè¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2373', '287', 'æ²³å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2374', '287', 'å¦åˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2375', '287', 'åˆ©æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2376', '287', 'å¹¿é¥¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2377', '288', 'ç‰¡ä¸¹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2378', '288', 'æ›¹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2379', '288', 'å•å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2380', '288', 'æˆæ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2381', '288', 'å·¨é‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2382', '288', 'éƒ“åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2383', '288', 'é„„åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2384', '288', 'å®šé™¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2385', '288', 'ä¸œæ˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2386', '289', 'å¸‚ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2387', '289', 'ä»»åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2388', '289', 'æ›²é˜œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2389', '289', 'å…–å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2390', '289', 'é‚¹åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2391', '289', 'å¾®å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2392', '289', 'é±¼å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2393', '289', 'é‡‘ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2394', '289', 'å˜‰ç¥¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2395', '289', 'æ±¶ä¸Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2396', '289', 'æ³—æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2397', '289', 'æ¢å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2398', '290', 'è±åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2399', '290', 'é’¢åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2400', '291', 'ä¸œæ˜ŒåºœåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2401', '291', 'ä¸´æ¸…å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2402', '291', 'é˜³è°·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2403', '291', 'è˜å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2404', '291', 'èŒŒå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2405', '291', 'ä¸œé˜¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2406', '291', 'å† å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2407', '291', 'é«˜å”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2408', '292', 'å…°å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2409', '292', 'ç½—åº„åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2410', '292', 'æ²³ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2411', '292', 'æ²‚å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2412', '292', 'éƒ¯åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2413', '292', 'æ²‚æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2414', '292', 'è‹å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2415', '292', 'è´¹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2416', '292', 'å¹³é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2417', '292', 'è’å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2418', '292', 'è’™é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2419', '292', 'ä¸´æ²­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2420', '293', 'ä¸œæ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2421', '293', 'å²šå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2422', '293', 'äº”è²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2423', '293', 'è’å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2424', '294', 'æ³°å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2425', '294', 'å²±å²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2426', '294', 'æ–°æ³°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2427', '294', 'è‚¥åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2428', '294', 'å®é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2429', '294', 'ä¸œå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2430', '295', 'è£æˆå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2431', '295', 'ä¹³å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2432', '295', 'ç¯ç¿ åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2433', '295', 'æ–‡ç™»å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2434', '296', 'æ½åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2435', '296', 'å¯’äº­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2436', '296', 'åŠå­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2437', '296', 'å¥æ–‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2438', '296', 'é’å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2439', '296', 'è¯¸åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2440', '296', 'å¯¿å…‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2441', '296', 'å®‰ä¸˜å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2442', '296', 'é«˜å¯†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2443', '296', 'æ˜Œé‚‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2444', '296', 'ä¸´æœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2445', '296', 'æ˜Œä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2446', '297', 'èŠç½˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2447', '297', 'ç¦å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2448', '297', 'ç‰Ÿå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2449', '297', 'è±å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2450', '297', 'å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2451', '297', 'é¾™å£å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2452', '297', 'è±é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2453', '297', 'è±å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2454', '297', 'è“¬è±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2455', '297', 'æ‹›è¿œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2456', '297', 'æ –éœå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2457', '297', 'æµ·é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2458', '297', 'é•¿å²›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2459', '298', 'å¸‚ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2460', '298', 'å±±äº­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2461', '298', 'å³„åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2462', '298', 'å°å„¿åº„åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2463', '298', 'è–›åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2464', '298', 'æ»•å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2465', '299', 'å¼ åº—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2466', '299', 'ä¸´æ·„åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2467', '299', 'æ·„å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2468', '299', 'åšå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2469', '299', 'å‘¨æ‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2470', '299', 'æ¡“å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2471', '299', 'é«˜é’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2472', '299', 'æ²‚æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2473', '300', 'æèŠ±å²­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2474', '300', 'å°åº—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2475', '300', 'è¿æ³½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2476', '300', 'å°–è‰åªåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2477', '300', 'ä¸‡æŸæ—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2478', '300', 'æ™‹æºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2479', '300', 'é«˜æ–°å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2480', '300', 'æ°‘è¥ç»æµå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2481', '300', 'ç»æµæŠ€æœ¯å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2482', '300', 'æ¸…å¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2483', '300', 'é˜³æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2484', '300', 'å¨„çƒ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2485', '300', 'å¤äº¤å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2486', '301', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2487', '301', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2488', '301', 'æ²å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2489', '301', 'æ½åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2490', '301', 'é•¿æ²»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2491', '301', 'è¥„å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2492', '301', 'å±¯ç•™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2493', '301', 'å¹³é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2494', '301', 'é»åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2495', '301', 'å£¶å…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2496', '301', 'é•¿å­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2497', '301', 'æ­¦ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2498', '301', 'æ²æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2499', '302', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2500', '302', 'çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2501', '302', 'å—éƒŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2502', '302', 'æ–°è£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2503', '302', 'é˜³é«˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2504', '302', 'å¤©é•‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2505', '302', 'å¹¿çµå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2506', '302', 'çµä¸˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2507', '302', 'æµ‘æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2508', '302', 'å·¦äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2509', '302', 'å¤§åŒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2510', '303', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2511', '303', 'é«˜å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2512', '303', 'æ²æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2513', '303', 'é˜³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2514', '303', 'é™µå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2515', '303', 'æ³½å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2516', '304', 'æ¦†æ¬¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2517', '304', 'ä»‹ä¼‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2518', '304', 'æ¦†ç¤¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2519', '304', 'å·¦æƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2520', '304', 'å’Œé¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2521', '304', 'æ˜”é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2522', '304', 'å¯¿é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2523', '304', 'å¤ªè°·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2524', '304', 'ç¥å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2525', '304', 'å¹³é¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2526', '304', 'çµçŸ³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2527', '305', 'å°§éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2528', '305', 'ä¾¯é©¬å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2529', '305', 'éœå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2530', '305', 'æ›²æ²ƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2531', '305', 'ç¿¼åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2532', '305', 'è¥„æ±¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2533', '305', 'æ´ªæ´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2534', '305', 'å‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2535', '305', 'å®‰æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2536', '305', 'æµ®å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2537', '305', 'å¤å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2538', '305', 'ä¹¡å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2539', '305', 'å¤§å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2540', '305', 'éš°å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2541', '305', 'æ°¸å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2542', '305', 'è’²å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2543', '305', 'æ±¾è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2544', '306', 'ç¦»çŸ³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2545', '306', 'ç¦»çŸ³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2546', '306', 'å­ä¹‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2547', '306', 'æ±¾é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2548', '306', 'æ–‡æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2549', '306', 'äº¤åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2550', '306', 'å…´å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2551', '306', 'ä¸´å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2552', '306', 'æŸ³æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2553', '306', 'çŸ³æ¥¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2554', '306', 'å²šå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2555', '306', 'æ–¹å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2556', '306', 'ä¸­é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2557', '306', 'äº¤å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2558', '307', 'æœ”åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2559', '307', 'å¹³é²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2560', '307', 'å±±é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2561', '307', 'åº”å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2562', '307', 'å³ç‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2563', '307', 'æ€€ä»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2564', '308', 'å¿»åºœåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2565', '308', 'åŸå¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2566', '308', 'å®šè¥„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2567', '308', 'äº”å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2568', '308', 'ä»£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2569', '308', 'ç¹å³™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2570', '308', 'å®æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2571', '308', 'é™ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2572', '308', 'ç¥æ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2573', '308', 'äº”å¯¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2574', '308', 'å²¢å²šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2575', '308', 'æ²³æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2576', '308', 'ä¿å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2577', '308', 'åå…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2578', '309', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2579', '309', 'çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2580', '309', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2581', '309', 'å¹³å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2582', '309', 'ç›‚å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2583', '310', 'ç›æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2584', '310', 'æ°¸æµå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2585', '310', 'æ²³æ´¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2586', '310', 'ä¸´çŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2587', '310', 'ä¸‡è£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2588', '310', 'é—»å–œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2589', '310', 'ç¨·å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2590', '310', 'æ–°ç»›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2591', '310', 'ç»›å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2592', '310', 'å£æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2593', '310', 'å¤å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2594', '310', 'å¹³é™†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2595', '310', 'èŠ®åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2596', '311', 'è²æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2597', '311', 'æ–°åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2598', '311', 'ç¢‘æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2599', '311', 'é›å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2600', '311', 'çæ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2601', '311', 'æœªå¤®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2602', '311', 'é˜è‰¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2603', '311', 'ä¸´æ½¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2604', '311', 'é•¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2605', '311', 'è“ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2606', '311', 'å‘¨è‡³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2607', '311', 'æˆ·å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2608', '311', 'é«˜é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2609', '312', 'æ±‰æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2610', '312', 'æ±‰é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2611', '312', 'çŸ³æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2612', '312', 'å®é™•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2613', '312', 'ç´«é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2614', '312', 'å²šçš‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2615', '312', 'å¹³åˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2616', '312', 'é•‡åªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2617', '312', 'æ—¬é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2618', '312', 'ç™½æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2619', '313', 'é™ˆä»“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2620', '313', 'æ¸­æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2621', '313', 'é‡‘å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2622', '313', 'å‡¤ç¿”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2623', '313', 'å²å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2624', '313', 'æ‰¶é£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2625', '313', 'çœ‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2626', '313', 'é™‡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2627', '313', 'åƒé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2628', '313', 'éºŸæ¸¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2629', '313', 'å‡¤å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2630', '313', 'å¤ªç™½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2631', '314', 'æ±‰å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2632', '314', 'å—éƒ‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2633', '314', 'åŸå›ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2634', '314', 'æ´‹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2635', '314', 'è¥¿ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2636', '314', 'å‹‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2637', '314', 'å®å¼ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2638', '314', 'ç•¥é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2639', '314', 'é•‡å·´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2640', '314', 'ç•™åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2641', '314', 'ä½›åªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2642', '315', 'å•†å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2643', '315', 'æ´›å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2644', '315', 'ä¸¹å‡¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2645', '315', 'å•†å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2646', '315', 'å±±é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2647', '315', 'é•‡å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2648', '315', 'æŸæ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2649', '316', 'è€€å·åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2650', '316', 'ç‹ç›ŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2651', '316', 'å°å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2652', '316', 'å®œå›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2653', '317', 'ä¸´æ¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2654', '317', 'éŸ©åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2655', '317', 'åé˜´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2656', '317', 'åå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2657', '317', 'æ½¼å…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2658', '317', 'å¤§è”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2659', '317', 'åˆé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2660', '317', 'æ¾„åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2661', '317', 'è’²åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2662', '317', 'ç™½æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2663', '317', 'å¯Œå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2664', '318', 'ç§¦éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2665', '318', 'æ¸­åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2666', '318', 'æ¨é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2667', '318', 'å…´å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2668', '318', 'ä¸‰åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2669', '318', 'æ³¾é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2670', '318', 'ä¹¾å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2671', '318', 'ç¤¼æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2672', '318', 'æ°¸å¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2673', '318', 'å½¬å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2674', '318', 'é•¿æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2675', '318', 'æ—¬é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2676', '318', 'æ·³åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2677', '318', 'æ­¦åŠŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2678', '319', 'å´èµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2679', '319', 'å®å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2680', '319', 'å»¶é•¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2681', '319', 'å»¶å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2682', '319', 'å­é•¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2683', '319', 'å®‰å¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2684', '319', 'å¿—ä¸¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2685', '319', 'ç”˜æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2686', '319', 'å¯Œå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2687', '319', 'æ´›å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2688', '319', 'å®œå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2689', '319', 'é»„é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2690', '319', 'é»„é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2691', '320', 'æ¦†é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2692', '320', 'ç¥æœ¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2693', '320', 'åºœè°·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2694', '320', 'æ¨ªå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2695', '320', 'é–è¾¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2696', '320', 'å®šè¾¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2697', '320', 'ç»¥å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2698', '320', 'ç±³è„‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2699', '320', 'ä½³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2700', '320', 'å´å ¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2701', '320', 'æ¸…æ¶§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2702', '320', 'å­æ´²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2703', '321', 'é•¿å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2704', '321', 'é—¸åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2705', '321', 'é—µè¡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2706', '321', 'å¾æ±‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2707', '321', 'æµ¦ä¸œæ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2708', '321', 'æ¨æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2709', '321', 'æ™®é™€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2710', '321', 'é™å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2711', '321', 'å¢æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2712', '321', 'è™¹å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2713', '321', 'é»„æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2714', '321', 'å—æ±‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2715', '321', 'æ¾æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2716', '321', 'å˜‰å®šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2717', '321', 'å®å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2718', '321', 'é’æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2719', '321', 'é‡‘å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2720', '321', 'å¥‰è´¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2721', '321', 'å´‡æ˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2722', '322', 'é’ç¾ŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2723', '322', 'é”¦æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2724', '322', 'é‡‘ç‰›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2725', '322', 'æ­¦ä¾¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2726', '322', 'æˆååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2727', '322', 'é¾™æ³‰é©¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2728', '322', 'é’ç™½æ±ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2729', '322', 'æ–°éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2730', '322', 'æ¸©æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2731', '322', 'é«˜æ–°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2732', '322', 'é«˜æ–°è¥¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2733', '322', 'éƒ½æ±Ÿå °å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2734', '322', 'å½­å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2735', '322', 'é‚›å´ƒå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2736', '322', 'å´‡å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2737', '322', 'é‡‘å ‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2738', '322', 'åŒæµå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2739', '322', 'éƒ«å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2740', '322', 'å¤§é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2741', '322', 'è’²æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2742', '322', 'æ–°æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2743', '322', 'éƒ½æ±Ÿå °å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2744', '322', 'å½­å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2745', '322', 'é‚›å´ƒå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2746', '322', 'å´‡å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2747', '322', 'é‡‘å ‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2748', '322', 'åŒæµå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2749', '322', 'éƒ«å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2750', '322', 'å¤§é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2751', '322', 'è’²æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2752', '322', 'æ–°æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2753', '323', 'æ¶ªåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2754', '323', 'æ¸¸ä»™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2755', '323', 'æ±Ÿæ²¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2756', '323', 'ç›äº­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2757', '323', 'ä¸‰å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2758', '323', 'å¹³æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2759', '323', 'å®‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2760', '323', 'æ¢“æ½¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2761', '323', 'åŒ—å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2762', '324', 'é©¬å°”åº·å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2763', '324', 'æ±¶å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2764', '324', 'ç†å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2765', '324', 'èŒ‚å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2766', '324', 'æ¾æ½˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2767', '324', 'ä¹å¯¨æ²Ÿå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2768', '324', 'é‡‘å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2769', '324', 'å°é‡‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2770', '324', 'é»‘æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2771', '324', 'å£¤å¡˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2772', '324', 'é˜¿åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2773', '324', 'è‹¥å°”ç›–å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2774', '324', 'çº¢åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2775', '325', 'å·´å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2776', '325', 'é€šæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2777', '325', 'å—æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2778', '325', 'å¹³æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2779', '326', 'é€šå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2780', '326', 'ä¸‡æºå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2781', '326', 'è¾¾å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2782', '326', 'å®£æ±‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2783', '326', 'å¼€æ±Ÿå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2784', '326', 'å¤§ç«¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2785', '326', 'æ¸ å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2786', '327', 'æ—Œé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2787', '327', 'å¹¿æ±‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2788', '327', 'ä»€é‚¡å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2789', '327', 'ç»µç«¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2790', '327', 'ç½—æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2791', '327', 'ä¸­æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2792', '328', 'åº·å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2793', '328', 'ä¸¹å·´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2794', '328', 'æ³¸å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2795', '328', 'ç‚‰éœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2796', '328', 'ä¹é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2797', '328', 'ç”˜å­œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2798', '328', 'é›…æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2799', '328', 'æ–°é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2800', '328', 'é“å­šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2801', '328', 'ç™½ç‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2802', '328', 'ç†å¡˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2803', '328', 'å¾·æ ¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2804', '328', 'ä¹¡åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2805', '328', 'çŸ³æ¸ å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2806', '328', 'ç¨»åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2807', '328', 'è‰²è¾¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2808', '328', 'å·´å¡˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2809', '328', 'å¾—è£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2810', '329', 'å¹¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2811', '329', 'åè“¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2812', '329', 'å²³æ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2813', '329', 'æ­¦èƒœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2814', '329', 'é‚»æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2815', '330', 'åˆ©å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2816', '330', 'å…ƒååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2817', '330', 'æœå¤©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2818', '330', 'æ—ºè‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2819', '330', 'é’å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2820', '330', 'å‰‘é˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2821', '330', 'è‹æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2822', '331', 'å³¨çœ‰å±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2823', '331', 'ä¹å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2824', '331', 'çŠä¸ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2825', '331', 'äº•ç ”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2826', '331', 'å¤¹æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2827', '331', 'æ²å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2828', '331', 'å³¨è¾¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2829', '331', 'é©¬è¾¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2830', '332', 'è¥¿æ˜Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2831', '332', 'ç›æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2832', '332', 'å¾·æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2833', '332', 'ä¼šç†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2834', '332', 'ä¼šä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2835', '332', 'å®å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2836', '332', 'æ™®æ ¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2837', '332', 'å¸ƒæ‹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2838', '332', 'é‡‘é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2839', '332', 'æ˜­è§‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2840', '332', 'å–œå¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2841', '332', 'å†•å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2842', '332', 'è¶Šè¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2843', '332', 'ç”˜æ´›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2844', '332', 'ç¾å§‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2845', '332', 'é›·æ³¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2846', '332', 'æœ¨é‡Œ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2847', '333', 'ä¸œå¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2848', '333', 'ä»å¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2849', '333', 'å½­å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2850', '333', 'æ´ªé›…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2851', '333', 'ä¸¹æ£±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2852', '333', 'é’ç¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2853', '334', 'é˜†ä¸­å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2854', '334', 'å—éƒ¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2855', '334', 'è¥å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2856', '334', 'è“¬å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2857', '334', 'ä»ªé™‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2858', '334', 'é¡ºåº†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2859', '334', 'é«˜åªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2860', '334', 'å˜‰é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2861', '334', 'è¥¿å……å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2862', '335', 'å¸‚ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2863', '335', 'ä¸œå…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2864', '335', 'å¨è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2865', '335', 'èµ„ä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2866', '335', 'éš†æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2867', '336', 'ä¸\œ  åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2868', '336', 'è¥\¿  åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2869', '336', 'ä»å’ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2870', '336', 'ç±³æ˜“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2871', '336', 'ç›è¾¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2872', '337', 'èˆ¹å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2873', '337', 'å®‰å±…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2874', '337', 'è“¬æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2875', '337', 'å°„æ´ªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2876', '337', 'å¤§è‹±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2877', '338', 'é›¨åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2878', '338', 'åå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2879', '338', 'è¥ç»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2880', '338', 'æ±‰æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2881', '338', 'çŸ³æ£‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2882', '338', 'å¤©å…¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2883', '338', 'èŠ¦å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2884', '338', 'å®å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2885', '339', 'ç¿ å±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2886', '339', 'å®œå®¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2887', '339', 'å—æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2888', '339', 'æ±Ÿå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2889', '339', 'é•¿å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2890', '339', 'é«˜å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2891', '339', 'ç™å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2892', '339', 'ç­ è¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2893', '339', 'å…´æ–‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2894', '339', 'å±å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2895', '340', 'é›æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2896', '340', 'ç®€é˜³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2897', '340', 'å®‰å²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2898', '340', 'ä¹è‡³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2899', '341', 'å¤§å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2900', '341', 'è‡ªæµäº•åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2901', '341', 'è´¡äº•åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2902', '341', 'æ²¿æ»©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2903', '341', 'è£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2904', '341', 'å¯Œé¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2905', '342', 'æ±Ÿé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2906', '342', 'çº³æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2907', '342', 'é¾™é©¬æ½­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2908', '342', 'æ³¸å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2909', '342', 'åˆæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2910', '342', 'å™æ°¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2911', '342', 'å¤è”ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2912', '343', 'å’Œå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2913', '343', 'æ²³è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2914', '343', 'å—å¼€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2915', '343', 'æ²³åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2916', '343', 'æ²³ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2917', '343', 'çº¢æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2918', '343', 'ä¸œä¸½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2919', '343', 'æ´¥å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2920', '343', 'è¥¿é’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2921', '343', 'åŒ—è¾°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2922', '343', 'å¡˜æ²½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2923', '343', 'æ±‰æ²½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2924', '343', 'å¤§æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2925', '343', 'æ­¦æ¸…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2926', '343', 'å®å»åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2927', '343', 'ç»æµå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2928', '343', 'å®æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2929', '343', 'é™æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2930', '343', 'è“Ÿå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2931', '344', 'åŸå…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2932', '344', 'æ—å‘¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2933', '344', 'å½“é›„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2934', '344', 'å°¼æœ¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2935', '344', 'æ›²æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2936', '344', 'å †é¾™å¾·åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2937', '344', 'è¾¾å­œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2938', '344', 'å¢¨ç«¹å·¥å¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2939', '345', 'å™¶å°”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2940', '345', 'æ™®å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2941', '345', 'æœ­è¾¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2942', '345', 'æ—¥åœŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2943', '345', 'é©å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2944', '345', 'æ”¹åˆ™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2945', '345', 'æªå‹¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2946', '346', 'æ˜Œéƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2947', '346', 'æ±Ÿè¾¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2948', '346', 'è´¡è§‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2949', '346', 'ç±»ä¹Œé½å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2950', '346', 'ä¸é’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2951', '346', 'å¯Ÿé›…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2952', '346', 'å…«å®¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2953', '346', 'å·¦è´¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2954', '346', 'èŠ’åº·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2955', '346', 'æ´›éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2956', '346', 'è¾¹åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2957', '347', 'æ—èŠå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2958', '347', 'å·¥å¸ƒæ±Ÿè¾¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2959', '347', 'ç±³æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2960', '347', 'å¢¨è„±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2961', '347', 'æ³¢å¯†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2962', '347', 'å¯Ÿéš…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2963', '347', 'æœ—å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2964', '348', 'é‚£æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2965', '348', 'å˜‰é»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2966', '348', 'æ¯”å¦‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2967', '348', 'è‚è£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2968', '348', 'å®‰å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2969', '348', 'ç”³æ‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2970', '348', 'ç´¢å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2971', '348', 'ç­æˆˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2972', '348', 'å·´é’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2973', '348', 'å°¼ç›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2974', '349', 'æ—¥å–€åˆ™å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2975', '349', 'å—æœ¨æ—å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2976', '349', 'æ±Ÿå­œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2977', '349', 'å®šæ—¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2978', '349', 'è¨è¿¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2979', '349', 'æ‹‰å­œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2980', '349', 'æ˜‚ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2981', '349', 'è°¢é€šé—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2982', '349', 'ç™½æœ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2983', '349', 'ä»å¸ƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2984', '349', 'åº·é©¬å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2985', '349', 'å®šç»“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2986', '349', 'ä»²å·´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2987', '349', 'äºšä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2988', '349', 'å‰éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2989', '349', 'è‚æ‹‰æœ¨å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2990', '349', 'è¨å˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2991', '349', 'å²—å·´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2992', '350', 'ä¹ƒä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2993', '350', 'æ‰å›Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2994', '350', 'è´¡å˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2995', '350', 'æ¡‘æ—¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2996', '350', 'ç¼ç»“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2997', '350', 'æ›²æ¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2998', '350', 'æªç¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2999', '350', 'æ´›æ‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3000', '350', 'åŠ æŸ¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3001', '350', 'éš†å­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3002', '350', 'é”™é‚£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3003', '350', 'æµªå¡å­å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3004', '351', 'å¤©å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3005', '351', 'æ²™ä¾å·´å…‹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3006', '351', 'æ–°å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3007', '351', 'æ°´ç£¨æ²ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3008', '351', 'å¤´å±¯æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3009', '351', 'è¾¾å‚åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3010', '351', 'ç±³ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3011', '351', 'ä¹Œé²æœ¨é½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3012', '352', 'é˜¿å…‹è‹å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3013', '352', 'æ¸©å®¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3014', '352', 'åº“è½¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3015', '352', 'æ²™é›…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3016', '352', 'æ–°å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3017', '352', 'æ‹œåŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3018', '352', 'ä¹Œä»€å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3019', '352', 'é˜¿ç“¦æå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3020', '352', 'æŸ¯åªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3021', '353', 'é˜¿æ‹‰å°”å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3022', '354', 'åº“å°”å‹’å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3023', '354', 'è½®å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3024', '354', 'å°‰çŠå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3025', '354', 'è‹¥ç¾Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3026', '354', 'ä¸”æœ«å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3027', '354', 'ç„‰è€\†', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3028', '354', 'å’Œé™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3029', '354', 'å’Œç¡•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3030', '354', 'åšæ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3031', '355', 'åšä¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3032', '355', 'ç²¾æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3033', '355', 'æ¸©æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3034', '356', 'å‘¼å›¾å£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3035', '356', 'ç±³æ³‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3036', '356', 'æ˜Œå‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3037', '356', 'é˜œåº·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3038', '356', 'ç›çº³æ–¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3039', '356', 'å¥‡å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3040', '356', 'å‰æœ¨è¨å°”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3041', '356', 'æœ¨å’', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3042', '357', 'å“ˆå¯†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3043', '357', 'ä¼Šå¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3044', '357', 'å·´é‡Œå\¤', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3045', '358', 'å’Œç”°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3046', '358', 'å’Œç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3047', '358', 'å¢¨ç‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3048', '358', 'çš®å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3049', '358', 'æ´›æµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3050', '358', 'ç­–å‹’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3051', '358', 'äºç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3052', '358', 'æ°‘ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3053', '359', 'å–€ä»€å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3054', '359', 'ç–é™„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3055', '359', 'ç–å‹’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3056', '359', 'è‹±å‰æ²™å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3057', '359', 'æ³½æ™®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3058', '359', 'èè½¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3059', '359', 'å¶åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3060', '359', 'éº¦ç›–æå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3061', '359', 'å²³æ™®æ¹–å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3062', '359', 'ä¼½å¸ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3063', '359', 'å·´æ¥šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3064', '359', 'å¡”ä»€åº“å°”å¹\²', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3065', '360', 'å…‹æ‹‰ç›ä¾å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3066', '361', 'é˜¿å›¾ä»€å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3067', '361', 'é˜¿å…‹é™¶å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3068', '361', 'é˜¿åˆå¥‡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3069', '361', 'ä¹Œæ°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3070', '362', 'çŸ³æ²³å­å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3071', '363', 'å›¾æœ¨èˆ’å…‹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3072', '364', 'åé²ç•ªå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3073', '364', 'é„¯å–„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3074', '364', 'æ‰˜å…‹é€Šå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3075', '365', 'äº”å®¶æ¸ å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3076', '366', 'é˜¿å‹’æ³°å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3077', '366', 'å¸ƒå…‹èµ›å°”', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3078', '366', 'ä¼Šå®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3079', '366', 'å¸ƒå°”æ´¥å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3080', '366', 'å¥å±¯å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3081', '366', 'ä¹Œè‹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3082', '366', 'é¢æ•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3083', '366', 'å¯Œè•´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3084', '366', 'ä¼Šå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3085', '366', 'ç¦æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3086', '366', 'éœåŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3087', '366', 'æ²™æ¹¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3088', '366', 'å·©ç•™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3089', '366', 'å“ˆå·´æ²³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3090', '366', 'æ‰˜é‡Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3091', '366', 'é’æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3092', '366', 'æ–°æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3093', '366', 'è£•æ°‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3094', '366', 'å’Œå¸ƒå…‹èµ›å°\”', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3095', '366', 'å‰æœ¨ä¹ƒå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3096', '366', 'æ˜­è‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3097', '366', 'ç‰¹å…‹æ–¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3098', '366', 'å°¼å‹’å…‹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3099', '366', 'å¯Ÿå¸ƒæŸ¥å°”', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3100', '367', 'ç›˜é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3101', '367', 'äº”ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3102', '367', 'å®˜æ¸¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3103', '367', 'è¥¿å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3104', '367', 'ä¸œå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3105', '367', 'å®‰å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3106', '367', 'å‘ˆè´¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3107', '367', 'æ™‹å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3108', '367', 'å¯Œæ°‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3109', '367', 'å®œè‰¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3110', '367', 'åµ©æ˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3111', '367', 'çŸ³æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3112', '367', 'ç¦„åŠ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3113', '367', 'å¯»ç”¸', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3114', '368', 'å…°åª', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3115', '368', 'æ³¸æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3116', '368', 'ç¦è´¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3117', '368', 'è´¡å±±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3118', '369', 'å®æ´±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3119', '369', 'æ€èŒ…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3120', '369', 'å¢¨æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3121', '369', 'æ™¯ä¸œ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3122', '369', 'æ™¯è°·', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3123', '369', 'é•‡æ²…', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3124', '369', 'æ±ŸåŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3125', '369', 'å­Ÿè¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3126', '369', 'æ¾œæ²§', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3127', '369', 'è¥¿ç›Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3128', '370', 'å¤åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3129', '370', 'å®è’—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3130', '370', 'ç‰é¾™', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3131', '370', 'æ°¸èƒœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3132', '370', 'ååªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3133', '371', 'éš†é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3134', '371', 'æ–½ç”¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3135', '371', 'è…¾å†²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3136', '371', 'é¾™é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3137', '371', 'æ˜Œå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3138', '372', 'æ¥šé›„å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3139', '372', 'åŒæŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3140', '372', 'ç‰Ÿå®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3141', '372', 'å—åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3142', '372', 'å§šå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3143', '372', 'å¤§å§šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3144', '372', 'æ°¸ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3145', '372', 'å…ƒè°‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3146', '372', 'æ­¦å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3147', '372', 'ç¦„ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3148', '373', 'å¤§ç†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3149', '373', 'ç¥¥äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3150', '373', 'å®¾å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3151', '373', 'å¼¥æ¸¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3152', '373', 'æ°¸å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3153', '373', 'äº‘é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3154', '373', 'æ´±æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3155', '373', 'å‰‘å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3156', '373', 'é¹¤åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3157', '373', 'æ¼¾æ¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3158', '373', 'å—æ¶§', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3159', '373', 'å·å±±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3160', '374', 'æ½è¥¿å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3161', '374', 'ç‘ä¸½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3162', '374', 'æ¢æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3163', '374', 'ç›ˆæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3164', '374', 'é™‡å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3165', '375', 'é¦™æ ¼é‡Œæ‹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3166', '375', 'å¾·é’¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3167', '375', 'ç»´è¥¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3168', '376', 'æ³¸è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3169', '376', 'è’™è‡ªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3170', '376', 'ä¸ªæ—§å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3171', '376', 'å¼€è¿œå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3172', '376', 'ç»¿æ˜¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3173', '376', 'å»ºæ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3174', '376', 'çŸ³å±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3175', '376', 'å¼¥å‹’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3176', '376', 'å…ƒé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3177', '376', 'çº¢æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3178', '376', 'é‡‘å¹³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3179', '376', 'æ²³å£', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3180', '376', 'å±è¾¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3181', '377', 'ä¸´ç¿”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3182', '377', 'å‡¤åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3183', '377', 'äº‘å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3184', '377', 'æ°¸å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3185', '377', 'é•‡åº·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3186', '377', 'åŒæ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3187', '377', 'è€¿é©¬', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3188', '377', 'æ²§æº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3189', '378', 'éº’éºŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3190', '378', 'å®£å¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3191', '378', 'é©¬é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3192', '378', 'é™†è‰¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3193', '378', 'å¸ˆå®—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3194', '378', 'ç½—å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3195', '378', 'å¯Œæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3196', '378', 'ä¼šæ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3197', '378', 'æ²¾ç›Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3198', '379', 'æ–‡å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3199', '379', 'ç šå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3200', '379', 'è¥¿ç•´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3201', '379', 'éº»æ —å¡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3202', '379', 'é©¬å…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3203', '379', 'ä¸˜åŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3204', '379', 'å¹¿å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3205', '379', 'å¯Œå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3206', '380', 'æ™¯æ´ªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3207', '380', 'å‹æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3208', '380', 'å‹è…Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3209', '381', 'çº¢å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3210', '381', 'æ±Ÿå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3211', '381', 'æ¾„æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3212', '381', 'é€šæµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3213', '381', 'åå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3214', '381', 'æ˜“é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3215', '381', 'å³¨å±±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3216', '381', 'æ–°å¹³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3217', '381', 'å…ƒæ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3218', '382', 'æ˜­é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3219', '382', 'é²ç”¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3220', '382', 'å·§å®¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3221', '382', 'ç›æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3222', '382', 'å¤§å…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3223', '382', 'æ°¸å–„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3224', '382', 'ç»¥æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3225', '382', 'é•‡é›„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3226', '382', 'å½è‰¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3227', '382', 'å¨ä¿¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3228', '382', 'æ°´å¯Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3229', '383', 'è¥¿æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3230', '383', 'ä¸ŠåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3231', '383', 'ä¸‹åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3232', '383', 'æ‹±å¢…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3233', '383', 'æ»¨æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3234', '383', 'æ±Ÿå¹²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3235', '383', 'è§å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3236', '383', 'ä½™æ­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3237', '383', 'å¸‚éƒŠ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3238', '383', 'å»ºå¾·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3239', '383', 'å¯Œé˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3240', '383', 'ä¸´å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3241', '383', 'æ¡åºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3242', '383', 'æ·³å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3243', '384', 'å´å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3244', '384', 'å—æµ”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3245', '384', 'å¾·æ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3246', '384', 'é•¿å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3247', '384', 'å®‰å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3248', '385', 'å—æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3249', '385', 'ç§€æ´²åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3250', '385', 'æµ·å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3251', '385', 'å˜‰å–„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3252', '385', 'å¹³æ¹–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3253', '385', 'æ¡ä¹¡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3254', '385', 'æµ·ç›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3255', '386', 'å©ºåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3256', '386', 'é‡‘ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3257', '386', 'å…°æºªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3258', '386', 'å¸‚åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3259', '386', 'ä½›å ‚é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3260', '386', 'ä¸Šæºªé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3261', '386', 'ä¹‰äº­é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3262', '386', 'å¤§é™ˆé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3263', '386', 'è‹æºªé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3264', '386', 'èµ¤å²¸é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3265', '386', 'ä¸œé˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3266', '386', 'æ°¸åº·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3267', '386', 'æ­¦ä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3268', '386', 'æµ¦æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3269', '386', 'ç£å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3270', '387', 'è²éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3271', '387', 'é¾™æ³‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3272', '387', 'é’ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3273', '387', 'ç¼™äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3274', '387', 'é‚æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3275', '387', 'æ¾é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3276', '387', 'äº‘å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3277', '387', 'åº†å…ƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3278', '387', 'æ™¯å®', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3279', '388', 'æµ·æ›™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3280', '388', 'æ±Ÿä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3281', '388', 'æ±ŸåŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3282', '388', 'é•‡æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3283', '388', 'åŒ—ä»‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3284', '388', 'é„å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3285', '388', 'ä½™å§šå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3286', '388', 'æ…ˆæºªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3287', '388', 'å¥‰åŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3288', '388', 'è±¡å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3289', '388', 'å®æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3290', '389', 'è¶ŠåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3291', '389', 'ä¸Šè™å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3292', '389', 'åµŠå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3293', '389', 'ç»å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3294', '389', 'æ–°æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3295', '389', 'è¯¸æš¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3296', '390', 'æ¤’æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3297', '390', 'é»„å²©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3298', '390', 'è·¯æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3299', '390', 'æ¸©å²­å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3300', '390', 'ä¸´æµ·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3301', '390', 'ç‰ç¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3302', '390', 'ä¸‰é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3303', '390', 'å¤©å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3304', '390', 'ä»™å±…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3305', '391', 'é¹¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3306', '391', 'é¾™æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3307', '391', 'ç“¯æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3308', '391', 'ç‘å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3309', '391', 'ä¹æ¸…å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3310', '391', 'æ´å¤´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3311', '391', 'æ°¸å˜‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3312', '391', 'å¹³é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3313', '391', 'è‹å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3314', '391', 'æ–‡æˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3315', '391', 'æ³°é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3316', '392', 'å®šæµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3317', '392', 'æ™®é™€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3318', '392', 'å²±å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3319', '392', 'åµŠæ³—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3320', '393', 'è¡¢å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3321', '393', 'æ±Ÿå±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3322', '393', 'å¸¸å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3323', '393', 'å¼€åŒ–å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3324', '393', 'é¾™æ¸¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3325', '394', 'åˆå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3326', '394', 'æ±Ÿæ´¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3327', '394', 'å—å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3328', '394', 'æ°¸å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3329', '394', 'å—å²¸åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3330', '394', 'æ¸åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3331', '394', 'ä¸‡ç››åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3332', '394', 'å¤§æ¸¡å£åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3333', '394', 'ä¸‡å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3334', '394', 'åŒ—ç¢šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3335', '394', 'æ²™åªååŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3336', '394', 'å·´å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3337', '394', 'æ¶ªé™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3338', '394', 'æ±ŸåŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3339', '394', 'ä¹é¾™å¡åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3340', '394', 'æ¸ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3341', '394', 'é»”æ±Ÿå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3342', '394', 'é•¿å¯¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3343', '394', 'åŒæ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3344', '394', 'ç¶¦æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3345', '394', 'æ½¼å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3346', '394', 'é“œæ¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3347', '394', 'å¤§è¶³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3348', '394', 'è£æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3349', '394', 'ç’§å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3350', '394', 'å«æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3351', '394', 'æ­¦éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3352', '394', 'ä¸°éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3353', '394', 'åŸå£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3354', '394', 'æ¢å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3355', '394', 'å¼€å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3356', '394', 'å·«æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3357', '394', 'å·«å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3358', '394', 'å¥‰èŠ‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3359', '394', 'äº‘é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3360', '394', 'å¿ å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3361', '394', 'çŸ³æŸ±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3362', '394', 'å½­æ°´', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3363', '394', 'é…‰é˜³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3364', '394', 'ç§€å±\±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3365', '395', 'æ²™ç”°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3366', '395', 'ä¸œåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3367', '395', 'è§‚å¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3368', '395', 'é»„å¤§ä»™åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3369', '395', 'ä¹é¾™åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3370', '395', 'å±¯é—¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3371', '395', 'è‘µé’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3372', '395', 'å…ƒæœ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3373', '395', 'æ·±æ°´åŸ—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3374', '395', 'è¥¿è´¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3375', '395', 'å¤§åŸ”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3376', '395', 'æ¹¾ä»”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3377', '395', 'æ²¹å°–æ—ºåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3378', '395', 'åŒ—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3379', '395', 'å—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3380', '395', 'èƒæ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3381', '395', 'ä¸­è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3382', '395', 'ç¦»å²›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3383', '396', 'æ¾³é—¨', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3384', '397', 'å°åŒ—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3385', '397', 'é«˜é›„', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3386', '397', 'åŸºéš†', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3387', '397', 'å°ä¸­', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3388', '397', 'å°å—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3389', '397', 'æ–°ç«¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3390', '397', 'å˜‰ä¹‰', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3391', '397', 'å®œå…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3392', '397', 'æ¡ƒå›­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3393', '397', 'è‹—æ —å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3394', '397', 'å½°åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3395', '397', 'å—æŠ•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3396', '397', 'äº‘æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3397', '397', 'å±ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3398', '397', 'å°ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3399', '397', 'èŠ±è²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3400', '397', 'æ¾æ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3401', '3', 'åˆè‚¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3402', '3401', 'åºé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3403', '3401', 'ç‘¶æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3404', '3401', 'èœ€å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3405', '3401', 'åŒ…æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3406', '3401', 'é•¿ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3407', '3401', 'è‚¥ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3408', '3401', 'è‚¥è¥¿å\¿', '3', '0');
DROP TABLE IF EXISTS `ecs_role`;
CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_searchengine`;
CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('101', '1', 'shop_name', 'text', '', '', 'ç‰¹åˆ«ç”Ÿæ´»ç‰¹åˆ«å\°', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('102', '1', 'shop_title', 'text', '', '', 'ç‰¹åˆ«ç”Ÿæ´»ç‰¹åˆ«å\°', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('103', '1', 'shop_desc', 'text', '', '', 'ç‰¹åˆ«å\°', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('104', '1', 'shop_keywords', 'text', '', '', 'å†²å° ç…§ç‰‡ æ´—ç…§ç‰\‡ ä¸ªæ€§ç›¸å†\Œ DIYç›¸å†Œ å°å† å®å®ç›¸å†Œ å½±é›†', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('106', '1', 'shop_province', 'manual', '', '', '25', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('107', '1', 'shop_city', 'manual', '', '', '321', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('108', '1', 'shop_address', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('109', '1', 'qq', 'text', '', '', '2858118748', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('110', '1', 'ww', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('115', '1', 'service_phone', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('120', '1', 'user_notice', 'textarea', '', '', 'ç”¨æˆ·ä¸­å¿ƒå…¬å‘Šï¼\', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('121', '1', 'shop_notice', 'textarea', '', '', 'ç²¾è‡´çš„å·¥è‰ºï¼Œç‹¬ç‰¹çš„äº§å“ï¼Œæ‰“é€ å±äºä½ çš„å“ä½\', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('202', '2', 'icp_number', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('210', '2', 'integral_name', 'text', '', '', 'ç§¯åˆ†', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('229', '2', 'default_storage', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('231', '2', 'visit_stats', 'select', 'on,off', '', 'on', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('239', '2', 'certificate_id', 'hidden', '', '', '1176142934', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('240', '2', 'token', 'hidden', '', '', '4ed4c143698b2dc551c45358973fc6fd382332abcc5a3979f223c17dee05f65d', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('303', '3', 'currency_format', 'text', '', '', 'ï¿\¥%så…\ƒ', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('304', '3', 'thumb_width', 'text', '', '', '100', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('305', '3', 'thumb_height', 'text', '', '', '100', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('306', '3', 'image_width', 'text', '', '', '230', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('307', '3', 'image_height', 'text', '', '', '230', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('312', '3', 'top_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('316', '3', 'article_number', 'text', '', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('317', '3', 'goods_name_length', 'text', '', '', '7', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('319', '3', 'page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('326', '3', 'name_of_region_1', 'text', '', '', 'å›½å®¶', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('327', '3', 'name_of_region_2', 'text', '', '', 'çœ\', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('328', '3', 'name_of_region_3', 'text', '', '', 'å¸\‚', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('329', '3', 'name_of_region_4', 'text', '', '', 'åŒ\º', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('330', '3', 'search_keywords', 'text', '', '', '', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('503', '5', 'smtp_user', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('504', '5', 'smtp_pass', 'password', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('505', '5', 'smtp_mail', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('603', '6', 'hash_code', 'hidden', '', '', '045e8f2a84ffbe2a1d8e8acc9df4bf35', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('604', '6', 'template', 'hidden', '', '', 'default', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('605', '6', 'install_date', 'hidden', '', '', '1449798152', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('617', '6', 'captcha', 'hidden', '', '', '12', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('901', '9', 'wap_config', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
DROP TABLE IF EXISTS `ecs_snatch_log`;
CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_stats`;
CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449769359', '180.166.196.211', '17', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/install/index.php?lang=zh_cn&amp;step=done', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449769375', '122.144.135.226', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/photo/upload/certi.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449769397', '122.144.135.142', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/photo/upload/certi.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449769478', '192.102.204.38', '18', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/install/index.php?lang=zh_cn&amp;step=done', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449769597', '58.32.203.134', '19', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/install/index.php?lang=zh_cn&amp;step=done', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449770077', '122.144.135.226', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/photo/upload/certi.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449771823', '58.32.203.135', '20', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=list&amp;uselastfilter=1', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449771883', '192.102.204.36', '21', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=118&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449771932', '180.166.196.210', '22', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=list&amp;uselastfilter=1', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449771932', '58.32.203.134', '23', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=118', '/photo/upload/captcha.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449771935', '180.166.196.210', '24', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=118', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449772032', '122.144.135.142', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/photo/upload/certi.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449773578', '192.102.204.38', '25', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=118', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449773926', '122.144.135.226', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/photo/upload/certi.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449773935', '192.102.204.38', '26', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=117', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449773944', '180.166.196.210', '27', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=117&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449773945', '58.32.203.135', '28', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=117&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774008', '192.102.204.38', '29', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=115&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774042', '58.32.203.134', '30', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=list&amp;uselastfilter=1', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774042', '192.102.204.38', '31', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=115', '/photo/upload/captcha.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774043', '58.32.203.134', '32', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=115', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774059', '192.102.204.37', '33', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=115', '/photo/upload/captcha.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774060', '58.32.203.134', '34', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=115', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774066', '192.102.204.37', '35', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=114&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774128', '58.32.203.134', '36', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=111&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449774128', '192.102.204.38', '37', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=111&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776128', '180.166.196.209', '38', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=list&amp;uselastfilter=1', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776134', '192.102.204.38', '39', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=110', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776138', '180.166.196.209', '40', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=110&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776189', '192.102.204.38', '41', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=109&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776367', '192.102.204.37', '42', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=112', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776371', '180.166.196.208', '43', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=112&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776372', '192.102.204.37', '44', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=112&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776784', '180.166.196.210', '45', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/category.php?id=1', '/photo/upload/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776787', '180.166.196.210', '46', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/category.php?id=16', '/photo/upload/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776815', '192.102.204.36', '47', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=107&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776901', '58.32.203.134', '48', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=104&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449776954', '192.102.204.38', '49', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=102&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777063', '192.102.204.38', '50', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=100', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777069', '180.166.196.210', '51', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=100&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777069', '192.102.204.38', '52', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=100&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777127', '192.102.204.38', '53', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=100', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777134', '58.32.203.135', '54', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=99&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777294', '192.102.204.36', '55', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=97&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777366', '180.166.196.210', '56', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=97&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777497', '58.32.203.134', '57', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=95&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777580', '192.102.204.36', '58', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=90&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777601', '180.166.196.208', '59', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=94&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777641', '192.55.46.36', '60', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=93&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777680', '192.102.204.36', '61', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=92&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777737', '192.55.46.38', '62', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=91&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777767', '180.166.196.210', '63', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=90&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777810', '192.102.204.37', '64', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=89&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777857', '192.55.46.38', '65', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=88&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777857', '192.102.204.38', '66', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=88&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449777917', '180.166.196.211', '67', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=87&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449778005', '192.102.204.37', '68', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=85&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449778173', '180.166.196.210', '69', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/category.php?id=15', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781514', '58.32.203.134', '70', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://breakserver.hichina.com', '/answer/index.htm?IP=58.32.203.134&amp;sign=88188e06bcf9eed286710bd91fcbc194&amp;server_name=qxu1146210007.my3w.com&amp;verify_sign=c12ebc252c6f30227d19c13dd5325448&amp;request_url=%2Fphoto%2Fupload%2', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781515', '180.166.196.211', '71', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=86', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781531', '192.55.46.37', '72', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=83', '/photo/upload/captcha.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781541', '180.166.196.210', '73', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://breakserver.hichina.com', '/answer/index.htm?IP=180.166.196.210&amp;sign=88188e06bcf9eed286710bd91fcbc194&amp;server_name=qxu1146210007.my3w.com&amp;verify_sign=441673156942f440bcd0f4b7957dd3c7&amp;request_url=%2Fphoto%2Fupload', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781597', '122.144.135.142', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/photo/upload/certi.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781659', '58.32.203.134', '74', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=82&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781659', '180.166.196.210', '75', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=82&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781693', '192.102.204.38', '76', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=81&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781736', '180.166.196.211', '77', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=80&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781800', '192.102.204.37', '78', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://breakserver.hichina.com', '/answer/index.htm?IP=192.102.204.37&amp;sign=88188e06bcf9eed286710bd91fcbc194&amp;server_name=qxu1146210007.my3w.com&amp;verify_sign=a916a66fc0dfcb294339c3e1fa0dfb5e&amp;request_url=%2Fphoto%2Fupload%', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781875', '180.166.196.208', '79', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=78&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781875', '192.102.204.36', '80', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=78&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781932', '58.32.203.134', '81', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=77', '/photo/upload/captcha.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781933', '192.102.204.36', '82', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=77', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781940', '180.166.196.210', '83', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=77&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449781981', '192.102.204.38', '84', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=76&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782018', '192.55.46.38', '85', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=68&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782018', '192.102.204.38', '86', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=68&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782713', '180.166.196.210', '87', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=73&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782714', '192.102.204.37', '88', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=73&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782749', '58.32.203.134', '89', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=72&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782750', '192.102.204.38', '90', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=72&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782882', '122.144.135.226', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/photo/upload/certi.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782902', '58.32.203.134', '91', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=72&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449782902', '192.102.204.37', '92', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=72&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449783256', '180.166.196.210', '93', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=68&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449783288', '192.102.204.38', '94', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=66&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449783321', '180.166.196.210', '95', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=67&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449783321', '192.102.204.36', '96', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=67&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449783556', '180.166.196.211', '97', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=63&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449783757', '192.102.204.38', '98', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=list&amp;uselastfilter=1', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449783873', '192.55.46.38', '99', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=58&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449783873', '192.102.204.37', '100', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=58&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784315', '180.166.196.208', '101', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=52&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784339', '192.102.204.37', '102', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=53&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784368', '192.102.204.38', '103', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=52', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784372', '180.166.196.209', '104', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=52&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784446', '192.102.204.38', '105', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=51&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784519', '122.144.135.142', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/photo/upload/certi.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784525', '180.166.196.208', '106', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=51&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784556', '58.32.203.135', '107', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/index.php?act=top', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784559', '180.166.196.210', '108', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=59', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784582', '58.32.203.135', '109', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=list', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784582', '58.32.203.135', '110', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/goods.php?id=59', '/photo/upload/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784586', '192.55.46.38', '111', 'FireFox 42.0', 'Windows NT', 'en-US,en', '', 'http://qxu1146210007.my3w.com', '/photo/upload/admin/goods.php?act=edit&amp;goods_id=59&amp;extension_code=', '/photo/upload/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1449784645', '192.102.204.36', '112', 'FireFox 42.0', 'Windows NT', 'en-US,en', '[Î´ÖªIP0801]', 'http://qxu1146210007.my3w.com', '/photo/upload/', '/photo/upload/goods.php');
DROP TABLE IF EXISTS `ecs_suppliers`;
CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_tag`;
CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_template`;
CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/vote_list.lbi', '8', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/email_list.lbi', '9', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/order_query.lbi', '6', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/promotion_info.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/auction.lbi', '4', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/group_buy.lbi', '5', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å³è¾¹ä¸»åŒºåŸ\Ÿ', '/library/recommend_hot.lbi', '2', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å³è¾¹ä¸»åŒºåŸ\Ÿ', '/library/recommend_new.lbi', '1', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å³è¾¹ä¸»åŒºåŸ\Ÿ', '/library/recommend_best.lbi', '0', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/invoice_query.lbi', '7', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/top10.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', 'å·¦è¾¹åŒºåŸŸ', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '', '/library/brands.lbi', '0', '0', '11', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', 'å·¦è¾¹åŒºåŸŸ', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', 'å³è¾¹åŒºåŸŸ', '/library/recommend_best.lbi', '0', '0', '5', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', 'å³è¾¹åŒºåŸŸ', '/library/goods_list.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', 'å³è¾¹åŒºåŸŸ', '/library/pages.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', 'å·¦è¾¹åŒºåŸŸ', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', 'å·¦è¾¹åŒºåŸŸ', '/library/price_grade.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', 'å·¦è¾¹åŒºåŸŸ', '/library/filter_attr.lbi', '2', '0', '0', '0', 'default', '');
DROP TABLE IF EXISTS `ecs_topic`;
CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_account`;
CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_feed`;
CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_rank` ( `rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank` ) VALUES  ('1', 'æ³¨å†Œç”¨æˆ·', '0', '10000', '100', '1', '0');
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_volume_price`;
CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_vote`;
CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_vote_log`;
CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_vote_option`;
CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_wholesale`;
CREATE TABLE `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- END ecshop v2.x SQL Dump Program 