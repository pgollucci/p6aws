######################################################################
#<
#
# Function:
#	p6_aws_iot_mitigation_action_delete(action_name)
#
#  Args:
#	action_name - 
#
#>
######################################################################
p6_aws_iot_mitigation_action_delete() {
    local action_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-mitigation-action --action-name $action_name "$@"
}