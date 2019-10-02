######################################################################
#<
#
# Function:
#	p6_aws_ec2_hosts_allocate(availability_zone, instance_type, quantity)
#
#  Args:
#	availability_zone - 
#	instance_type - 
#	quantity - 
#
#>
######################################################################
p6_aws_ec2_hosts_allocate() {
    local availability_zone="$1"
    local instance_type="$2"
    local quantity="$3"
    shift 3

    p6_run_write_cmd aws ec2 allocate-hosts --availability-zone $availability_zone --instance-type $instance_type --quantity $quantity "$@"
}