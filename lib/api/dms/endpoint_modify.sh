######################################################################
#<
#
# Function:
#      = p6_aws_dms_endpoint_modify(endpoint_arn)
#
# Arg(s):
#    endpoint_arn - 
#
#
#>
######################################################################
p6_aws_dms_endpoint_modify() {
    local endpoint_arn="$1"
    shift 1

    p6_run_write_cmd aws dms modify-endpoint --endpoint-arn $endpoint_arn "$@"
}