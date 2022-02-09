Deployment instructions:
1. Please run the git clone command (git clone https://github.com/ipluaws/ovalhr1.git)
2. Once clonning of the git repository has been completed, navigate to the repo.  
For terraform deployment of 3-tier sample web application, two environments has been created name 'dev' and 'prod'
proxy, db and backend - these 3 folders are for 3-tier web application containing dockerfile to run each one as a docker container
Kubernetes folder is containing all required .yamls to deploy the solution to Kubernetes 

3. Depends on your environment browse the directory (P.S: Please change the values in variables.tf file according to your requirements)
E.g: cd/ovalhr1/prod
- Run terraform init to initialize 
- Run terraform plan
- Run terraform Apply
- After running terraform apply command, please give couple of minutes then copy the 'ec2-public-ip' address from Outputs and paste into your browser

In the shell script 'docker_install.sh', I have provided all required commands to run the complete stack at one go.
Since horizontal scaling is one of the main requirements, to scale up the service simply execute the following command:
- sudo docker service scale devdemo_proxy=2 (change the number '2' as per requirements) 

- To check if the service scaled up as per the value provided:
Please execute:
$sudo docker service ls

ID             NAME               MODE         REPLICAS   IMAGE                      PORTS
q2a2sjwa3ecj   proddemo_backend   replicated   1/1        iplusaha25/python:latest   *:5000->5000/tcp
35nv1yjtpbz5   proddemo_db        replicated   1/1        mysql:8.0.19               *:3306->3306/tcp
j1wl86v0b79l   proddemo_proxy     replicated   2/2        iplusaha25/nginx:latest    *:80->80/tcp

4. To destroy the whole infrastructure please run:
- terraform destroy
