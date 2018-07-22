#! sh

aws cloudformation package \
    --template-file pipeline.yaml \
    --output-template-file pipeline-out.yaml \
    --s3-bucket medadvisor-helloworld-sample-pipeline

aws cloudformation deploy \
    --template-file pipeline-out.yaml \
    --stack-name first-sam-pipeline-CICD-Pipeline \
    --capabilities CAPABILITY_IAM

