######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_resource_signal(stack_name, logical_resource_id, unique_id, status)
#
# Arg(s):
#    stack_name - 
#    logical_resource_id - 
#    unique_id - 
#    status - 
#
#
#>
######################################################################
p6_aws_cloudformation_resource_signal() {
    local stack_name="$1"
    local logical_resource_id="$2"
    local unique_id="$3"
    local status="$4"
    shift 4

    p6_run_write_cmd aws cloudformation signal-resource --stack-name $stack_name --logical-resource-id $logical_resource_id --unique-id $unique_id --status $status "$@"
}