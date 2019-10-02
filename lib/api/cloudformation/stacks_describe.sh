######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stacks_describe()
#
#>
######################################################################
p6_aws_cloudformation_stacks_describe() {

    p6_run_read_cmd aws cloudformation describe-stacks "$@"
}