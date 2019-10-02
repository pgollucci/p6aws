######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_resources_describe()
#
#>
######################################################################
p6_aws_cloudformation_stack_resources_describe() {

    p6_run_read_cmd aws cloudformation describe-stack-resources "$@"
}