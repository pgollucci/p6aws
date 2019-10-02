######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_endpoint_delete(endpoint_name)
#
#  Args:
#	endpoint_name - 
#
#>
######################################################################
p6_aws_sagemaker_endpoint_delete() {
    local endpoint_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker delete-endpoint --endpoint-name $endpoint_name "$@"
}