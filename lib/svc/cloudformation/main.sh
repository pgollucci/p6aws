######################################################################
#<
#
# Function: p6_aws_cloudformation_svc_list()
#
#>
######################################################################
p6_aws_cloudformation_svc_list() {

    p6_aws_cmd cloudformation describe-stacks \
	       --output text \
	       --query "'Stacks[*].[CreationTime, StackStatus, StackName]'" | \
	sort -k 1,1 -n
}