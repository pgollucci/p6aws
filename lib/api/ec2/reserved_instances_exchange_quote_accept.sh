######################################################################
#<
#
# Function:
#      = p6_aws_ec2_reserved_instances_exchange_quote_accept(reserved_instance_ids)
#
# Arg(s):
#    reserved_instance_ids - 
#
#
#>
######################################################################
p6_aws_ec2_reserved_instances_exchange_quote_accept() {
    local reserved_instance_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 accept-reserved-instances-exchange-quote --reserved-instance-ids $reserved_instance_ids "$@"
}