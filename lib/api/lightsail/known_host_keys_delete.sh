######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_known_host_keys_delete(instance_name)
#
# Arg(s):
#    instance_name - 
#
#
#>
######################################################################
p6_aws_lightsail_known_host_keys_delete() {
    local instance_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-known-host-keys --instance-name $instance_name "$@"
}