# Infrastructure

## Deploy Stack

Deploy templates for S3 access

```bash
./cloudformation_deploy.sh
```

Deploy containers

```bash
aws cloudformation create-stack \
    --stack-name "my-city" \
    --template-body file://cloudformation/deployment.yaml \
    --parameters file://cloudformation/deployment-params.json \
    --capabilities CAPABILITY_IAM \
    --region us-east-2
```

## Update Stack

```bash
aws cloudformation update-stack \
    --stack-name "my-city" \
    --template-body file://cloudformation/deployment.yaml \
    --parameters file://cloudformation/deployment-params.json \
    --capabilities CAPABILITY_IAM \
    --region us-east-2
```

## Import Data

```bash
npm install elasticdump -g
elasticdump \
    --input=311_data/311-mapping.json \
    --output=https://search-my-city-226l2pkgc5bzuuzvq6yvoaqtva.us-east-2.es.amazonaws.com/mycity \
    --insecure \
    --type=mapping

elasticdump \
    --input=311_data/311.json \
    --output=https://search-my-city-226l2pkgc5bzuuzvq6yvoaqtva.us-east-2.es.amazonaws.com/mycity \
    --insecure \
    --type=data
```
