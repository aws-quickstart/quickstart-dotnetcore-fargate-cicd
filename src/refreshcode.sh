#!/bin/bash
zip -r fargate-cicd.zip . -x ./build/\* ./.vs\* ./bin/\* ./obj/\* *.sh *.ps1
aws --profile=dotnetquickstarts s3 cp --acl public-read fargate-cicd.zip s3://dotnet-quickstarts/source/
aws --profile=dotnetquickstarts s3 cp --acl public-read ../cfn/fargate-cicd.yml s3://dotnet-quickstarts/cloudformation/
