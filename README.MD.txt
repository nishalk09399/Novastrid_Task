                                                        TASK -1 

Deliverables:

 - A shell script (`backup.sh`) with all the required functionalities.

 - A README file explaining:

  - How to run the script.

   ****** sudo sh backup.sh command

  - How the backup process works

   ****** 1. backup works to take the crucial file backup before doing any activity 
        2. first priority should be take the proper backup of file 
        before going to perform any tasks in prod environment and save it in safe directory
        

  - How to set up the cron job (if applicable).

  
        Install first crontab software 
        crontab -e open this file and keep cron syntax as (* * * * *) /my/script/backupscript.sh

        Minutes
        Hours
        DayOfMonth 
        Month
        DayOfWeek

        (0 /*2 0 0 0 )  --> This script will run every day at 2.00am midnight 

                                                      TASK-2

Deliverables:

- A `Dockerfile` that creates the image for the web application.

- A `README.md` file with:

  - Instructions on how to build and run the Docker container.

    For Nginx use : 

    Build and run commands 

        docker build -t myapp:v1 .

        docker run -d -p 8080:80 --name myapp <imageid>

    For Nodejs use: 

    Build and run commands

        docker build -t myapp:v1 .

        docker run -d -p 8080:8080 --name myapp <imageid>

  - Example commands to build (`docker build -t app-name .`) and run (`docker run -p 8080:8080 app-name`).

  In the process of build stage your application is going to create like a image and it download the required dependencies 
  which is need to run your application 

  In the process of run your image is going to run as a container at this time it is less in weight like however we installed 
  required packages to run the containers, in one single VM we can run no.of containers. it will use the host kernel so, that
  it is less in weight


                                                      TASK-3

Deliverables:

- A GitHub repository with the Terraform code and Prometheus configuration files.

- A README file with instructions on how to run the Terraform commands to provision the infrastructure and set up Prometheus monitoring.

To run the terraform files: 
    terraform init  - To install the required plugin and setup the cloud provider plugins and setup backend to store the statefile
    terraform validate - To check the terraform configuration files before plan just validating syntax
    terraform plan - Preview the changs which you made before applying them 
    terraform apply - To provision the infra in desired cloud provider
    terraform destroy - To destroy the resources once the requirement is done 

- A working Prometheus dashboard or example metrics.

Install the prometheus sever in server with refer prometheus official documentation and take the public ip of server (port 9000)
paste over in browser to open the prometheus dashboard

Now go to the dashboard prometheus serach engine type UP you will get default metrics from the time series database (which will store all metrics)


 In the prometheus server we have a prometheus.yaml file and we need to edit that file to scrape our required targer server metrics

	static_scraping : 
		job_name: "ec2_scrapping"
		target: "[ipaddress:port]"

you need to install the node exporter in the target machine to monitor the metrics of the targeted server, the prometheus server
will everytime get the metrics from the node exporter installed server and it will be store the TSDB and you can filter that in prometheus search engine


--> Installing grafana for better visualization

For the better graph visualization we can install the grafana and we can integrate our prometheus with grafana

Open grafana --> settings --> add data sources --> select prometheus --> give prometheus url (ip:port) --> do some config --> save

Now start visualization of your metrics using grafana.





