######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_instances_from_snapshot_create(instance_names, availability_zone, instance_snapshot_name, bundle_id)
#
# Arg(s):
#    instance_names - 
#    availability_zone - 
#    instance_snapshot_name - 
#    bundle_id - 
#
#
#>
######################################################################
p6_aws_lightsail_instances_from_snapshot_create() {
    local instance_names="$1"
    local availability_zone="$2"
    local instance_snapshot_name="$3"
    local bundle_id="$4"
    shift 4

    p6_run_write_cmd aws lightsail create-instances-from-snapshot --instance-names $instance_names --availability-zone $availability_zone --instance-snapshot-name $instance_snapshot_name --bundle-id $bundle_id "$@"
}