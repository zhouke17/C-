<?php
require_once('../config.inc.php');
require_once(INCLUDE_PATH . 'vote.inc.php');
$vote = new Vote();
$cur_page = $_GET['page'];						//ȡ�õ�ǰҳ��
if(!$cur_page)
	$cur_page = 1;								//�����ҳ����Ĭ��Ϊ��һҳ
$list = $vote->getUserList($_GET['id'],$cur_page);
$count = $vote->getUserCount($_GET['id']);
$pagecount = ceil($count/$vote->_pagesize);			//�����ܹ���ҳ��
if(!$pagecount)
	$pagecount = 1;							//�������ҳ������Ĭ��Ϊ1
$url = "?id={$_GET['id']}&page=";					//��ҳ��ת�ĵ�ַ
?>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="32" background="/images/lefttop.jpg" class="head">�������>�û�ͳ����Ϣ�б�</td>
  </tr>
</table>
<form name="form1"  action="" method="post">
<table width="80%" border="0" align="center">
  <tr>
    <td><a href="AreaList.php?id=<?php echo $_GET['id']?>">[����鿴����ͳ��]</a></td>
  </tr>
</table>
<table width="80%" border="0" align="center" cellspacing="0" class="l_table_1" id="table_1">
  <tr class="title">
    <td width="7%">���</td>
    <td width="45%">�û�IP</td>
    <td width="25%">��������</td>    
    <td width="23%">ͶƱʱ��</td>
    </tr>
<?php
if($list)
{
	foreach ($list as $key => $value)
	{
?>
  <tr class="l_field">
    <td align="left"><?php echo ($key + 1)?></td>
    <td align="left"><?php echo long2ip($value['F_USER_IP'])?></td>
    <td align="left"><?php echo $value['F_USER_AREA']?></td>    
    <td align="left"><?php echo date("Y-m-d,H:i:s",$value['F_USER_TIME'])?></td>
  </tr>
<?php
	}
}
?>
  <tr>
    <td colspan="9" align="center"><table width='100%' align='center' border='0' cellspacing='0'>
      <tr>
        <td align="left"> ���� <b><?php echo $count?></b> ��Ϣ �� <font color='#FF0000'><b><?php echo $cur_page?></b></font> / <b><?php echo $pagecount?></b>ҳ ÿҳ<strong><?php echo $vote->_pagesize?></strong></td>
        <td width="30">ת��</td>
        <td width="50"><select name="page" style="width:50px" onchange="javascript:location.href=document.getElementById('url')+this.options[selectedIndex].value">
		<?php
		for($i=1;$i<=$pagecount;$i++)
		{
			echo "<option value='$i'";
			if($i == $cur_page)
				echo " selected='selected'";
			echo ">$i</option>";
		}
		?>
                  </select>
            <input type="hidden" name="url" value="<?php echo $url?>" /></td>
        <td width="15">ҳ </td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
