######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_endpoint_configs_list()
#
#
#
#>
######################################################################
p6_aws_sagemaker_endpoint_configs_list() {

    p6_run_read_cmd aws sagemaker list-endpoint-configs "$@"
}