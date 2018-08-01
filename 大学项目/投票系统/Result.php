<?php
require_once("config.inc.php");
require_once(INCLUDE_PATH . "vote.inc.php");
$vote = new Vote();
if($_GET['id'])												//�ж��Ƿ��д��ݲ���
{
	$info = $vote->getInfo($_GET['id'],$vote->_name);
	if(!isset($info[F_ID]))										//�жϴ�ID�ĵ����Ƿ����
	{
		echo "�޴˵���";
		exit();
	}
	$item = $vote->getItemList($_GET['id']);
	$sum = 0;
	foreach ($item as $value)									//������ͶƱ��
	{
		$sum += $value['F_ITEM_COUNT'];
	}
}else{													//�޲�������ʾ
	echo "��������";
	exit();
}
?>
<table width="50%" border="0" align="center">
<tr>
  <td><?php echo $info['F_VOTE_TITLE']?></td>
</tr>
</table>
<table width="50%" border="0" align="center" cellpadding="3" cellspacing="2">
<?php
if($item)
{
	foreach ($item as $value)
	{
		$percent = @number_format($value['F_ITEM_COUNT']/$sum,2);	//����ÿ��ѡ��Ʊ����ռ����
		$length = $percent*100 . "%";
?>
      <tr>
        <td width="27%"><font color="#000000"><?php echo $value['F_ITEM_TITLE']?></font></td>
        <td width="32%"><table height="12" cellspacing="1" cellpadding="0" width="<?php echo $length?>" 
                  bgcolor="#000000" border="0">
              <tr>
                <td bgcolor="#FF0000">&nbsp;</td>
              </tr>
        </table></td>
        <td width="41%"><span class="STYLE2"><?php echo $value['F_ITEM_COUNT']?></span><font color="#000000"> <?php echo $length?></font></td>
      </tr>
<?php
	}
}
?>
</table>
<table width="50%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"><input type="button" name="Submit" value="�����б�" onclick="javascript:window.location='VoteList.php'" /></td>
  </tr>
</table>
