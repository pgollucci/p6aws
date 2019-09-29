######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_endpoint_update(endpoint_name, endpoint_config_name)
#
# Arg(s):
#    endpoint_name - 
#    endpoint_config_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_endpoint_update() {
    local endpoint_name="$1"
    local endpoint_config_name="$2"
    shift 2

    p6_run_write_cmd aws sagemaker update-endpoint --endpoint-name $endpoint_name --endpoint-config-name $endpoint_config_name "$@"
}