<?php
require_once "../config.inc.php";
require_once(INCLUDE_PATH . 'vote.inc.php');
$vote = new Vote();								//����һ������$vote
$list = $vote->getVoteList();
$time = time();
?>
<html>
<head>
<title>ͶƱ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link type="text/css" rel="stylesheet" href="/style/admin.css">
</head>
<body>
<form name="form1"  action="" method="post">
<table width="98%" border="0" align="center" cellspacing="0" class=i_table>
  <tr class="head">
    <td width="5%" height="22">���</td>
    <td width="24%" height="22">�������</td>
    <td width="14%" height="22">��ʼʱ��</td>
    <td width="12%" height="22">����ʱ��</td>
    <td width="12%" height="22">ѡ������</td>
    <td width="6%" height="22">�Ƿ����</td>
    <td width="6%" height="22">�Ƿ�����</td>
    <td width="21%" height="22">����</td>
  </tr>
<?php
if($list)										//����м�¼��ѭ����ʾ
{
	foreach($list as $key => $value)
	{
?>
  <tr class="l_field">
    <td align="left" bgcolor="#FFFFFF"><?php echo ($key + 1)?></td>
    <td align="left" bgcolor="#FFFFFF"><?php echo $value['F_VOTE_TITLE']?></td>
    <td align="left" bgcolor="#FFFFFF"><?php echo date('Y-m-d',$value['F_VOTE_START'])?></td>    
    <td align="left" bgcolor="#FFFFFF"><?php echo date('Y-m-d',$value['F_VOTE_END'])?></td>
    <td align="left" bgcolor="#FFFFFF"><?php echo $vote->_type[$value['F_VOTE_ITEM_TYPE']]?></td>
    <td align="left" bgcolor="#FFFFFF"><?php if($value['F_VOTE_END'] > $time) echo ��δ���ڡ�;else echo ���ѹ��ڡ�;?></td>
    <td align="left" bgcolor="#FFFFFF"><?php echo $vote->_display[$value['F_VOTE_IS_DISPLAY']]?></td>
    <td align="left" bgcolor="#FFFFFF"><a href="EditVote.php?id=<?php echo $value['F_ID']?>">[�༭]</a> <a href="ItemList.php?id=<?php echo $value['F_ID']?>">[ѡ�����]</a> <a href="UserList.php?id=<?php echo $value['F_ID']?>">[�û�ͳ����Ϣ]</a> <a href="DelVote.php?id=<?php echo $value['F_ID']?>">[ɾ��]</a> </td>
  </tr>
<?php
	}
}
?>
  <tr>
    <td colspan="13" align="center" bgcolor="#FFFFFF"><input type="button" name="Submit3" value=" �� �� �� �� " onclick="javascript:window.location='AddVote.php'" /></td>
  </tr>
</table>
</form>
</body>
</html>