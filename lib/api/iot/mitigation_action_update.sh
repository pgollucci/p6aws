######################################################################
#<
#
# Function:
#	p6_aws_iot_mitigation_action_update(action_name)
#
#  Args:
#	action_name - 
#
#>
######################################################################
p6_aws_iot_mitigation_action_update() {
    local action_name="$1"
    shift 1

    p6_run_write_cmd aws iot update-mitigation-action --action-name $action_name "$@"
}