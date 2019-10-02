######################################################################
#<
#
# Function:
#	p6_aws_ssm_command_invocations_list()
#
#>
######################################################################
p6_aws_ssm_command_invocations_list() {

    p6_run_read_cmd aws ssm list-command-invocations "$@"
}