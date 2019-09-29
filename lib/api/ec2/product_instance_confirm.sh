######################################################################
#<
#
# Function:
#      = p6_aws_ec2_product_instance_confirm(instance_id, product_code)
#
# Arg(s):
#    instance_id - 
#    product_code - 
#
#
#>
######################################################################
p6_aws_ec2_product_instance_confirm() {
    local instance_id="$1"
    local product_code="$2"
    shift 2

    p6_run_write_cmd aws ec2 confirm-product-instance --instance-id $instance_id --product-code $product_code "$@"
}