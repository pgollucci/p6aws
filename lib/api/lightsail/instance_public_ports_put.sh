######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_instance_public_ports_put(port_infos, instance_name)
#
# Arg(s):
#    port_infos - 
#    instance_name - 
#
#
#>
######################################################################
p6_aws_lightsail_instance_public_ports_put() {
    local port_infos="$1"
    local instance_name="$2"
    shift 2

    p6_run_write_cmd aws lightsail put-instance-public-ports --port-infos $port_infos --instance-name $instance_name "$@"
}