######################################################################
#<
#
# Function: p6_aws_svc_iam_users_list()
#
#>
######################################################################
p6_aws_svc_iam_users_list() {

    p6_aws_cmd iam list-users \
	       --output text \
	       --query "'Users[].[UserId,UserName,Arn]'"
}