#!/bin/bash

# Jenkins Configuraitons Directory
cd $JENKINS_HOME

# Add general configurations, job configurations, and user content
git add -- *.xml jobs/*/*.xml userContent/*

# only add user configurations if they exist
if [ -d users ]; then
    user_configs=`ls users/*/config.xml`

    if [ -n "$user_configs" ]; then
        git add $user_configs
    fi
fi

# mark as deleted anything that's been, well, deleted
to_remove=`git status | grep "deleted" | awk '{print $3}'`

if [ -n "$to_remove" ]; then
    git rm --ignore-unmatch $to_remove
fi

git commit -m "Automated Jenkins commit"

git push -q
