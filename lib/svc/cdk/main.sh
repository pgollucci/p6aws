p6_aws_cdk_prompt_info() {

    local str
    if ! p6_string_blank "$CDK_DEFAULT_ACCOUNT"; then
      str="CDK: [CDA=$CDK_DEFAULT_ACCOUNT] [CDR=$CDK_DEFAULT_REGION]"
    fi    

    p6_return_str "$str"
}
