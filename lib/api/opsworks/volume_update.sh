######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_volume_update(volume_id)
#
# Arg(s):
#    volume_id - 
#
#
#>
######################################################################
p6_aws_opsworks_volume_update() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks update-volume --volume-id $volume_id "$@"
}