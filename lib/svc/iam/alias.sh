######################################################################
#<
#
# Function: p6_aws_svc_iam_account_alias()
#
#>
######################################################################
p6_aws_svc_iam_account_alias() {

  p6_aws_cli_cmd iam list-account-aliases --output text --query "AccountAliases[]"   
}
