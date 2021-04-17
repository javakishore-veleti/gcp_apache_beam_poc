# python -m apache_beam.examples.wordcount \
#   --input=INPUT_FILE \
#   --output=OUTPUT_FILE \
#   --runner=PortableRunner \
#   --job_endpoint=embed \
#   --environment_type=DOCKER \
#   --environment_config=$IMAGE_URI

export GOOGLE_APPLICATION_CREDENTIALS=/Users/arunakishoreveleti/kishore/office/runtime_data/cloud/gcp/javakishore-gcp-project-01-b65b6fe798dc.json
export PROJECT=javakishore-gcp-project-01
export REGION=us-central1

export TAG=jkgcppoctag
export REGISTRY_HOST=gcr.io
export REPO=jkgcppocrepo
export IMAGE_URI=$REGISTRY_HOST/$PROJECT/$REPO:$TAG

export INPUT_FILE="kinglear.txt"
export OUTPUT_FILE=/app/output_1.txt
python app.py \
  --input=$INPUT_FILE \
  --output=$OUTPUT_FILE \
  --runner=PortableRunner \
  --job_endpoint=embed \
  --environment_type=DOCKER \
  --environment_config=$IMAGE_URI


