p6_aws_cdk_prompt_info() {

    if ! p6_string_blank "$CDK_DEFAULT_ACCOUNT"; then
      echo "CDK: [CDA=$CDK_DEFAULT_ACCOUNT] [CDR=$CDK_DEFAULT_REGION]"
    fi    
}