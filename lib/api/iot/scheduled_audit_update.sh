######################################################################
#<
#
# Function:
#      = p6_aws_iot_scheduled_audit_update(scheduled_audit_name)
#
# Arg(s):
#    scheduled_audit_name - 
#
#
#>
######################################################################
p6_aws_iot_scheduled_audit_update() {
    local scheduled_audit_name="$1"
    shift 1

    p6_run_write_cmd aws iot update-scheduled-audit --scheduled-audit-name $scheduled_audit_name "$@"
}