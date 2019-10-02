######################################################################
#<
#
# Function:
#	p6_aws_ec2_instances_terminate(instance_ids)
#
#  Args:
#	instance_ids - 
#
#>
######################################################################
p6_aws_ec2_instances_terminate() {
    local instance_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 terminate-instances --instance-ids $instance_ids "$@"
}