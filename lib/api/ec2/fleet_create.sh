######################################################################
#<
#
# Function:
#	p6_aws_ec2_fleet_create(launch_template_configs, target_capacity_specification)
#
#  Args:
#	launch_template_configs - 
#	target_capacity_specification - 
#
#>
######################################################################
p6_aws_ec2_fleet_create() {
    local launch_template_configs="$1"
    local target_capacity_specification="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-fleet --launch-template-configs $launch_template_configs --target-capacity-specification $target_capacity_specification "$@"
}