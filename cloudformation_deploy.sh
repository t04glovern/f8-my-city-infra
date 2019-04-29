#!/bin/sh

BUCKET_NAME=fbhack2019

## Creates S3 bucket
aws s3 mb s3://$BUCKET_NAME

## S3 cloudformation deployments
### Base
aws s3 cp cloudformation/base/fargate-cluster.yaml s3://$BUCKET_NAME/resources/my-city/cloudformation/base/fargate-cluster.yaml
aws s3 cp cloudformation/base/fargate-service.yaml s3://$BUCKET_NAME/resources/my-city/cloudformation/base/fargate-service.yaml
aws s3 cp cloudformation/base/vpc-networking.yaml s3://$BUCKET_NAME/resources/my-city/cloudformation/base/vpc-networking.yaml
aws s3 cp cloudformation/base/elastic-domain.yaml s3://$BUCKET_NAME/resources/my-city/cloudformation/base/elastic-domain.yaml
