<?php
namespace application\controllers;
use \Controller;

class AdminMainController extends Controller
{
	function __construct()
	{
		// cek session
		if (empty($_SESSION["username"]) AND empty($_SESSION["password"])) {
			$this->redirect("login");
		}

		// ambil fungsi html
		require_once(ROOT.DS."application/functions/function_html.php");
	}

	public function template($viewName, $bc='', $data=array()) {
		// ========================================== //
		$textTitle 		= "Content Management System";
		$textMarquee	= "Yth. Bapak/Ibu, untuk melakukan PENGADUAN atau untuk permintaan INFORMASI teknis terkait pekerjaan silahkan menginventarisasi masalah terlebih dahulu  kemudian dibuat list permasalahan lalu sampaikan ke <a href=\"mailto:yanno@balimediakreasi.com\">yanno@balimediakreasi.com</a> agar mudah ditangani oleh tim kami.";
		// ========================================== //

		$pageTitle 	= ($bc == "") ? $textTitle : ucwords($bc) . " | " . $textTitle;

		$view = $this->view('admin/template');
		$view->bind('viewName', $viewName);
		$view->bind('breadcrumb', ucwords($bc));
		$view->bind('pageTitle', ucwords($pageTitle));
		$view->bind('marquee', $textMarquee);
		$view->bind('data', $data);
	}

	public function imageUploadHandler($gambar, $gambar_name, $gambar_tmp, $path_folder="public/assets/images/produk") {
		/*global $_FILES["gambar"];
		global $_FILES["gambar"]['name'];
		global $_FILES["gambar"]['tmp_name'];*/

		$valid_extensions = array('jpeg', 'jpg', 'png', 'gif', 'bmp'); // valid extensions
		$path = "../".$path_folder; // upload directory

		if(isset($gambar))
		{
			$img = $gambar_name;
			$tmp = $gambar_tmp;
				
			// get uploaded file's extension
			$ext = strtolower(pathinfo($img, PATHINFO_EXTENSION));
			
			// can upload same image using rand function
			$final_image = rand(1000,1000000).$img;
			
			// check's valid format
			if(in_array($ext, $valid_extensions)) {
				$filename 	= strtolower($final_image);
				$pathfinal 	= $path.$filename;

				if (file_exists($path)) {
					move_uploaded_file($tmp, $pathfinal);
				} else {
					mkdir($path);
					chmod($path, 0777);
					move_uploaded_file($tmp,$pathfinal);
				}

				// variables
				$srcFile 	= "../".$path_folder.$filename;
				$thumbFile 	= "../".$path_folder.'/thumbs/'.$filename;
				$thumbSize	= 100;

				/* Determine the File Type */
				$type = substr( $filename , strrpos( $filename , '.' )+1 );
				
				/* Create the Source Image */
				switch( $type ){
					case 'jpg' : case 'jpeg' :
						$src = imagecreatefromjpeg( $srcFile ); break;
					case 'png' :
						$src = imagecreatefrompng( $srcFile ); break;
					case 'gif' :
						$src = imagecreatefromgif( $srcFile ); break;
				}

				/* Determine the Image Dimensions */
				$oldW = imagesx( $src );
				$oldH = imagesy( $src );

				/* Calculate the New Image Dimensions */
				$limiting_dim = 0;
				if ( $oldH > $oldW ) {
					/* Portrait */
					$limiting_dim = $oldW;
				} else {
					/* Landscape */
					$limiting_dim = $oldH;
				}

				/* Create the New Image */
				$new = imagecreatetruecolor( $thumbSize , $thumbSize );
				
				/* Transcribe the Source Image into the New (Square) Image */
				imagecopyresampled( $new , $src , 0 , 0 , ($oldW-$limiting_dim )/2 , ( $oldH-$limiting_dim )/2 , $thumbSize , $thumbSize , $limiting_dim , $limiting_dim );

				// move image to folder 
				switch( $type ){
					case 'jpg' : case 'jpeg' :
						$src = imagejpeg( $new , $thumbFile ); break;
					case 'png' :
						$src = imagepng( $new , $thumbFile ); break;
					case 'gif' :
						$src = imagegif( $new , $thumbFile ); break;
				}

				// destroy temp image
				imagedestroy( $new );
				/*imagedestroy( $src );*/

				return $filename;
			} else {
				return false;
			}
		}
	}

	public function deleteImage($model, $id = array(), $path) {
		//hapus foto yg lama
		$this->model($model);
		$query 	= $this->$model->selectWhere($id);
		$li 	= $this->$model->getRows($query);

		$data = array(
			'gambar' => $li
		);

		unlink("../". $path .DS. $data["gambar"]);
	}
}
