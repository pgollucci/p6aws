######################################################################
#<
#
# Function:
#	p6_aws_ec2_customer_gateway_delete(customer_gateway_id)
#
#  Args:
#	customer_gateway_id - 
#
#>
######################################################################
p6_aws_ec2_customer_gateway_delete() {
    local customer_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-customer-gateway --customer-gateway-id $customer_gateway_id "$@"
}