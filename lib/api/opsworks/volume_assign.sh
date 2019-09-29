######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_volume_assign(volume_id)
#
# Arg(s):
#    volume_id - 
#
#
#>
######################################################################
p6_aws_opsworks_volume_assign() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks assign-volume --volume-id $volume_id "$@"
}