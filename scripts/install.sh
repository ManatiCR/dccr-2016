#!/usr/bin/env bash
DRUSH="./vendor/bin/drush"
SITE_ALIAS="@dccr-2016.dccr-2016.dev"
$DRUSH $SITE_ALIAS cc drush
echo "Installing..."
$DRUSH $SITE_ALIAS si dccr_2016 --account-pass=admin -y
#echo "Setting master scope..."
#$DRUSH $SITE_ALIAS master-set-current-scope local
#echo "Executing master..."
#$DRUSH $SITE_ALIAS master-execute -y
echo "Cleaning cache..."
$DRUSH $SITE_ALIAS cr
