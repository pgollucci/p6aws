######################################################################
#<
#
# Function:
#	p6_aws_opsworks_volume_deregister(volume_id)
#
#  Args:
#	volume_id - 
#
#>
######################################################################
p6_aws_opsworks_volume_deregister() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks deregister-volume --volume-id $volume_id "$@"
}