######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_instance_public_ports_open(port_info, instance_name)
#
# Arg(s):
#    port_info - 
#    instance_name - 
#
#
#>
######################################################################
p6_aws_lightsail_instance_public_ports_open() {
    local port_info="$1"
    local instance_name="$2"
    shift 2

    p6_run_write_cmd aws lightsail open-instance-public-ports --port-info $port_info --instance-name $instance_name "$@"
}