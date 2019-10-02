######################################################################
#<
#
# Function:
#	p6_aws_ec2_reserved_instances_exchange_quote_get(reserved_instance_ids)
#
#  Args:
#	reserved_instance_ids - 
#
#>
######################################################################
p6_aws_ec2_reserved_instances_exchange_quote_get() {
    local reserved_instance_ids="$1"
    shift 1

    p6_run_read_cmd aws ec2 get-reserved-instances-exchange-quote --reserved-instance-ids $reserved_instance_ids "$@"
}