<?php
require_once('../config.inc.php');
require_once(INCLUDE_PATH . 'vote.inc.php');
$vote = new Vote();
$title = "��ӵ���ѡ��";
if($_GET['id'])											//�ж��Ƿ��б༭ѡ��ID��������ȡ��¼
{
	$info = $vote->getInfo($_GET['id'],$vote->_item);
	$title = "�༭����ѡ��";
}
if($_SERVER['REQUEST_METHOD'] == 'POST')				//�ж��Ƿ����ύ����
{
	$data['F_ID_VOTE_INFO'] = $_POST['voteid'];
	$data['F_ITEM_TITLE'] = $_POST['title'];
	$data['F_ITEM_COUNT'] = 0;
	$data['F_ITEM_ORDER'] = 0;
	if($_POST['id'])										//��ѡ��ID��������ִ�б༭����
	{
		if($vote->updateData($vote->_item,$_POST['id'],$data))	//�ж��Ƿ�����ɹ�
		{
			echo "��Ӳ����ɹ�<br>";
			echo "<a href='ItemList.php?id={$_POST['voteid']}'>����</a>";
			exit();
		}else{
			echo "��Ӳ���ʧ��<br>";
			echo "<a href='ItemList.php?id={$_POST['voteid']}'>����</a>";
			exit();			
		}
	}else{											//��ѡ��ID��������ִ����Ӳ���
		if($vote->insertData($vote->_item,$data))				//�ж��Ƿ�����ɹ�
		{
			echo "�༭�����ɹ�<br>";
			echo "<a href='ItemList.php?id={$_POST['voteid']}'>����</a>";
			exit();
		}else{
			echo "�༭����ʧ��<br>";
			echo "<a href='ItemList.php?id={$_POST['voteid']}'>����</a>";
			exit();			
		}		
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
<form name="form1"  action="" method="post" onsubmit="javascript:check();">
  <table width="60%" border="0" align="center" cellpadding="0" cellspacing="0" class=i_table>
    <tr>
      <td colspan="2" align="left" bgcolor="#FFFFFF" class="caption"><?php echo $title?></td>
    </tr>
    <tr class="l_field">
      <td width="24%" align="right" bgcolor="#FFFFFF">������⣺</td>
      <td width="76%" bgcolor="#FFFFFF">������վ������̶ȣ�</td>
    </tr>
    <tr class="l_field">
      <td align="right" bgcolor="#FFFFFF">ѡ����⣺</td>
      <td bgcolor="#FFFFFF"><input name="title" type="text" id="title" size="40" value="<?php echo $info['F_ITEM_TITLE']?>" /></td>
    </tr>
    <tr class="title">
      <td colspan="2" align="center" bgcolor="#FFFFFF"><input type="submit" name="Submit" value="�ύ" />
        &nbsp;
      <input type="reset" name="reset" value="����" />
      <input type='hidden' name="id" id="id" value="<?php echo $_GET['id']?>">
      <input type='hidden' name="voteid" id="voteid" value="<?php echo $_GET['voteid']?>">      </td>
    </tr>
  </table>
</form>
<script language="javascript">
function check()
{
	if(document.form1.title.value == "")			//�жϱ����Ƿ�Ϊ�գ����򵯳���ʾ��
	{
		alert('����дѡ�����');
		document.form1.focus();
		return false;
	}
	return true;
}
</script>
</body>
</html>