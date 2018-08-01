//���ܣ���ʾ��ʼ����ָ���·ݵ�����
//������month �·�
function register_buildDay(month)
{
	var yearOb=document.getElementById('start_y');			//ȡ�ÿ�ʼ�������
	var dayOb=document.getElementById('start_d');			//ȡ�ÿ�ʼ��������
	
	document.getElementById('start_d').length = 0;	
	var lastDay=register_getDay(yearOb.value,Number(month));//ȡ�õ��µ�����
	for(var i=1;i<=lastDay;i++)								//ѭ���������ѡ���
	{
		var dayOption=document.createElement("OPTION");
		dayOb.options.add(dayOption);
		dayOption.innerText=i;
		dayOption.value=i;
		dayOb.selectedIndex=0;
	}
}
//���ܣ��������ÿ�ʼ���ڵ�����
function register_resetDay()
{
	var dayObject=document.getElementById('start_d');
	var dayLength=dayObject.length;
	
	for(var i=1;i<dayLength;dayLength--)					//����ʼ����������������ѭ���ƴ�
	{
		dayObject.remove(i);
	}
}
//���ܣ���ʾ��������ָ���·ݵ�����
//������month �·�
function register_buildEndDay(month)
{
	var yearOb=document.getElementById('end_y');			//ȡ�ý������ڵ����
	var dayOb=document.getElementById('end_d');				//ȡ�ý������ڵ�����

	document.getElementById('end_d').length = 0;
	var lastDay=register_getDay(yearOb.value,Number(month));//ȡ�õ��µ�����
	for(var i=1;i<=lastDay;i++)								//ѭ���������ѡ���
	{
		var dayOption=document.createElement("OPTION");
		dayOb.options.add(dayOption);
		dayOption.innerText=i;
		dayOption.value=i;
		dayOb.selectedIndex=0;
	}
}
//���ܣ��������ý�����������
function register_resetEndDay()
{
	var dayObject=document.getElementById('end_d');
	var dayLength=dayObject.length;
	
	for(var i=1;i<dayLength;dayLength--)					//����������������������ѭ���ƴ�
	{
		dayObject.remove(i);
	}
}
//���ܣ�ȡ��ָ����ݺ��·ݵ�����
//������year ��� month �·�
function register_getDay(Year,Month)
{
	var LastDay = 0;
	switch (Month)											//�ж��·�,1,3,5,7,8,10,12����Ϊ31�죬4,6,9,11Ϊ30��
	{		
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
			Month="0"+ Month;
		case 10:
		case 12:
			LastDay=31;
			break;		
		case 4:
		case 6:
		case 9:
			Month="0"+ Month;
		case 11:
			LastDay=30;
			break;				
		case 2:												//�ж��Ƿ�Ϊ���꣬����2��Ϊ29�죬������Ϊ28��
			Month="0"+ Month;
			if ((Year%4==0&&Year%100!=0)||Year%400==0)
			{				
				LastDay=29;
			}
			else
			{
				LastDay=28;
			}
			break;
		default:
			LastDay=0;
	}

	return LastDay;
}