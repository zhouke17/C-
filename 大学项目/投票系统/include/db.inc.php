<?php
/**
���ܣ����ݿ�Ļ���������
**/
class DBSQL{
	private $CONN = "";									//�������ݿ����ӱ���
	/**
	 * ���ܣ���ʼ�����캯�����������ݿ�
	 */
	public function __construct(){
		try {											//�������Ӵ�����ʾ�����ļ�
			$conn = mysql_connect(ServerName,UserName,PassWord);
		}catch (Exception $e)
		{
			$msg = $e;
			include(ERRFILE);
		}
		try {											//�������ݿ�ѡ�������ʾ�����ļ�
			mysql_select_db(DBName,$conn);
		}catch (Exception $e)
		{
			$msg = $e;
			include(ERRFILE);
		}
		$this->CONN = $conn;
	}
	/**
	 * ���ܣ����ݿ��ѯ����
	 * ������$sql SQL���
	 * ���أ���Ψ�����false
	 */
	public function select($sql = ""){	
		if (empty($sql)) return false;					//���SQL���Ϊ���򷵻�FALSE
		if (empty($this->CONN)) return false;			//�������Ϊ���򷵻�FALSE
		try{											//�������ݿ�ѡ�������ʾ�����ļ�
			$results = mysql_query($sql,$this->CONN);
		}catch (Exception $e){
			$msg = $e;
			include(ERRFILE);
		}		
		if ((!$results) or (empty($results))) {			//�����ѯ���Ϊ�����ͷŽ��������FALSE
			@mysql_free_result($results);
			return false;
		}
		
		$count = 0;
		$data = array();
		
		while ($row = @mysql_fetch_array($results)) {	//�Ѳ�ѯ��������һ����ά����
			$data[$count] = $row;
			$count++;
		}
		
		@mysql_free_result($results);
		
		return $data;
	}
	/**
	 * ���ܣ����ݲ��뺯��
	 * ������$sql SQL���
	 * ���أ�0���²������ݵ�ID
	 */
	public function insert($sql = ""){
		if (empty($sql)) return 0;						//���SQL���Ϊ���򷵻�FALSE
		if (empty($this->CONN)) return 0;				//�������Ϊ���򷵻�FALSE
		try{											//�������ݿ�ѡ�������ʾ�����ļ�
			$results = mysql_query($sql,$this->CONN);
		}catch(Exception $e){
			$msg = $e;
			include(ERRFILE);
		}
		if (!$results) 									//�������ʧ�ܷ���0�����򷵻ص�ǰ��������ID
			return 0;
		else
			return @mysql_insert_id($this->CONN);
	}
	
	/**
	 * ���ܣ����ݸ��º���
	 * ������$sql SQL���
	 * ���أ�TRUE OR FALSE
	 */
	public function update($sql = ""){
		if(empty($sql)) return false;					//���SQL���Ϊ���򷵻�FALSE
		if(empty($this->CONN)) return false;			//�������Ϊ���򷵻�FALSE
		try{											//�������ݿ�ѡ�������ʾ�����ļ�
			$result = mysql_query($sql,$this->CONN);
		}catch(Exception $e){
			$msg = $e;
			include(ERRFILE);

		}
		return $result;
	}
	/**
	 * ���ܣ�����ɾ������
	 * ������$sql SQL���
	 * ���أ�TRUE OR FALSE
	 */
	public function delete($sql = ""){
		if(empty($sql)) return false;					//���SQL���Ϊ���򷵻�FALSE
		if(empty($this->CONN)) return false;			//�������Ϊ���򷵻�FALSE
		try{
			$result = mysql_query($sql,$this->CONN);
		}catch(Exception $e){
			$msg = $e;
			include(ERRFILE);
		}
		return $result;
	}
	/**
	 * ���ܣ���������
	 */
	public function begintransaction()
	{
		mysql_query("SET  AUTOCOMMIT=0");				//����Ϊ���Զ��ύ����ΪMYSQLĬ������ִ��
		mysql_query("BEGIN");							//��ʼ������
	}
	/**
	 * ���ܣ��ع�
	 */
	public function rollback()
	{
		mysql_query("ROOLBACK");
	}
	/**
	 * ���ܣ��ύִ��
	 */
	public function commit()
	{
		mysql_query("COMMIT");
	}
	/**
	 * ���ܣ���ȡָ�����ָ��ID�ļ�¼
	 * ������$id ��ID,$name ������
	 * ���أ�����
	 */
	public function getInfo($id,$name)
	{
		$sql = "SELECT * FROM " . $name . " WHERE F_ID = $id";
		$r = $this->select($sql);
		return $r[0];
	}
	/**
	 * ���ܣ���ָ�����в�������
	 * ������$name ������,$data ����(��ʽ��$data['�ֶ���'] = ֵ)
	 * ���أ������¼ID
	 */
	public function insertData($name,$data)
	{
		$field = implode(',',array_keys($data));			//����sql�����ֶβ���
		$i = 0;
		foreach($data as $key => $val)						//���sql����ֵ����
		{
			$value .= "'" . $val . "'";
			if($i < count($data) - 1)						//�ж��Ƿ���������һ��ֵ
				$value .= ",";
			$i++;
		}
		$sql = "INSERT INTO " . $name . "(" . $field . ") VALUES(" . $value . ")";
		return $this->insert($sql);
	}
	/**
	* ���ܣ�����ָ����ָ��ID�ĵ�����¼
	* ������$name ������,$id ��ID,$data ����(��ʽ��$data['�ֶ���'] = ֵ)
	* ���أ�TRUE OR FALSE
	*/
	public function updateData($name,$id,$data){	 
		$col = array();
		foreach ($data as $key => $value)
		{
			$col[] = $key . "='" . $value . "'";
		}
		$sql = "UPDATE " . $name . " SET " . implode(',',$col) . " WHERE F_ID = $id";
		return $this->update($sql);
	}

	/**
	 * ���ܣ�ɾ��ָ��ID�ı��¼
	 * ������$id��ID,$name ������
	 * ���أ�TRUE OR FALSE
	 */
	public function delData($id,$name)
	{
		$sql = "DELETE FROM " . $name . " WHERE F_ID = $id";
		return $this->delete($sql);
	}

}
?>
