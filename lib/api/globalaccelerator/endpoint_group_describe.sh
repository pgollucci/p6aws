######################################################################
#<
#
# Function:
#      = p6_aws_globalaccelerator_endpoint_group_describe(endpoint_group_arn)
#
# Arg(s):
#    endpoint_group_arn - 
#
#
#>
######################################################################
p6_aws_globalaccelerator_endpoint_group_describe() {
    local endpoint_group_arn="$1"
    shift 1

    p6_run_read_cmd aws globalaccelerator describe-endpoint-group --endpoint-group-arn $endpoint_group_arn "$@"
}