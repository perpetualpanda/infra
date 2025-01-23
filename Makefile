.PHONY: init format dryrun deploy

init:
	terraform -chdir=./terraform init

format:
	terraform fmt --recursive ./terraform

dryrun:
	terraform -chdir=./terraform plan

deploy:
	terraform -chdir=./terraform apply
