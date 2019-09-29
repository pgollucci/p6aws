######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_endpoint_weights_and_capacities_update(endpoint_name, desired_weights_and_capacities)
#
# Arg(s):
#    endpoint_name - 
#    desired_weights_and_capacities - 
#
#
#>
######################################################################
p6_aws_sagemaker_endpoint_weights_and_capacities_update() {
    local endpoint_name="$1"
    local desired_weights_and_capacities="$2"
    shift 2

    p6_run_write_cmd aws sagemaker update-endpoint-weights-and-capacities --endpoint-name $endpoint_name --desired-weights-and-capacities $desired_weights_and_capacities "$@"
}