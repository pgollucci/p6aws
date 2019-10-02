######################################################################
#<
#
# Function:
#	p6_aws_ssm_parameters_delete(names)
#
#  Args:
#	names - 
#
#>
######################################################################
p6_aws_ssm_parameters_delete() {
    local names="$1"
    shift 1

    p6_run_write_cmd aws ssm delete-parameters --names $names "$@"
}