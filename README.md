# Requirements

- You need Terraform installed
- Git clone this project
- You need to create a GCP account
- Install Gcloud CLI :\
  https://cloud.google.com/sdk/docs/install
- Inside that account create a project and write down its id,\
   We will refer this with **[GCP-PROJECT-ID]**
- Inside root start with the following **command** :
  ```bash
  $ gcloud init
  ```
- Then you can start binding your gcloud project to this project :
  ```bash
  $ gcloud config set project [GCP-PROJECT-ID]
  ```
- And finally we will enable services using the following command :

  ```bash
  $ gcloud services enable cloudfunctions.googleapis.com run.googleapis.com bigquery.googleapis.com compute.googleapis.com cloudfunctions.googleapis.com artifactregistry.googleapis.com cloudbuild.googleapis.com iam.googleapis.com
  ```

# Project Initialisation

- First run this command to generate a gcp login file to use withtin the project (the file routing is already done, it's inside the provider file) :
  ```bash
  $ gcloud auth application-default login
  ```
- Then copy the **sensitives.auto.tfvars** from the dev folder into the root and modify with your own values.
- Once everything is setup correctly using the GCP values, do the following command to start using Terraform
  ```bash
  $ terraform init
  $ terraform apply
  OR
  $ terraform apply --auto-approve
  ```
