# Sparklehood-Devops-Intern-Assignment

## Overview
This repository contains Part-A of the Assignment i.e Infrastructure as Code (Terraform on LocalStack) consisting of one reusable network module and other standalone resources.
## How to run locally .
1.git clone 

2.cd terraform

3.terraform init

4.terraform plan

5.terraform apply -auto-approve

Note: Localstack has to run on your local machine on port 4566 to get all terraform commands executed successfully.

## Architecture — one diagram (PNG, SVG, or ASCII). 
## Decisions & deviations — bulleted list, one line each . 
a.Deviated from adding inbound rule to port 22 from anywhere as it pose security threats and variabilized its value to a configurable cidr.
## Trade-offs — what you would do with one more week. 
1.Since I did'nt find time to complete the whole assignment. I request you to provide me some time to complete the whole assignment if you liked this work of my Part-A
## AI usage disclosure.
1.To be honest, I used AI for troubleshooting Localstack issues during startup of the container and for terraform I've gone through the documentation.