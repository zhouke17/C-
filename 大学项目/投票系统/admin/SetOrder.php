<?php
require_once('../config.inc.php');
require_once(INCLUDE_PATH . 'vote.inc.php');
$vote = new Vote();
$list = $vote->getItemList($_GET['voteid']);
$info = $vote->getInfo($_GET['voteid'],$vote->_name);
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
	if($vote->setOrder($_POST['id'],$_POST['order']))
	{
		echo "�����ɹ�<br>";
		echo "<a href='ItemList.php?id={$_GET['voteid']}'>����</a>";
		exit();
	}else{
		echo "����ʧ��<br>";
		echo "<a href='ItemList.php?id={$_GET['voteid']}'>����</a>";
		exit();
	}
}
?>
<html>
<head>
<title>ͶƱ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link type="text/css" rel="stylesheet" href="/style/admin.css">
</head>
<body>
<form name="form1"  action="" method="post">
<table width="60%" border="0" align="center">
  <tr>
    <td>������⣺<?php echo $info['F_VOTE_TITLE']?></td>
  </tr>
</table>
<table width="60%" border="0" align="center" cellspacing="0" class=i_table>
  <tr class="head">
    <td width="10%">���</td>
    <td width="63%">ѡ�����</td>
    <td width="27%">˳��</td>
  </tr>
<?php
if($list)
{
	foreach ($list as $key => $value)
	{
?>
  <tr class="l_field">
    <td align="left" bgcolor="#FFFFFF"><?php echo ($key+1)?>
      <input name="id[]" type="hidden" id="id[]" value="<?php echo $value['F_ID']?>" /></td>
    <td align="left" bgcolor="#FFFFFF"><?php echo $value['F_ITEM_TITLE']?></td>
    <td align="left" bgcolor="#FFFFFF"><input name="order[]" type="text" id="order[]" value="<?php echo $value['F_ITEM_ORDER']?>" size="10" /></td>
  </tr>
<?php
	}
}
?>
  <tr>
    <td colspan="8" align="center" bgcolor="#FFFFFF"><input type="submit" name="Submit" value=" �� �� �� �� " /><input type="hidden" name="voteid" id="voteid" value="<?php echo $_GET['id']?>"></td>
  </tr>
</table>
</form>
</body>
</html>