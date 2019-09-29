######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stacks_list()
#
#
#
#>
######################################################################
p6_aws_cloudformation_stacks_list() {

    p6_run_read_cmd aws cloudformation list-stacks "$@"
}