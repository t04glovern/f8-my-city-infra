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
