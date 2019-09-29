######################################################################
#<
#
# Function:
#      = p6_aws_ec2_scheduled_instances_purchase(purchase_requests)
#
# Arg(s):
#    purchase_requests - 
#
#
#>
######################################################################
p6_aws_ec2_scheduled_instances_purchase() {
    local purchase_requests="$1"
    shift 1

    p6_run_write_cmd aws ec2 purchase-scheduled-instances --purchase-requests $purchase_requests "$@"
}