tinyMCE.init({
	selector: ".richtext",
	height: 150,
	setup: function (editor) {
		editor.on('change', function () {
			tinymce.triggerSave();
		});
	},
	plugins: [
		"advlist autolink list link image charmap print preview anchor",
		"searchreplace visualblocks code fullscreen",
		"insertdatetime media table contextmenu paste imagetools responsivefilemanager"
	],
	toolbar: "insertfile undo redo | stylesheet | bold italic | alignment aligncenter alignright alignjustify | bullist numlist outdent indent | responsivefilemanager",

	external_filemanager_path: "../public/assets/filemanager/",
	filemanager_title: "File Manager",
	external_plugins: {
		"filemanager" : "../filemanager/plugin.min.js"
	}
});