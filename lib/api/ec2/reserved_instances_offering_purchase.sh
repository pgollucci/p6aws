######################################################################
#<
#
# Function:
#	p6_aws_ec2_reserved_instances_offering_purchase(instance_count, reserved_instances_offering_id)
#
#  Args:
#	instance_count - 
#	reserved_instances_offering_id - 
#
#>
######################################################################
p6_aws_ec2_reserved_instances_offering_purchase() {
    local instance_count="$1"
    local reserved_instances_offering_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 purchase-reserved-instances-offering --instance-count $instance_count --reserved-instances-offering-id $reserved_instances_offering_id "$@"
}