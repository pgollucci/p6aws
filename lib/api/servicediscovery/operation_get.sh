######################################################################
#<
#
# Function:
#      = p6_aws_servicediscovery_operation_get(operation_id)
#
# Arg(s):
#    operation_id - 
#
#
#>
######################################################################
p6_aws_servicediscovery_operation_get() {
    local operation_id="$1"
    shift 1

    p6_run_read_cmd aws servicediscovery get-operation --operation-id $operation_id "$@"
}