#!/bin/bash

# Jenkins Configuraitons Directory
cd $JENKINS_HOME

# Add general configurations, job configurations, and user content
git add *.xml jobs/*/*.xml users/*/config.xml userContent/*

# mark as deleted anything that's been, well, deleted
git rm `git status | grep "deleted" | awk '{print $3}'`

git commit -m "Automated Jenkins commit"

git push -q

