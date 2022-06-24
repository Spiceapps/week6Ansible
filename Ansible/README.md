<!-- BEGIN_TF_DOCS -->
The Playbook does the following tasks to install the webapp: 
1. Update ubuntu repos 
2. Clone a github repository 
3. initialize the app 
4. install package dependencies 
5. Run a script to install nodejs 14 
6. deploy .env to target hosts with vars 
7. send weightapp.service to target hosts systemd 
8. Make sure a service unit is running


<!-- END_TF_DOCS -->