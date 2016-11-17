//= require jquery
//= require jquery_ujs
//= require tinymce-jquery
//= require bootstrap.min
//= require_tree ./admin_layout
//= require_tree ./admin_layout/zy_upload



(function() {
  if (typeof tinyMCE != 'undefined') {
    tinyMCE.init({
      selector: "textarea.tinymce",
      language: "zh_CN",
      toolbar: ["fontselect fontsizeselect |  bullist numlist outdent indent | code | bold italic underline | forecolor backcolor | alignleft aligncenter alignright | undo redo | paste"],
      plugins: "paste,image,imagetools,link,table,textcolor,code,preview,media,fullscreen",
      paste_data_images: true,
      relative_urls: false,
      remove_script_host: false
    });
  } else {
    setTimeout(arguments.callee, 50);
  }
})();
