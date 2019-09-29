######################################################################
#<
#
# Function:
#      = p6_aws_worklink_audit_stream_configuration_describe(fleet_arn)
#
# Arg(s):
#    fleet_arn - 
#
#
#>
######################################################################
p6_aws_worklink_audit_stream_configuration_describe() {
    local fleet_arn="$1"
    shift 1

    p6_run_read_cmd aws worklink describe-audit-stream-configuration --fleet-arn $fleet_arn "$@"
}