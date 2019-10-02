######################################################################
#<
#
# Function:
#	p6_aws_lightsail_instance_port_states_get(instance_name)
#
#  Args:
#	instance_name - 
#
#>
######################################################################
p6_aws_lightsail_instance_port_states_get() {
    local instance_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-instance-port-states --instance-name $instance_name "$@"
}