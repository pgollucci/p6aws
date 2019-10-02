######################################################################
#<
#
# Function:
#	p6_aws_ec2_scheduled_instances_run(launch_specification, scheduled_instance_id)
#
#  Args:
#	launch_specification - 
#	scheduled_instance_id - 
#
#>
######################################################################
p6_aws_ec2_scheduled_instances_run() {
    local launch_specification="$1"
    local scheduled_instance_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 run-scheduled-instances --launch-specification $launch_specification --scheduled-instance-id $scheduled_instance_id "$@"
}