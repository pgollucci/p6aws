######################################################################
#<
#
# Function: p6_aws_svc_cloudformation_list()
#
#>
######################################################################
p6_aws_svc_cloudformation_list() {

	p6_aws_cli_cmd cloudformation describe-stacks \
		--output text \
		--query "'Stacks[*].[CreationTime, StackStatus, StackName]'" |
		sort -k 1,1 -n
}
