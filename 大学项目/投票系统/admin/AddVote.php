<?php
require_once('../config.inc.php');
require_once(INCLUDE_PATH . 'vote.inc.php');
$vote = new Vote();
list($year,$month,$day) = explode("-",date('Y-m-d'));
if($_SERVER['REQUEST_METHOD'] == 'POST')							//�ж��Ƿ����ύ���������������
{
	$data['F_VOTE_TITLE'] = $_POST['title'];
	$data['F_VOTE_START'] = mktime(0,0,0,$_POST['start_m'],$_POST['start_d'],$_POST['start_y']);
	$data['F_VOTE_END'] = mktime(0,0,0,$_POST['end_m'],$_POST['end_d'],$_POST['end_y']);
	$data['F_VOTE_ITEM_TYPE'] = $_POST['type'];
	$data['F_VOTE_IS_DISPLAY'] = $_POST['display'];
	if($vote->insertData($vote->_name,$data))						//�ж��Ƿ�����ɹ�
		echo "�����ɹ�";
	else
		echo "����ʧ��";

	echo "<a href='VoteList.php'>����</a>";
	exit();
}
?>
<html>
<head>
<title>ͶƱ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="javascript" src="../js/date.js"></script>
<link type="text/css" rel="stylesheet" href="/style/admin.css">
</head>
<body>
<form name="form1"  action="" method="post" onsubmit="javascript:return check();">
  <table width="60%" border="0" align="center" cellpadding="0" cellspacing="0" class=i_table>
    <tr class="title">
      <td colspan="2" align="left" bgcolor="#FFFFFF" class="caption">����ͶƱ</td>
    </tr>
    <tr class="l_field">
      <td align="right" bgcolor="#FFFFFF">������⣺</td>
      <td bgcolor="#FFFFFF"><input name="title" type="text" id="title" size="40" /></td>
    </tr>
    <tr class="l_field">
      <td align="right" bgcolor="#FFFFFF">�������ͣ�</td>
      <td bgcolor="#FFFFFF"><select name="type" id="type">
<?php
foreach ($vote->_type as $key => $value)							//ѭ����ʾ����ѡ��������
{
	echo "<option value=$key>$value</option>";
}
?>  
      </select>      </td>
    </tr>
    <tr class="l_field">
      <td width="24%" align="right" bgcolor="#FFFFFF">��ʼʱ�䣺</td>
      <td width="76%" bgcolor="#FFFFFF">
      <select name="start_y" id="start_y">
<?php
for($i=1;$i<=($year+1);$i++)										//ѭ����ʾ��ʼ���������
{
	echo "<option value=$i";
	if($i == $year)													//����Ĭ��ѡ��
		echo " selected='selected'";
	echo ">$i</option>";
}
?>
      </select>
        ��
        <select name="start_m" id="start_m" onchange="javascript:register_buildDay(this.value);">
<?php
for($i=1;$i<=12;$i++)												//ѭ����ʾ��ʼ�·�������
{
	if($i < 10)
		$i = '0' . $i;
	echo "<option value=$i";
	if($i == $month)												//����Ĭ��ѡ��
		echo " selected='selected'";
	echo ">$i</option>";
}
?>
        </select>
        ��
        <select name="start_d" id="start_d">
<?php
echo "<option value='$day'>$day</option>";
?>
        </select>
      ��      </td>
    </tr>
    <tr class="l_field">
      <td align="right" bgcolor="#FFFFFF">����ʱ�䣺</td>
      <td bgcolor="#FFFFFF">
<select name="end_y" id="end_y">
<?php
for($i=1;$i<=($year+1);$i++)										//ѭ����ʾ�������������
{
	echo "<option value=$i";
	if($i == $year)													//����Ĭ��ѡ��
		echo " selected='selected'";
	echo ">$i</option>";
}
?>
</select>
��
<select name="end_m" id="end_m" onchange="javascript:register_buildEndDay(this.value);">
<?php
for($i=1;$i<=12;$i++)												//ѭ����ʾ�����·�������
{
	if($i < 10)
		$i = '0' . $i;
	echo "<option value=$i";
	if($i == $month)												//����Ĭ��ѡ��
		echo " selected='selected'";
	echo ">$i</option>";
}
?>
</select>
��
<select name="end_d" id="end_d">
<?php
echo "<option value='$day'>$day</option>";
?>
</select>
�� </td>
    </tr>
    <tr class="l_field">
      <td align="right" bgcolor="#FFFFFF">�Ƿ����ã�</td>
      <td bgcolor="#FFFFFF"><input name="display" type="radio" value="1" checked="checked" />
        ����
        <input type="radio" name="display" value="0" />
      ����</td>
    </tr>
    <tr class="title">
      <td colspan="2" align="center" bgcolor="#FFFFFF"><input type="submit" name="Submit" value="�ύ" />
        &nbsp;
      <input type="reset" name="reset" value="����" /></td>
    </tr>
  </table>
</form>
<script language="javascript">
//���ܣ�������ڸ�ʽ�Ƿ�����Ч��ʽ
function checkIsValidDate(str)
{
    if(str == "")													//�������Ϊ�գ��򷵻�false
        return false;
    var arrDate = str.split("-");									//�Ѳ�����split�����ָ�����飬����ͬ��PHP�е�explode����
    if(parseInt(arrDate[0],10) < 100)								//������С��100�����ʾ��21����
        arrDate[0] = 2000 + parseInt(arrDate[0],10) + "";
    var date =  new Date(arrDate[0],(parseInt(arrDate[1],10) -1)+"",arrDate[2]);	//��ʽ��Ϊ���ڸ�ʽ
    if(date.getYear() == arrDate[0]									//�жϸ�ʽ�������ڵ��꣬�£����Ƿ�Ͳ�������ȣ����������Ч��ʽ
       && date.getMonth() == (parseInt(arrDate[1],10) -1)+""
       && date.getDate() == arrDate[2])
        return true;
    else
        return false;
}
//���ܣ���鿪ʼʱ���Ƿ�С�ڽ�������
//������strStart ��ʼ���ڣ�strEnd ��������
function checkDateEarlier(strStart,strEnd)
{
    if(checkIsValidDate(strStart) == false || checkIsValidDate(strEnd) == false)
        return false;												//������ڸ�ʽ�Ƿ���Ч
    if (( strStart == "" ) || ( strEnd == "" ))						//��������Ƿ�Ϊ��
        return false;
    var arr1 = strStart.split("-");
    var arr2 = strEnd.split("-");
    var date1 = new Date(arr1[0],parseInt(arr1[1].replace(/^0/,""),10) - 1,arr1[2]);
    var date2 = new Date(arr2[0],parseInt(arr2[1].replace(/^0/,""),10) - 1,arr2[2]);
    if(arr1[1].length == 1)											//���·ݸ�ʽ��Ϊ08������ʽ
        arr1[1] = "0" + arr1[1];
    if(arr1[2].length == 1)											//���ո�ʽ��Ϊ08������ʽ
        arr1[2] = "0" + arr1[2];
    if(arr2[1].length == 1)											//���·ݸ�ʽ��Ϊ08������ʽ
        arr2[1] = "0" + arr2[1];
    if(arr2[2].length == 1)											//���ո�ʽ��Ϊ08������ʽ
        arr2[2]="0" + arr2[2];
    var d1 = arr1[0] + arr1[1] + arr1[2];							//����ʼ������ϳ�һ���ַ���
    var d2 = arr2[0] + arr2[1] + arr2[2];							//������������ϳ�һ���ַ���
    if(parseInt(d1,10) > parseInt(d2,10))							//�������ַ���ת��������,���d1>d2��ʼ���ڴ��ڽ�������
       return false;
    else
       return true;
}
//����һ��javascript��ԭ��
String.prototype.len = function(){									//�����ַ����ĳ��ȣ�һ��˫�ֽ��ַ����ȼ�2��ASCII�ַ���1��
	return this.replace(/[^\x00-\xff]/g,"aa").length;
}
function check()
{
	var Start = document.form1.start_y.value + "-" + document.form1.start_m.value + "-" + document.form1.start_d.value;
	var End = document.form1.end_y.value + "-" + document.form1.end_m.value + "-" + document.form1.end_d.value;
	
	if(document.form1.title.value == '')			//�жϱ����Ƿ�Ϊ��,Ϊ���򷵻�false
	{
		alert('����д��������');
		document.form1.title.focus();
		return false;
	}
	if(document.form1.title.value.len() > 100)		//�жϱ��ⳤ���Ƿ񳬹�100
	{
		alert('������ⲻ�ܳ���100����')
		document.form1.title.focus();
		return false;
	}
	if(!checkDateEarlier(Start,End))				//�жϿ�ʼ�����Ƿ���ڽ�������
	{
		alert('��ʼ���ڲ���С�ڽ�������');
		return false;
	}
}
</script>
</body>
</html>
