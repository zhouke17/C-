<?php
require_once('../config.inc.php');
require_once(INCLUDE_PATH . 'vote.inc.php');
$vote = new Vote();
if($vote->delData($_GET['id']))
{
	echo "�����ɹ�<br>";
	echo "<a href='VoteList.php'>����</a>";
	exit();
}else{
	echo "����ʧ��<br>";
	echo "<a href='VoteList.php'>����</a>";
	exit();
}
?>
