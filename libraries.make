#
# A make file containing all the libraries directives.
#
#

core = 7.x
api = 2

libraries[backbone][download][type] = "get"
libraries[backbone][download][url] = "https://github.com/jashkenas/backbone/archive/1.1.0.zip"

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor%20for%20Drupal/edit/ckeditor_4.4.3_edit.zip"
; Add a style to the CKEditor skin that shows asterisks next to required fields.
libraries[ckeditor][patch][2377763] = https://www.drupal.org/files/issues/ckeditor-asterisk-for-required-fields.patch

libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = https://github.com/jackmoore/colorbox/archive/1.5.13.zip

libraries[jsonpath][download][type] = "get"
libraries[jsonpath][download][url] = "https://jsonpath.googlecode.com/files/jsonpath-0.8.1.php"

libraries[modernizr][download][type] = "get"
libraries[modernizr][download][url] = "https://github.com/Modernizr/Modernizr/archive/v2.7.1.zip"

libraries[underscore][download][type] = "get"
libraries[underscore][download][url] = "https://github.com/jashkenas/underscore/archive/1.5.2.zip"

libraries[plupload][directory_name] = plupload
libraries[plupload][download][type] = file
libraries[plupload][download][url] = https://github.com/moxiecode/plupload/archive/v1.5.8.zip
; Remove plupload library examples folder for Drupal distribution
; http://drupal.org/node/1903850
libraries[plupload][patch][1903850] = https://drupal.org/files/issues/plupload-1_5_8-rm_examples-1903850-16.patch
libraries[plupload][type] = library

libraries[superfish][download][type] = get
libraries[superfish][download][url] = https://github.com/joeldbirch/superfish/archive/1.7.4.zip

libraries[widget][download][type] = get
libraries[widget][download][url] = http://download.ckeditor.com/widget/releases/widget_4.4.5.zip
libraries[widget][subdir] = "ckeditor/plugins"

libraries[lineutils][download][type] = get
libraries[lineutils][download][url] = http://download.ckeditor.com/lineutils/releases/lineutils_4.4.5.zip
libraries[lineutils][subdir] = "ckeditor/plugins"

libraries[image2][download][type] = get
libraries[image2][download][url] = http://download.ckeditor.com/image2/releases/image2_4.4.5.zip
libraries[image2][subdir] = "ckeditor/plugins"
; Make the image alt-text a required field.
libraries[image2][patch][2377721] = https://www.drupal.org/files/issues/make-ckeditor-image2-alt-text-required.patch

; Note: Once we upgrade FontAwesome module to version 2.x, this can be removed
; and managed by module's make file.
libraries[fontawesome][download][type] = get
libraries[fontawesome][download][url] = https://github.com/FortAwesome/Font-Awesome/archive/v4.2.0.zip

libraries[jquery-miniColors][download][type] = get
libraries[jquery-miniColors][download][url] = https://github.com/claviska/jquery-minicolors/archive/2.1.10.zip

libraries[fed_analytics][download][type] = get
libraries[fed_analytics][download][url] = https://github.com/GSA/DAP-Gov-wide-GA-Code/archive/1785a8c79cb991ef4efd1a8ee6b7c3d66647119f.zip