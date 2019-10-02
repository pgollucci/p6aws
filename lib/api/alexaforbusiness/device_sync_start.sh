######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_device_sync_start(features)
#
#  Args:
#	features - 
#
#>
######################################################################
p6_aws_alexaforbusiness_device_sync_start() {
    local features="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness start-device-sync --features $features "$@"
}