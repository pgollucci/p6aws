######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_sets_list()
#
#>
######################################################################
p6_aws_cloudformation_stack_sets_list() {

    p6_run_read_cmd aws cloudformation list-stack-sets "$@"
}