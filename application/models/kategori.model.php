<?php
/**
* 
*/
class KategoriModel extends Model
{
	
	public function __construct()
	{
		$this->connect();
		$this->_table = "kategori";
	}
}