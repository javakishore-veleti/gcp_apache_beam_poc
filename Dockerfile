FROM apache/beam_python3.8_sdk:2.25.0

WORKDIR /app

COPY . $WORKDIR/

# CMD python3  --runner=PortableRunner --job_endpoint=embed --environment_type=DOCKER   app.py