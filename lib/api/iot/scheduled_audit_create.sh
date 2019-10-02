######################################################################
#<
#
# Function:
#	p6_aws_iot_scheduled_audit_create(frequency, target_check_names, scheduled_audit_name)
#
#  Args:
#	frequency - 
#	target_check_names - 
#	scheduled_audit_name - 
#
#>
######################################################################
p6_aws_iot_scheduled_audit_create() {
    local frequency="$1"
    local target_check_names="$2"
    local scheduled_audit_name="$3"
    shift 3

    p6_run_write_cmd aws iot create-scheduled-audit --frequency $frequency --target-check-names $target_check_names --scheduled-audit-name $scheduled_audit_name "$@"
}