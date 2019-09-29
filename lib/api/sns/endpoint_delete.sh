######################################################################
#<
#
# Function:
#      = p6_aws_sns_endpoint_delete(endpoint_arn)
#
# Arg(s):
#    endpoint_arn - 
#
#
#>
######################################################################
p6_aws_sns_endpoint_delete() {
    local endpoint_arn="$1"
    shift 1

    p6_run_write_cmd aws sns delete-endpoint --endpoint-arn $endpoint_arn "$@"
}