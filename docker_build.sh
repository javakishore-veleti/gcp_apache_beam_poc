export GOOGLE_APPLICATION_CREDENTIALS=/Users/arunakishoreveleti/kishore/office/runtime_data/cloud/gcp/javakishore-gcp-project-01-b65b6fe798dc.json

# gcloud auth activate-service-account --key-file=/Users/arunakishoreveleti/kishore/office/runtime_data/cloud/gcp/javakishore-gcp-project-01-b65b6fe798dc.json
# https://cloud.google.com/container-registry/docs/advanced-authentication#gcloud-helper
# gcloud auth configure-docker

export PROJECT=javakishore-gcp-project-01
export REGION=us-central1

export TAG=jkgcppoctag
export REGISTRY_HOST=gcr.io
export REPO=jkgcppocrepo
export IMAGE_URI=$REGISTRY_HOST/$PROJECT/$REPO:$TAG

docker build -f Dockerfile -t $IMAGE_URI ./
docker push $IMAGE_URI