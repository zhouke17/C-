<?php
require_once("config.inc.php");
require_once(INCLUDE_PATH . "vote.inc.php");
require_once(INCLUDE_PATH . "ip.inc.php");
$vote = new Vote();
$ipclass = new IpModel();
$ip = getenv("REMOTE_ADDR");
$ip1 = getenv("HTTP_X_FORWARDED_FOR");
$ip2 = getenv("HTTP_CLIENT_IP");
($ip1) ? $ip = $ip1 : null ;											//$ip1��ֵ�򸴸�ip
($ip2) ? $ip = $ip2 : null ;											//$ip2��ֵ�򸴸�ip
$longip = ip2long($ip);											//��IPת��Ϊ����
if(!isset($_POST['item']))											//�ж��û��Ƿ�ѡ����ѡ��
{
	echo "<script>alert('��δѡ�����ѡ�');window.history.back();</script>";
	exit();
}
if($vote->checkIsValid($longip,$_POST['id']))							//�ж��û��Ƿ�Ϸ�
{
	$location = $ipclass->ip2location($longip);						//ƥ��IP��ַȡ�����ڵ���
	$vote->updateResult($_POST['item'],$_POST['id'],$longip,$location);	//�������ݿ��
	header("Location:Result.php?id={$_POST['id']}");					//��ת�����ҳ��
}else{
	echo "<script>alert('���Ѿ�Ͷ��Ʊ�ˣ�');window.location='Result.php?id={$_POST['id']}'</script>";					//���Ϸ������Ѳ���ת�����ҳ��
	exit();
}
?>
