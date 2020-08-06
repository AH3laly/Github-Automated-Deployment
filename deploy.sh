#!/bin/bash
# Shell Script to Deploy Staging Repo.
# By github/AH3laly AH3laly@gmail.com


git_user=Github_User
git_email=Github_email@example.com
repo_url="https://$git_user@github.com/myrepo/myproject.git"
default_permissions=755
default_owner=www-data
default_group=www-data

static_files_path=/var/www/static
versions_path=/var/www/versions
deployment_path=/var/www/$version_name
symbolic_link_path=/var/www/current


version_name=$(echo `date +%Y%m%d%H%M%S`)
git clone $repo_url $deployment_path
chown $default_owner:$default_group $deployment_path -R
chmod $default_permissions $deployment_path -R


cp -f -r $static_files_path/* $deployment_path/
cp -f -r $static_files_path/*.* $deployment_path/
cp -f -r $static_files_path/.* $deployment_path/


