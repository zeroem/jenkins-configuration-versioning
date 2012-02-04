# Setup
1. Create a new Jenkins Job
- Mark "None" for Source Control Management
- Select the "Build Periodically" build trigger
  - configure to run as frequently as you like
- Add a new "Execute Shell" build step
  - Paste the contents of jenkins_scm.sh as the command
- Save
 
 NOTE: before this job will work, you'll need to manually navigate to the $JENKINS_HOME directory and do the initial set up of the git repository.  Make sure the appropriate remote is added and the default remote/branch set up.
