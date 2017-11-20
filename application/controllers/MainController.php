<?php
namespace application\controllers;
use Controller;
/**
* Main Controller untuk template ini
*/
class MainController extends Controller
{	
	public function template($viewName, $data=array())
	{
		$view = $this->view('template');
		$view->bind('viewName', $viewName);
		$view->bind('data', $data);
	}
}