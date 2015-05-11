core = 7.x
api = 2

## Include files
includes[libraries] = "libraries.make"
includes[themes] = "themes.make"


defaults[projects][subdir] = 'contrib'

##
## Drupal Core
##

projects[drupal][type] = core
projects[drupal][version] = 7.35

## CORE PATCHES

; Allow install profiles to change the system requirements
; http://drupal.org/node/1772316
projects[drupal][patch][] = http://drupal.org/files/drupal-7.x-allow_profile_change_sys_req-1772316-21.patch

; Load multiple revisions at once
; http://drupal.org/node/1730874
projects[drupal][patch][] = http://drupal.org/files/1730874_0.patch

; user_role_grant_permissions() throws PDOException when used for a disabled
; module's permission or with non-existent permissions
; http://drupal.org/comment/7285420#comment-7285420
projects[drupal][patch][] = http://drupal.org/files/drupal-fix_pdoexception_grant_permissions-737816-36-do-not-test.patch

; Work-around to core bug, Undefined index: uri in image_field_formatter_view()
; https://www.drupal.org/node/1678686
projects[drupal][patch][] = https://www.drupal.org/files/issues/image-preview-missing-1678686-12.patch

##
## Contrib
## 

projects[better_formats][version] = "1.0-beta1"
projects[better_formats][type] = "module"
projects[better_formats][subdir] = "contrib"

projects[bean][version] = "1.x-dev"
projects[bean][type] = "module"
projects[bean][subdir] = "contrib"
projects[bean][download][type] = "git"
projects[bean][download][revision] = "2d0f262"
projects[bean][download][branch] = "7.x-1.x"

projects[bean_tax][version] = "2.3"
projects[bean_tax][type] = "module"
projects[bean_tax][subdir] = "contrib"

projects[behatrunner][version] = "1.x-dev"
projects[behatrunner][type] = "module"
projects[behatrunner][subdir] = "contrib"
projects[behatrunner][download][type] = "git"
projects[behatrunner][download][revision] = "3d74d9b"
projects[behatrunner][download][branch] = "7.x"
; Remove PHP memory_limit ini_set on hook_install as it causes failures
; http://drupal.org/node/2360825
projects[behatrunner][patch][2360825] = "http://drupal.org/files/issues/behatrunner-memory_limit-0.patch"

projects[breakpoints][version] = "1.3"
projects[breakpoints][type] = "module"
projects[breakpoints][subdir] = "contrib"

projects[ckeditor][version] = "1.x-dev"
projects[ckeditor][type] = "module"
projects[ckeditor][subdir] = "contrib"
projects[ckeditor][download][type] = "git"
projects[ckeditor][download][revision] = "b0de255"
projects[ckeditor][download][branch] = "7.x-1.x"
; CKEditor accomodate latest Media changes
; http://drupal.org/node/2159403
projects[ckeditor][patch][2159403] = "http://drupal.org/files/issues/make_ckeditor_plugin-2159403-107.patch"

projects[colorbox][version] = "2.x-dev"
projects[colorbox][type] = "module"
projects[colorbox][subdir] = "contrib"
projects[colorbox][download][type] = "git"
projects[colorbox][download][revision] = "ce90f5d"
projects[colorbox][download][branch] = "7.x-1.x"

projects[composer_manager][version] = "1.7"
projects[composer_manager][type] = "module"
projects[composer_manager][subdir] = "contrib"

projects[context_admin][version] = "1.x-dev"
projects[context_admin][type] = "module"
projects[context_admin][subdir] = "contrib"
projects[context_admin][download][type] = "git"
projects[context_admin][download][revision] = "15a8390"
projects[context_admin][download][branch] = "7.x-1.x"

projects[ctools][download][type] = "git"
projects[ctools][download][revision] = "ae66d65"
projects[ctools][type] = "module"
projects[ctools][subdir] = "contrib"

projects[date][version] = "2.8"
projects[date][type] = "module"
projects[date][subdir] = "contrib"

projects[defaultconfig][version] = "1.x-dev"
projects[defaultconfig][subdir] = "module"
projects[defaultconfig][subdir] = "contrib"
projects[defaultconfig][download][type] = "git"
projects[defaultconfig][download][revision] = "a62d216"
projects[defaultconfig][download][branch] = "7.x-1.x"
; Fatal error when adding a permission that doesn't exist
; http://drupal.org/node/2008178
projects[defaultconfig][patch][2008178] = "http://drupal.org/files/issues/defaultconfig-rebuild-2008178-9.patch"

projects[devel][version] = "1.3"
projects[devel][type] = "module"
projects[devel][subdir] = "contrib"

projects[ember_support][version] = "1.x-dev"
projects[ember_support][type] = "module"
projects[ember_support][subdir] = "contrib"
projects[ember_support][download][type] = "git"
projects[ember_support][download][branch] = "7.x-1.x"
projects[ember_support][download][revision] = ca3c084

projects[entity][version] = "1.x-dev"
projects[entity][type] = "module"
projects[entity][subdir] = "contrib"
projects[entity][download][type] = "git"
projects[entity][download][revision] = "4d2cc6f"
projects[entity][download][branch] = "7.x-1.x"

projects[entityreference][version] = "1.x-dev"
projects[entityreference][type] = "module"
projects[entityreference][subdir] = "contrib"
projects[entityreference][download][type] = "git"
projects[entityreference][download][revision] = "dc4196b"
projects[entityreference][download][branch] = "7.x-1.x"

projects[entityreference_prepopulate][version] = "1.5"
projects[entityreference_prepopulate][type] = "module"
projects[entityreference_prepopulate][subdir] = "contrib"

projects[escape_admin][version] = "1.x-dev"
projects[escape_admin][type] = "module"
projects[escape_admin][subdir] = "contrib"
projects[escape_admin][download][type] = "git"
projects[escape_admin][download][revision] = "ecd3f58"
projects[escape_admin][download][branch] = "7.x-1.x"

projects[fape][version] = "1.2"
projects[fape][type] = "module"
projects[fape][subdir] = "contrib"

projects[features][version] = "2.2"
projects[features][subdir] = "contrib"

projects[field_group][version] = "1.x-dev"
projects[field_group][type] = "module"
projects[field_group][subdir] = "contrib"
projects[field_group][download][type] = "git"
projects[field_group][download][revision] = "9cdde2b"
projects[field_group][download][branch] = "7.x-1.x"

projects[fieldable_panels_panes][version] = "1.x-dev"
projects[fieldable_panels_panes][type] = "module"
projects[fieldable_panels_panes][subdir] = "contrib"
projects[fieldable_panels_panes][download][type] = "git"
projects[fieldable_panels_panes][download][revision] = "b9628af"
projects[fieldable_panels_panes][download][branch] = "7.x-1.x"

projects[file_entity][version] = "2.x-dev"
projects[file_entity][type] = "module"
projects[file_entity][subdir] = "contrib"
projects[file_entity][download][type] = "git"
projects[file_entity][download][revision] = "609fa9f"
projects[file_entity][download][branch] = "7.x-2.x"

projects[file_entity_link][version] = "1.0-alpha3"
projects[file_entity_link][type] = "module"
projects[file_entity_link][subdir] = "contrib"

projects[file_image_formatters][version] = "1.1"
projects[file_image_formatters][type] = "module"
projects[file_image_formatters][subdir] = "contrib"

projects[focal_point][version] = "1.0-beta1"
projects[focal_point][type] = "module"
projects[focal_point][subdir] = "contrib"

projects[form_builder][version] = "1.6"
projects[form_builder][type] = "module"
projects[form_builder][subdir] = "contrib"

projects[iib][version] = "1.x-dev"
projects[iib][type] = "module"
projects[iib][subdir] = "contrib"
projects[iib][download][type] = "git"
projects[iib][download][revision] = 17a55eb
projects[iib][download][branch] = "7.x-1.x"
; Integrate IIB with the Navbar module and improve Toolbar integration
; http://drupal.org/node/1737036
projects[iib][patch][1737036] = http://drupal.org/files/issues/iib-navbar-toolbar-1737036-51.patch

projects[jquery_update][version] = "2.4"
projects[jquery_update][type] = "module"
projects[jquery_update][subdir] = "contrib"

projects[libraries][version] = "2.2"
projects[libraries][type] = "module"
projects[libraries][subdir] = "contrib"

projects[link][version] = "1.2"
projects[link][type] = "module"
projects[link][subdir] = "contrib"

projects[linkit][version] = "3.1"
projects[linkit][type] = "module"
projects[linkit][subdir] = "contrib"

projects[magic_beans][version] = "1.x-dev"
projects[magic_beans][type] = "module"
projects[magic_beans][subdir] = "contrib"
projects[magic_beans][download][type] = "git"
projects[magic_beans][download][revision] = "6c5d19e"
projects[magic_beans][download][branch] = "7.x-1.x"

projects[media][version] = "2.x-dev"
projects[media][type] = "module"
projects[media][subdir] = "contrib"
projects[media][download][type] = "git"
projects[media][download][revision] = "b2ba2da"
projects[media][download][branch] = "7.x-2.x"
; Improve UX for Media Thumbnail and Media Bulk Upload's multiform page 
; http://drupal.org/node/2166623
projects[media][patch][2166623] = "http://drupal.org/files/issues/media_bulk_upload-improve-multiform-2166623-2.patch"
; Media dialog appears underneath the Ctools modal dialog with latest jQuery UI
; http://drupal.org/node/2272567
projects[media][patch][2272567] = http://www.drupal.org/files/issues/media-dialog-zindex-2272567-1.patch

projects[media_youtube][version] = "2.x-dev"
projects[media_youtube][type] = "module"
projects[media_youtube][subdir] = "contrib"
projects[media_youtube][download][type] = "git"
projects[media_youtube][download][revision] = "187283f"
projects[media_youtube][download][branch] = "7.x-2.x"

projects[media_preview_slider][version] = "1.x-dev"
projects[media_preview_slider][type] = "module"
projects[media_preview_slider][subdir] = "contrib"
projects[media_preview_slider][download][type] = "git"
projects[media_preview_slider][download][branch] = "7.x-1.x"
projects[media_preview_slider][download][revision] = 3676e33
projects[media_preview_slider][download][url] = "http://git.drupal.org/sandbox/Brian14/2222597.git"

projects[module_filter][version] = "2.0-alpha2"
projects[module_filter][type] = "module"
projects[module_filter][subdir] = "contrib"

projects[multiform][version] = "1.1"
projects[multiform][type] = "module"
projects[multiform][subdir] = "contrib"

projects[metatag][version] = 1.0-rc2
projects[metatag][type] = "module"
projects[metatag][subdir] = "contrib"

projects[navbar][version] = "1.x-dev"
projects[navbar][type] = "module"
projects[navbar][subdir] = "contrib"
projects[navbar][download][type] = "git"
projects[navbar][download][revision] = "bd3389b"
projects[navbar][download][branch] = "7.x-1.x"
; Menu icons for contrib modules
; http://drupal.org/node/1954912
projects[navbar][patch][1954912] = "http://drupal.org/files/issues/navbar-contrib-icons-1954912-20.patch"
; JSON Error caused in Views when navbar.tableheader is not loaded
; http://drupal.org/node/2263205
projects[navbar][patch][2263205] = "http://drupal.org/files/issues/navbar-tableheader-views.patch"

projects[nra][version] = "1.0-alpha2"
projects[nra][type] = "module"
projects[nra][subdir] = "contrib"

projects[nra_workbench_moderation][version] = "1.x-dev"
projects[nra_workbench_moderation][type] = "module"
projects[nra_workbench_moderation][subdir] = "contrib"
projects[nra_workbench_moderation][download][type] = "git"
projects[nra_workbench_moderation][download][revision] = "9f17009"
projects[nra_workbench_moderation][download][branch] = "7.x-1.x"
; Errors when 'Status' column is built for new/unpublished items in NRA
; http://drupal.org/node/2163175
projects[nra_workbench_moderation][patch][2163175] = "http://drupal.org/files/issues/nra_workbench_moderation-no-published-state-2163175-1.patch"

projects[options_element][version] = "1.x-dev"
projects[options_element][type] = "module"
projects[options_element][subdir] = "contrib"
projects[options_element][download][type] = "git"
projects[options_element][download][revision] = "33fa8a7"
projects[options_element][download][branch] = "git"

projects[pathauto][version] = "1.2"
projects[pathauto][type] = "module"
projects[pathauto][subdir] = "contrib"

projects[panelizer][version] = "3.x-dev"
projects[panelizer][subdir] = "contrib"
projects[panelizer][download][type] = "git"
projects[panelizer][download][revision] = "c8fb90b"
projects[panelizer][download][branch] = "7.x-3.x"

projects[panels][version] = "3.x-dev"
projects[panels][type] = "module"
projects[panels][subdir] = "contrib"
projects[panels][download][type] = "git"
projects[panels][download][revision] = "bcda4a6"
projects[panels][download][branch] = "7.x-3.x"
; Add support for defining styles per panels pane subtype.
; https://www.drupal.org/node/2320045
projects[panels][patch][2320045] = https://www.drupal.org/files/issues/panels-style-plugin-type-subtype-2320045-10.patch

projects[panopoly_magic][version] = "1.x-dev"
projects[panopoly_magic][type] = "module"
projects[panopoly_magic][subdir] = "contrib"
projects[panopoly_magic][download][type] = "git"
projects[panopoly_magic][download][revision] = "1135fea"
projects[panopoly_magic][download][branch] = "7.x-1.x"

projects[panopoly_theme][version] = "1.x-dev"
projects[panopoly_theme][type] = "module"
projects[panopoly_theme][subdir] = "contrib"
projects[panopoly_theme][download][type] = "git"
projects[panopoly_theme][download][revision] = "d409deb"
projects[panopoly_theme][download][branch] = "7.x-1.x"
; Remove makefile from Panopoly Theme
; http://drupal.org/node/1904766
projects[panopoly_theme][patch][1904766] = "http://drupal.org/files/issues/panopoly_theme-makefile-free-1904766-13.patch"

projects[picture][version] = "1.x-dev"
projects[picture][type] = "module"
projects[picture][subdir] = "contrib"
projects[picture][download][type] = "git"
projects[picture][download][revision] = "3d9fe6c"
projects[picture][download][branch] = "7.x-1.x"

projects[quickedit][version] = "1.x-dev"
projects[quickedit][type] = "module"
projects[quickedit][subdir] = "contrib"
projects[quickedit][download][type] = "git"
projects[quickedit][download][revision] = "28a314d"
projects[quickedit][download][branch] = "7.x-1.x"

projects[quickedit_tab][version] = 1.1
projects[quickedit_tab][type] = "module"
projects[quickedit_tab][subdir] = "contrib"

projects[responsive_preview][version] = "1.x-dev"
projects[responsive_preview][type] = "module"
projects[responsive_preview][subdir] = "contrib"
projects[responsive_preview][download][type] = "git"
projects[responsive_preview][download][revision] = "d741779"
projects[responsive_preview][download][branch] = "7.x-1.x"
; Before js processing, the phone image incorrectly positioned.
; https://drupal.org/node/2276789
projects[responsive_preview][patch][2276789] = "http://drupal.org/files/issues/responsive_preview-phone_image_incorrectly_positioned-2276789-2.patch"

projects[revision_scheduler][version] = "1.x-dev"
projects[revision_scheduler][type] = "module"
projects[revision_scheduler][subdir] = "contrib"
projects[revision_scheduler][download][type] = "git"
projects[revision_scheduler][download][revision] = "bb9fd39"
projects[revision_scheduler][download][branch] = "7.x-1.x"

projects[role_export][version] = "1.0"
projects[role_export][type] = "module"
projects[role_export][subdir] = "contrib"

projects[rules][version] = "2.7"
projects[rules][type] = "module"
projects[rules][subdir] = "contrib"

projects[simple_gmap][version] = "1.2"
projects[simple_gmap][type] = "module"
projects[simple_gmap][subdir] = "contrib"

projects[sps][version] = "1.x-dev"
projects[sps][type] = "module"
projects[sps][subdir] = "contrib"
projects[sps][download][type] = "git"
projects[sps][download][revision] = "be9bd83"
projects[sps][download][branch] = "7.x-1.x"
; UX improvements on page level IIB
; http://drupal.org/node/1733490
projects[sps][patch][1733490] = "http://drupal.org/files/sps-css-cleanup-1733490-3.patch"
; sps_entity_create() throws errors
; http://drupal.org/node/2288873
projects[sps][patch][2288873] = "http://drupal.org/files/issues/sps-undefiend-method-create-3.patch"

projects[strongarm][version] = "2.0"
projects[strongarm][type] = "module"
projects[strongarm][subdir] = "contrib"

projects[token][version] = "1.5"
projects[token][type] = "module"
projects[token][subdir] = "contrib"

projects[taxonomy_entity_index][version] = "1.0-beta7"
projects[taxonomy_entity_index][type] = "module"
projects[taxonomy_entity_index][subdir] = "contrib"

projects[ux_elements][version] = "1.x-dev"
projects[ux_elements][type] = "module"
projects[ux_elements][subdir] = "contrib"
projects[ux_elements][download][type] = "git"
projects[ux_elements][download][revision] = "87cdc5d"
projects[ux_elements][download][branch] = "master"
; PHP Fatal error: Cannot redeclare form_process_horizontal_tabs()
; http://drupal.org/node/1224568
projects[ux_elements][patch][1224568] = "http://drupal.org/files/issues/1224568-ux_elements_redeclare.patch"

projects[views][version] = "3.x-dev"
projects[views][type] = "module"
projects[views][subdir] = "contrib"
projects[views][download][type] = "git"
projects[views][download][revision] = "d7bc9f9"
projects[views][download][branch] = "7.x-3.x"

projects[views_autocomplete_filters][version] = 1.0-beta2
projects[views_autocomplete_filters][type] = "module"
projects[views_autocomplete_filters][subdir] = "contrib"

projects[views_field_view][version] = "1.x-dev"
projects[views_field_view][type] = "module"
projects[views_field_view][subdir] = "contrib"
projects[views_field_view][download][type] = "git"
projects[views_field_view][download][revision] = db93080
projects[views_field_view][download][branch] = "7.x-1.x"

projects[views_bulk_operations][version] = 3.2
projects[views_bulk_operations][type] = "module"
projects[views_bulk_operations][subdir] = "contrib"

projects[views_load_more][version] = 1.1
projects[views_load_more][type] = "module"
projects[views_load_more][subdir] = "contrib"

projects[webform][version] = 4.0-rc5
projects[webform][type] = "module"
projects[webform][subdir] = "contrib"

projects[workbench][version] = "1.x-dev"
projects[workbench][type] = "module"
projects[workbench][subdir] = "contrib"
projects[workbench][download][type] = "git"
projects[workbench][download][revision] = "6856e4a"
projects[workbench][download][branch] = "7.x-1.x"

projects[workbench_moderation][version] = "1.x-dev"
projects[workbench_moderation][type] = "module"
projects[workbench_moderation][subdir] = "contrib"
projects[workbench_moderation][download][type] = "git"
projects[workbench_moderation][download][revision] = "b38ac3e"
projects[workbench_moderation][download][branch] = "7.x-1.x"
; Panelizer is incompatible with moderation
; http://www.drupal.org/node/1402860
projects[workbench_moderation][patch][1402860] = http://drupal.org/files/issues/workbench_moderation-panelizer_revisions-1402860-44_0.patch

projects[workbench_moderation_buttons][version] = "1.x-dev"
projects[workbench_moderation_buttons][type] = "module"
projects[workbench_moderation_buttons][subdir] = "contrib"
projects[workbench_moderation_buttons][download][type] = "git"
projects[workbench_moderation_buttons][download][revision] = 5ee2a30
projects[workbench_moderation_buttons][download][branch] = "7.x-1.x"
; Remove Current State button, change Save button to show current state value
; http://drupal.org/node/2338863
projects[workbench_moderation_buttons][patch][2338863] = http://drupal.org/files/issues/workbench-moderation-buttons-2338863-4.patch

projects[workbench_moderation_notes][version] = "1.x-dev"
projects[workbench_moderation_notes][type] = "module"
projects[workbench_moderation_notes][subdir] = "contrib"
projects[workbench_moderation_notes][download][type] = "git"
projects[workbench_moderation_notes][download][revision] = "8e5e6f4"
projects[workbench_moderation_notes][download][branch] = "7.x-1.x"

projects[xautoload][version] = "4.5"
projects[xautoload][type] = "module"
projects[xautoload][subdir] = "contrib"

projects[linkit][version] = 3.3
projects[linkit][type] = module
projects[linkit][subdir] = contrib

projects[plupload][version] = 1.7
projects[plupload][type] = module
projects[plupload][subdir] = contrib

projects[file_entity][version] = 2.x-dev
projects[file_entity][type] = module
projects[file_entity][subdir] = contrib
projects[file_entity][download][type] = git
projects[file_entity][download][revision] = 609fa9f
projects[file_entity][download][branch] = 7.x-2.x
projects[file_entity][patch][1987568] = https://www.drupal.org/files/alt_title_double_encoding-1987568-7.patch

projects[content_menu][version] = 1.0
projects[content_menu][subdir] = contrib

projects[features_extra][version] = 1.0-beta1
projects[features_extra][subdir] = contrib

projects[fontawesome][version] = 1.0
projects[fontawesome][subdir] = contrib

projects[nodequeue][version] = 2.0-beta1
projects[nodequeue][subdir] = contrib

projects[strict404][revision] = a6747912389b4a7bb02ad9767b2b1585ce583afa
projects[strict404][subdir] = contrib

;projects[shunt][version] = 1.3
;projects[shunt][subdir] = contrib

projects[youtube][version] = 1.2
projects[youtube][type] = module
projects[youtube][subdir] = contrib

projects[twitter_pane][type] = module
projects[twitter_pane][download][type] = git
projects[twitter_pane][download][url] = git://git.drupal.org/sandbox/jaykali/2260089.git
projects[twitter_pane][download][revision] = d157902b1e6278e1f95e418cba9dcd3862ccc464

projects[views_arg_cache][version] = 1.0-beta3
projects[views_arg_cache][subdir] = contrib

projects[menu_attributes][version] = 1.x-dev
projects[menu_attributes][type] = module
projects[menu_attributes][subdir] = contrib
projects[menu_attributes][download][type] = git
projects[menu_attributes][download][revision] = eb17163
projects[menu_attributes][download][branch] = 7.x-1.x

projects[pathauto_persist][version] = 1.3
projects[pathauto_persist][subdir] = contrib

projects[menu_block][version] = 2.4
projects[menu_block][subdir] = contrib

projects[pm_existing_pages][version] = 1.4
projects[pm_existing_pages][type] = module
projects[pm_existing_pages][subdir] = contrib

projects[imce][version] = 1.9
projects[imce][subdir] = contrib

projects[imce_mkdir][version] = 1.0
projects[imce_mkdir][subdir] = contrib

projects[imce_uploader][version] = 1.3
projects[imce_uploader][subdir] = contrib

projects[filefield_sources][version] = 1.9
projects[filefield_sources][subdir] = contrib

projects[colorfield][version] = 1.1
projects[colorfield][subdir] = contrib

projects[special_menu_items][version] = 2.0
projects[special_menu_items][subdir] = contrib

projects[scheduler][version] = 1.2
projects[scheduler][subdir] = contrib

projects[webform_ajax][version] = 1.x-dev
projects[webform_ajax][type] = module
projects[webform_ajax][subdir] = contrib
projects[webform_ajax][download][type] = git
projects[webform_ajax][download][revision] = e353f19
projects[webform_ajax][download][branch] = 7.x-1.x

; Menu Position
;
; This patch refreshes the menu so that the current page shows up in the breadcrumbs.
;
projects[menu_position][version] = 1.1
projects[menu_position][subdir] = contrib
projects[menu_position][patch][1461384] = https://www.drupal.org/files/menu_position-special_menu_items-1461384-16.patch

projects[clientside_validation][version] = 1.41
projects[clientside_validation][subdir] = contrib

; "Tweet Server" Integration for Shareable Tweet
; ----------------------------------------------
projects[netstorage][type] = module
projects[netstorage][download][branch] = 7.x-1.x
projects[netstorage][download][tag] = 7.x-1.0-rc1
projects[netstorage][subdir] = contrib

projects[twitterapi][type] = module
projects[twitterapi][download][type] = git
projects[twitterapi][download][branch] = 7.x-1.x
projects[twitterapi][download][revision] = 1104ee5
projects[twitterapi][subdir] = contrib

projects[tweetfetch][type] = module
projects[tweetfetch][download][type] = git
projects[tweetfetch][download][url] = https://github.com/whitehouse/tweetfetch.git
projects[tweetfetch][download][revision] = 8337aeb296a9e713c3825a6d8638354af892ba8f
projects[tweetfetch][subdir] = contrib

projects[expire][version] = 2.0-rc3

projects[memcache][version] = 1.2

projects[google_analytics][version] = 1.2

projects[usfedgov_google_analytics][version] = 1.0-rc1

projects[akamai][version] = 2.2

projects[static][version] = 1.x-dev
projects[static][type] = module
projects[static][subdir] = contrib
projects[static][download][type] = git
projects[static][download][revision] = bc9257b
projects[static][download][branch] = 7.x-1.x
projects[static][patch][2401269] = https://www.drupal.org/files/issues/static-http-host-2401269_0.patch
