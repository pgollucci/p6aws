######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_static_ip_attach(static_ip_name, instance_name)
#
# Arg(s):
#    static_ip_name - 
#    instance_name - 
#
#
#>
######################################################################
p6_aws_lightsail_static_ip_attach() {
    local static_ip_name="$1"
    local instance_name="$2"
    shift 2

    p6_run_write_cmd aws lightsail attach-static-ip --static-ip-name $static_ip_name --instance-name $instance_name "$@"
}