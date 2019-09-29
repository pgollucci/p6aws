######################################################################
#<
#
# Function:
#      = p6_aws_route53domains_operation_detail_get(operation_id)
#
# Arg(s):
#    operation_id - 
#
#
#>
######################################################################
p6_aws_route53domains_operation_detail_get() {
    local operation_id="$1"
    shift 1

    p6_run_read_cmd aws route53domains get-operation-detail --operation-id $operation_id "$@"
}