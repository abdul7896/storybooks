# Makefile for devops-directive-traversy project

# Variables (override at runtime: make create-tf-backend-bucket PROJECT_ID=your-project)
PROJECT_ID = mystical-moon-490820-m2

# ------------------------
# PHONY targets (not actual files)
.PHONY: run-local create-tf-backend-bucket

# ------------------------
# Run the application locally
run-local:
	docker-compose up

# ------------------------
# Create Terraform backend bucket in GCP
create-tf-backend-bucket:
	gcloud storage buckets create gs://$(PROJECT_ID)-terraform --project=$(PROJECT_ID)
