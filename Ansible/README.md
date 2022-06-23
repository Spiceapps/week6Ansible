<!-- BEGIN_TF_DOCS -->
The Playbook does the following tasks to install the webapp:
Update ubuntu repos
Clone a github repository
initialize the app
install package dependencies
Run a script to install nodejs 14
deploy .env to target hosts with vars
send weightapp.service to target hosts systemd
Make sure a service unit is running
<!-- END_TF_DOCS -->
