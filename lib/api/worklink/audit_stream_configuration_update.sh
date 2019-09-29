######################################################################
#<
#
# Function:
#      = p6_aws_worklink_audit_stream_configuration_update(fleet_arn)
#
# Arg(s):
#    fleet_arn - 
#
#
#>
######################################################################
p6_aws_worklink_audit_stream_configuration_update() {
    local fleet_arn="$1"
    shift 1

    p6_run_write_cmd aws worklink update-audit-stream-configuration --fleet-arn $fleet_arn "$@"
}