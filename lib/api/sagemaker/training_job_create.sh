######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_training_job_create(training_job_name, algorithm_specification, role_arn, output_data_config, resource_config, stopping_condition)
#
# Arg(s):
#    training_job_name - 
#    algorithm_specification - 
#    role_arn - 
#    output_data_config - 
#    resource_config - 
#    stopping_condition - 
#
#
#>
######################################################################
p6_aws_sagemaker_training_job_create() {
    local training_job_name="$1"
    local algorithm_specification="$2"
    local role_arn="$3"
    local output_data_config="$4"
    local resource_config="$5"
    local stopping_condition="$6"
    shift 6

    p6_run_write_cmd aws sagemaker create-training-job --training-job-name $training_job_name --algorithm-specification $algorithm_specification --role-arn $role_arn --output-data-config $output_data_config --resource-config $resource_config --stopping-condition $stopping_condition "$@"
}