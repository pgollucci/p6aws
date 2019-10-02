######################################################################
#<
#
# Function:
#	p6_aws_ssm_activation_delete(activation_id)
#
#  Args:
#	activation_id - 
#
#>
######################################################################
p6_aws_ssm_activation_delete() {
    local activation_id="$1"
    shift 1

    p6_run_write_cmd aws ssm delete-activation --activation-id $activation_id "$@"
}