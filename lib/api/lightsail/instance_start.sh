######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_instance_start(instance_name)
#
# Arg(s):
#    instance_name - 
#
#
#>
######################################################################
p6_aws_lightsail_instance_start() {
    local instance_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail start-instance --instance-name $instance_name "$@"
}