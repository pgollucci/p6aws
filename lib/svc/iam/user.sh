######################################################################
#<
#
# Function: p6_aws_iam_svc_users_list()
#
#>
######################################################################
p6_aws_iam_svc_users_list() {

    p6_aws_cmd iam list-users \
	       --output text \
	       --query "'Users[].[UserId,UserName,Arn]'"
}