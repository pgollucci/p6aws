######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_instance_snapshot_delete(instance_snapshot_name)
#
# Arg(s):
#    instance_snapshot_name - 
#
#
#>
######################################################################
p6_aws_lightsail_instance_snapshot_delete() {
    local instance_snapshot_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-instance-snapshot --instance-snapshot-name $instance_snapshot_name "$@"
}