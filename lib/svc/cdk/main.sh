p6_aws_cdk_prompt_info() {

    local str
    if ! p6_string_blank "$CDK_DEPLOY_ACCOUNT"; then
      str=$(p6_string_append "$str" "AWS CDK: DEPLOY - [CDA=$CDK_DEPLOY_ACCOUNT] [CDR=$CDK_DEPLOY_REGION]")
    fi
    if ! p6_string_blank "$CDK_DEFAULT_ACCOUNT"; then
      str=$(p6_string_append "$str" "AWS CDK: DEFAULT - [CDA=$CDK_DEFAULT_ACCOUNT] [CDR=$CDK_DEFAULT_REGION]")
    fi

    if p6_string_blank "$str"; then
	p6_return_void
    else
	p6_return_str "$str"
    fi
}
