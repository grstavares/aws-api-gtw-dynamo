#!/bin/bash
aws cloudformation package --template-file resources.yaml --s3-bucket ${bucket} --output-template-file ./build/resources-generated.yaml
aws cloudformation deploy --template-file ./build/resources-generated.yaml --stack-name ${stackname} --capabilities CAPABILITY_AUTO_EXPAND CAPABILITY_IAM

echo ''
echo 'Test URL:'
aws cloudformation describe-stacks --stack ${stackname} --query "Stacks[0].Outputs[?OutputKey=='Url'].OutputValue" --output text