<?php
require_once('../config.inc.php');
require_once(INCLUDE_PATH . 'vote.inc.php');
$vote = new Vote();
$list = $vote->getItemList($_GET['id']);
$info = $vote->getInfo($_GET['id'],$vote->_name);
?>
<html>
<head>
<title>ͶƱ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link type="text/css" rel="stylesheet" href="/style/admin.css">
</head>
<body>
<table width="60%" border="0" align="center">
  <tr>
    <td>������⣺<?php echo $info['F_VOTE_TITLE']?></td>
  </tr>
</table>
<table width="60%" border="0" align="center" cellspacing="0" class=i_table>
  <tr class="head">
    <td width="10%">���</td>
    <td width="50%">ѡ�����</td>
    <td width="19%">ͳ��</td>
    <td width="21%">����</td>
  </tr>
<?php
if($list)
{
	foreach($list as $key => $value)
	{
?>
  <tr class="l_field">
    <td align="left" bgcolor="#FFFFFF"><?php echo ($key + 1)?></td>
    <td align="left" bgcolor="#FFFFFF"><?php echo $value['F_ITEM_TITLE']?></td>
    <td align="left" bgcolor="#FFFFFF"><?php echo $value['F_ITEM_COUNT']?> �� </td>    
    <td align="left" bgcolor="#FFFFFF"><a href="OperItem.php?id=<?php echo $value['F_ID']?>&voteid=<?php echo $value['F_ID_VOTE_INFO']?>">[�༭]</a><a href="DelItem.php?id=<?php echo $value['F_ID']?>&voteid=<?php echo $_GET['id']?>"> [ɾ��]</a> </td>
  </tr>
<?php	
	}
}
?>
  <tr>
    <td colspan="9" align="center" bgcolor="#FFFFFF"><input type="submit" name="Submit3" value=" �� �� ѡ �� " onclick="javascript:window.location='OperItem.php?voteid=<?php echo $_GET['id']?>'" />&nbsp;<input type="button" name="Submit" value=" �� �� ˳ �� " onclick="javascript:window.location='SetOrder.php?voteid=<?php echo $_GET['id']?>'" /></td>
  </tr>
</table>
</body>
</html>