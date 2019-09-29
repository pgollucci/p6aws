######################################################################
#<
#
# Function:
#      = p6_aws_worklink_device_describe(fleet_arn, device_id)
#
# Arg(s):
#    fleet_arn - 
#    device_id - 
#
#
#>
######################################################################
p6_aws_worklink_device_describe() {
    local fleet_arn="$1"
    local device_id="$2"
    shift 2

    p6_run_read_cmd aws worklink describe-device --fleet-arn $fleet_arn --device-id $device_id "$@"
}