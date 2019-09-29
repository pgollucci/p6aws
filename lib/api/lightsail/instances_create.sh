######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_instances_create(instance_names, availability_zone, blueprint_id, bundle_id)
#
# Arg(s):
#    instance_names - 
#    availability_zone - 
#    blueprint_id - 
#    bundle_id - 
#
#
#>
######################################################################
p6_aws_lightsail_instances_create() {
    local instance_names="$1"
    local availability_zone="$2"
    local blueprint_id="$3"
    local bundle_id="$4"
    shift 4

    p6_run_write_cmd aws lightsail create-instances --instance-names $instance_names --availability-zone $availability_zone --blueprint-id $blueprint_id --bundle-id $bundle_id "$@"
}