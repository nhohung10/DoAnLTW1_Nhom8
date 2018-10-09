<?php
class Db{
	//Tao bien $conn ket noi
	public static $conn;
	//Tao ket noi trong ham construct
	public function __construct(){
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	public function __destruct(){
		self::$conn->close();
	}
	public function getData($obj){
		$arr = array();
		while($row = $obj->fetch_assoc()){
			$arr[]=$row;
		}
		return $arr;
	}
	//Viet ham lay ra tên và giá sản phẩm của hãng “Apple”
	public function product1(){
		//Viet cau SQL
		$sql = "SELECT * FROM manufactures,protypes,product WHERE manufactures.manu_ID = product.manu_ID AND product.type_ID=protypes.type_ID";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
//
	public function Search($search)
	{
		$sql = "SELECT * FROM manufactures,protypes,product WHERE manufactures.manu_ID = product.manu_ID AND product.type_ID=protypes.type_ID AND name LIKE '%$search%'";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}


	public function getUserName($user)
	{
		$sql = "SELECT *
		FROM `passcode`
		WHERE `admin` = `$user`";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}

	public function getproduct($page,$per_page)
	   {
	     $first_link = ($page - 1) * $per_page;
	     $sql ="SELECT * FROM manufactures,protypes,product WHERE manufactures.manu_ID = product.manu_ID AND product.type_ID=protypes.type_ID LIMIT $first_link,$per_page";
	   $result = self::$conn->query($sql);
		return $this->getData($result);
	   }
	public function paginate($url,$total,$page,$per_page)
	{
		if($total <= 0)
		{
			return ""; 
		}
		$total_links = ceil($total/$per_page);
		$first_link = ""; $prev_link =""; $last_link=""; $next_link=""; $link = "";
		for ($j = 1; $j <= $total_links;$j++)
		{
			$link = $link."<a href='$url?page=$j'> $j <a/>";
		}      
		if ($page > 1) 
		{        
		 	$first_link = "<a href='$url'> << </a>";       
		    $prev = $page - 1;       
		    $prev_link = "<a href='$url?page=$prev'> < </a>";     
		}     
		if($page <= $total_links)
		{     
		    $last_link = "<a href='$url?page=$total_links'> >> </a>";
		    $next = $page + 1;         
		    $next_link = "<a href ='$url?page=$next'> > </a>";
		}
		return $first_link.$prev_link.$link.$next_link.$last_link;

	}
}?>