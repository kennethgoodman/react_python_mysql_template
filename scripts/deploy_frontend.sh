#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "1 argument needed, usage: ./deploy_frontend s3_bucket_name. \
The s3_bucket will be used to store the compiled frontend"
fi
cd services/client || exit
export REACT_APP_API_SERVICE_URL=/api
npm run build
aws s3 sync build/ "$1"
