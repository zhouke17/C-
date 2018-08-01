<?php
require_once(INCLUDE_PATH . 'db.inc.php');
class Vote extends DBSQL
{
	public $_name = 'EM_VOTE_INFO';									//�����������Ʊ���
	public $_item = 'EE_ITEM_INFO';									//�������ѡ������Ʊ���
	public $_user = 'EE_VOTE_USER';									//�����û���Ϣ�����Ʊ���
	public $_pagesize = 10;											//����ÿҳ��ȡ��¼��
	public $_type = array("1"=>"��ѡ",								//����ѡ������
					"2"=>"��ѡ");
	public $_display = array("0"=>"����",							//�������������ʾ
					"1"=>"����");
	public function __construct()
	{
		parent::__construct();
	}
	/**
	* ���ܣ���ȡ�����б�
	* ������$where ��ѯ����
	* ���أ�����
	*/
	public function getVoteList($where = ''){
		$sql = "SELECT * FROM " . $this->_name;
		if($where)													//���������ֵ��������ѯ����
		{
			$sql .= ' WHERE ' . $where;
		}
		return $this->select($sql);
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
		$field = implode(',',array_keys($data));					//����sql�����ֶβ���
		$i = 0;
		foreach($data as $key => $val)								//���sql����ֵ����
		{
			$value .= "'" . $val . "'";
			if($i < count($data) - 1)								//�ж��Ƿ���������һ��ֵ
				$value .= ",";
			$i++;
		}
		$sql = "INSERT INTO " . $name . "(" . $field . ") VALUES(" . $value . ")";
		//echo $sql;
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
	* ���ܣ�ɾ��ָ��ID�ĵ�����¼����ر��¼
	* ������$id �����ID
	* ���أ�TRUE OR FALSE
	*/
	public function delData($id){
		$this->begintransaction();
		try{
			$sql = "DELETE FROM " . $this->_item . " WHERE F_ID_VOTE_INFO = " . $id;
			$this->delete($sql);										//ɾ������ѡ��������������
			$sql = "DELETE FROM " . $this->_user . " WHERE F_ID_VOTE_INFO = " . $id;
			$this->delete($sql);										//ɾ���û�ͳ�Ʊ�������������
			$sql = "DELETE FROM " . $this->_name . " WHERE F_ID = " . $id;
			$this->delete($sql);
		}catch(Exception $e){
			$this->rollback();
			return false;
		}
		$this->commit();
		return true;
	}
	/**
	 * ���ܣ���ȡָ������ID��ѡ��
	 * ������$vote_id ����ID
	 * ���أ�����
	 */
	public function getItemList($vote_id)
	{
		$sql = "SELECT * FROM " . $this->_item . " WHERE F_ID_VOTE_INFO = $vote_id ORDER BY F_ITEM_ORDER";
		return $this->select($sql);
	}
	/**
	 * ���ܣ�ɾ��ָ��ID��ѡ����¼
	 * ������$id ��ID
	 * ���أ�TRUE OR FALSE
	 */
	public function delItemData($id)
	{
		$sql = "DELETE FROM " . $this->_item . " WHERE F_ID = $id";
		return $this->delete($sql);
	}
	/**
	 * ���ܣ���ȡָ������ID���û�ͳ����Ϣ
	 * ������$vote_id ����ID,$page ��ǰҳ��
	 * ���أ�����
	 */
	public function getUserList($vote_id,$page=1)
	{
		$start = ($page - 1) * $this->_pagesize;
		$sql = "SELECT * FROM " . $this->_user . " WHERE F_ID_VOTE_INFO = $vote_id";
		$sql .= " LIMIT $start,$this->_pagesize";
		return $this->select($sql);
	}
	/**
	 * ���ܣ���ȡָ������ID�û�ͳ�Ƽ�¼������
	 * ������$vote_id ����ID
	 * ���أ���¼����
	 */
	public function getUserCount($vote_id)
	{
		$sql = "SELECT COUNT(F_ID) FROM " . $this->_user . " WHERE F_ID_VOTE_INFO = $vote_id";
		$r = $this->select($sql);
		return $r[0][0];
	}
	/**
	 * ���ܣ�ɾ��ָ��ID���û�ͳ�Ƽ�¼
	 * ������$id �û�ͳ�Ʊ�ID
	 * ���أ�TRUE OR FALSE
	 */
	public function delUserData($id)
	{
		$sql = "DELETE FROM " . $this->_user . " WHERE F_ID = $id";
		return $this->delete($sql);
	}
	/**
	 * ���ܣ�����ָ�������ѡ��˳��
	 * ������$id ѡ��ID����,$order ѡ��˳������
	 * ���أ�TRUE OR FALSE
	 */
	public function setOrder($id,$order)
	{
		if($id)
		{
			$this->begintransaction();
			try {
				foreach ($id as $key => $value)
				{
					$sql = "UPDATE " . $this->_item . " SET F_ITEM_ORDER = {$order[$key]} WHERE F_ID = $value";
					$this->update($sql);
				}
			}catch (Exception $e)
			{
				$this->rollback();
				return false;
			}
			$this->commit();
		}
		return true;
	}
	/**
	 * ���ܣ�������ͳ���û���Ϣ
	 * ������$id ����ID
	 * ���أ�����
	 */
	public function areaList($id)
	{
		$sql = "SELECT COUNT(F_ID) AS C,F_USER_AREA FROM " . $this->_user;
		$sql .= " WHERE F_ID_VOTE_INFO = $id GROUP BY F_USER_AREA";
		return $this->select($sql);
	}
	/**
	 * ���ܣ�����û��Ϸ���
	 * ������$ip �û�IP,$voteid ����ID,
	 * ���أ�TRUE OR FALSE
	 */
	public function checkIsValid($ip,$voteid)
	{
		$sql = "SELECT F_ID FROM " . $this->_user . " WHERE F_USER_IP = $ip AND F_ID_VOTE_INFO = $voteid";
		$r = $this->select($sql);
		if($r[0][F_ID] > 0)					//�����IP�Ѿ�Ϊ�õ���Ͷ��Ʊ�򷵻�FALSE
		{
			return false;
		}else{
			return true;
		}
	}
	/**
	 * ���ܣ�����ͶƱ���ݺ��û���Ϣ����������ݱ�
	 * ������$item ����ѡ��ID,$voteid ����ID,$ip �û�IP,$location �û���������
	 * ���أ�TRUE
	 */
	public function updateResult($item,$voteid,$ip,$location)
	{
		if(is_array($item))					//�ж�item�Ƿ������飬����Ϊ��ѡ���飬ѭ����������
		{
			$this->begintransaction();			//��ʼ������
			try {
				foreach ($item as $value)
				{
					$sql = "UPDATE " . $this->_item . " SET F_ITEM_COUNT = F_ITEM_COUNT + 1 WHERE F_ID = $value";
					echo $sql;
					$this->update($sql);
				}
				$data = array();
				$data['F_USER_IP'] = $ip;
				$data['F_USER_TIME'] = time();
				$data['F_USER_AREA'] = $location;
				$data['F_ID_VOTE_INFO'] = $voteid;
				$this->insertData($this->_user,$data);
			}catch (Exception $e){			//�����쳣����ع�
				$this->rollback();
			}
			$this->commit();				//�����ύ
			return true;
		}else{
			$this->begintransaction();			//��ʼ������
			try {
				$sql = "UPDATE " . $this->_item . " SET F_ITEM_COUNT = F_ITEM_COUNT + 1 WHERE F_ID = $item";
				$this->update($sql);
				$data = array();
				$data['F_USER_IP'] = $ip;
				$data['F_USER_TIME'] = time();
				$data['F_USER_AREA'] = $location;
				$data['F_ID_VOTE_INFO'] = $voteid;
				$this->insertData($this->_user,$data);
			}catch (Exception $e){			//�����쳣����ع�
				$this->rollback();
			}
			$this->commit();				//�����ύ
			return true;
		}
	}
}
?>
