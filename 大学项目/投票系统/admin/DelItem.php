<?php
require_once('../config.inc.php');
require_once(INCLUDE_PATH . 'vote.inc.php');
$vote = new Vote();
if($vote->delItemData($_GET['id']))					//�ж��Ƿ�����ɹ�
{
	echo "�����ɹ�<br>";
	echo "<a href='ItemList.php?id={$_GET['voteid']}'>����</a>";
	exit();
}else{
	echo "����ʧ��<br>";
	echo "<a href='ItemList.php?id={$_GET['voteid']}'>����</a>";
	exit();
}
?>
