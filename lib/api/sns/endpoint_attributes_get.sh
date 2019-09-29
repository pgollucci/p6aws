######################################################################
#<
#
# Function:
#      = p6_aws_sns_endpoint_attributes_get(endpoint_arn)
#
# Arg(s):
#    endpoint_arn - 
#
#
#>
######################################################################
p6_aws_sns_endpoint_attributes_get() {
    local endpoint_arn="$1"
    shift 1

    p6_run_read_cmd aws sns get-endpoint-attributes --endpoint-arn $endpoint_arn "$@"
}