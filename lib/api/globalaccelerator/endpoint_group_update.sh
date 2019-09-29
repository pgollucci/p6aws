######################################################################
#<
#
# Function:
#      = p6_aws_globalaccelerator_endpoint_group_update(endpoint_group_arn)
#
# Arg(s):
#    endpoint_group_arn - 
#
#
#>
######################################################################
p6_aws_globalaccelerator_endpoint_group_update() {
    local endpoint_group_arn="$1"
    shift 1

    p6_run_write_cmd aws globalaccelerator update-endpoint-group --endpoint-group-arn $endpoint_group_arn "$@"
}