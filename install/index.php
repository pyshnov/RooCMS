<?php
/**
* @package      RooCMS
* @subpackage	Installer or Updater
* @author       alex Roosso
* @copyright    2010-2016 (c) RooCMS
* @link         http://www.roocms.com
* @version      1.1.1
* @since        $date$
* @license      http://www.gnu.org/licenses/gpl-3.0.html
*/

/**
*   RooCMS - Russian free content managment system
*   Copyright (C) 2010-2017 alex Roosso aka alexandr Belov info@roocms.com
*
*   This program is free software: you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation, either version 3 of the License, or
*   (at your option) any later version.
*
*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License
*   along with this program.  If not, see http://www.gnu.org/licenses/
*
*
*   RooCMS - Русская бесплатная система управления сайтом
*   Copyright (C) 2010-2017 alex Roosso (александр Белов) info@roocms.com
*
*   Это программа является свободным программным обеспечением. Вы можете
*   распространять и/или модифицировать её согласно условиям Стандартной
*   Общественной Лицензии GNU, опубликованной Фондом Свободного Программного
*   Обеспечения, версии 3 или, по Вашему желанию, любой более поздней версии.
*
*   Эта программа распространяется в надежде, что она будет полезной, но БЕЗ
*   ВСЯКИХ ГАРАНТИЙ, в том числе подразумеваемых гарантий ТОВАРНОГО СОСТОЯНИЯ ПРИ
*   ПРОДАЖЕ и ГОДНОСТИ ДЛЯ ОПРЕДЕЛЁННОГО ПРИМЕНЕНИЯ. Смотрите Стандартную
*   Общественную Лицензию GNU для получения дополнительной информации.
*
*   Вы должны были получить копию Стандартной Общественной Лицензии GNU вместе
*   с программой. В случае её отсутствия, посмотрите http://www.gnu.org/licenses/
*/

define('INSTALL', true);
define('_SITEROOT', str_ireplace("install", "", dirname(__FILE__)));
require_once _SITEROOT."/roocms/init.php";



//#########################################################
// Anti Hack
//---------------------------------------------------------
if(!defined('RooCMS')) die('Access Denied');
//#########################################################

nocache();

if(trim($db_info['user']) != "" && trim($db_info['base']) != "" && $db->check_id(1,USERS_TABLE,"uid")) {

	require_once _ROOCMS."/acp/security_check.php";

	if($acpsecurity->access) {

		require_once "check_requirement.php";

		if(!empty($db_info['user']) && !empty($db_info['pass']) && !empty($db_info['base'])) {
			require_once "update.php";
			$update = new Update;
		}
		else {
			$site['title'] = "Установка RooCMS";
			require_once "install.php";
			$install = new Install;
		}
	}
	else {
		$smarty->assign("no_footer", true);
		require_once _ROOCMS."/acp/login.php";
	}
}
else {
	require_once "check_requirement.php";
	require_once "install.php";
	$install = new Install;
}

# draw page
$tpl->out();

?>