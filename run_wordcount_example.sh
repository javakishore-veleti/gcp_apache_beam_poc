
export GOOGLE_APPLICATION_CREDENTIALS=/Users/arunakishoreveleti/kishore/office/runtime_data/cloud/gcp/javakishore-gcp-project-01-3185464c15be.json

export PROJECT=javakishore-gcp-project-01
export BUCKET=gcp-apache-beam-poc-kv-20210415
export REGION=us-central1


python3 -m apache_beam.examples.wordcount \
  --region $REGION \
  --input gs://dataflow-samples/shakespeare/kinglear.txt \
  --output gs://$BUCKET/results/outputs \
  --runner DataflowRunner \
  --project $PROJECT \
  --temp_location gs://$BUCKET/tmp/