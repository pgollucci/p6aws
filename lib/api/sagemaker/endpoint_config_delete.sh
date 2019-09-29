######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_endpoint_config_delete(endpoint_config_name)
#
# Arg(s):
#    endpoint_config_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_endpoint_config_delete() {
    local endpoint_config_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker delete-endpoint-config --endpoint-config-name $endpoint_config_name "$@"
}