
CREATE TABLE IF NOT EXISTS `nrgyn_app_langs` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(25) NOT NULL,
  `lang_title` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `lang_code` (`lang_code`,`lang_title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `nrgyn_basic_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `Add_User` int(11) DEFAULT NULL,
  `Mode_User` int(11) DEFAULT NULL,
  `curr_lang_id` int(11) DEFAULT NULL,
  `Add_DateTime` datetime DEFAULT NULL,
  `Mode_DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `nrgyn_basic_settings` (`id`, `app_title`, `status`, `Add_User`, `Mode_User`, `curr_lang_id`, `Add_DateTime`, `Mode_DateTime`) VALUES
(1, 'Rgyan', 1, 1, 1, 1, NULL, '2016-08-30 06:25:08');

CREATE TABLE IF NOT EXISTS `nrgyn_daily_songs` (
  `daily_song_id` int(11) NOT NULL AUTO_INCREMENT,
  `offline_song` varchar(150) DEFAULT NULL,
  `online_song` varchar(150) DEFAULT NULL,
  `day` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '99',
  `Add_User` int(11) DEFAULT NULL,
  `Mode_User` int(11) DEFAULT NULL,
  `Add_DateTime` datetime DEFAULT NULL,
  `Mode_DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`daily_song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `nrgyn_main_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_cat_id` int(11) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '99',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `online_bg_img` varchar(150) DEFAULT NULL,
  `offline_bg_img` varchar(150) DEFAULT NULL,
  `Add_User` int(11) NOT NULL,
  `Mode_User` int(11) NOT NULL,
  `Add_DateTime` datetime DEFAULT NULL,
  `Mode_DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `nrgyn_main_cat_des` (
  `cat_des_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_des_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `nrgyn_posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `offline_thumb_img` varchar(150) DEFAULT NULL,
  `online_thumb_img` varchar(150) DEFAULT NULL,
  `offline_song` varchar(150) DEFAULT NULL,
  `online_song` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '99',
  `Add_User` int(11) DEFAULT NULL,
  `Mode_User` int(11) DEFAULT NULL,
  `Add_DateTime` datetime DEFAULT NULL,
  `Mode_DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `nrgyn_posts_des` (
  `post_des_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `post_title` varchar(150) DEFAULT NULL,
  `post_desc` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`post_des_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

