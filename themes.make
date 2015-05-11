#
# A separate make file for themes
#

core = 7.x
api = 2


projects[ember][version] = 2.x-dev
projects[ember][type] = theme
projects[ember][subdir] = contrib
projects[ember][download][type] = git
projects[ember][download][branch] = 7.x-2.x
projects[ember][download][revision] = d916be4
projects[ember][patch][] = "https://www.drupal.org/files/issues/2416125-4-untargeted-selector--dev.patch"

projects[zen][type] = theme
projects[zen][download][type] = git
projects[zen][download][branch] = 7.x-5.5