######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_endpoint_describe(endpoint_name)
#
#  Args:
#	endpoint_name - 
#
#>
######################################################################
p6_aws_sagemaker_endpoint_describe() {
    local endpoint_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-endpoint --endpoint-name $endpoint_name "$@"
}