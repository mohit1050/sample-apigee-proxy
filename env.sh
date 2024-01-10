export PROJECT="<GCP_PROJECT_ID>"
export APIGEE_HOST="<APIGEE_DOMAIN_NAME/[LoadBalancerIP.nip.io]>"
export APIGEE_ENV="<APIGEE_ENVIRONMENT_NAME>"
PROJECT_NUMBER="$(gcloud projects describe $PROJECT --format="value(projectNumber)")"
export PROJECT_NUMBER
export CLOUD_BUILD_SA="$PROJECT_NUMBER@cloudbuild.gserviceaccount.com"

gcloud config set project $PROJECT
