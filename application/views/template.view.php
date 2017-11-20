<!DOCTYPE html>
<html>
<head>
	<title>Contoh CRUD</title>
	<link rel="stylesheet" type="text/css" href="<?= BASE_PATH; ?>assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?= BASE_PATH; ?>assets/dataTables/css/dataTables.bootstrap.min.css">
	<!-- <link rel="stylesheet" type="text/css" href="<?= BASE_PATH; ?>assets/please-wait/please-wait.css"> -->
	<link rel="stylesheet" type="text/css" href="<?= BASE_PATH; ?>assets/template.css">

	<script type="text/javascript" src="<?= BASE_PATH ?>assets/jquery/jquery-3.2.1.min.js"></script>
</head>
<body>

<div class="container">

<?php
$view = new View($viewName);
$view->bind('data', $data);
$view->render();
?>
	
</div> <!-- .container -->
<?php
/*
<script type="text/javascript" src="<?= BASE_PATH; ?>assets/please-wait/please-wait.min.js"></script>
<script type="text/javascript">
  window.loading_screen = window.pleaseWait({
    logo: "<?= BASE_PATH; ?>assets/images/logo.png",
    backgroundColor: '#fff',
    loadingHtml: "<div class='loader'><p class='loading-message'>Tunggu Sebentar...</p><div class='sk-wandering-cubes'><div class='sk-cube sk-cube1'></div><div class='sk-cube sk-cube2'></div></div>"
  });
</script>
*/
?>

<script type="text/javascript" src="<?= BASE_PATH; ?>assets/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?= BASE_PATH; ?>assets/dataTables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?= BASE_PATH; ?>assets/dataTables/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
	window.loading_screen.finish();
</script>
</body>
</html>