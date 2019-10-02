######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_compilation_job_create(compilation_job_name, role_arn, input_config, output_config, stopping_condition)
#
#  Args:
#	compilation_job_name - 
#	role_arn - 
#	input_config - 
#	output_config - 
#	stopping_condition - 
#
#>
######################################################################
p6_aws_sagemaker_compilation_job_create() {
    local compilation_job_name="$1"
    local role_arn="$2"
    local input_config="$3"
    local output_config="$4"
    local stopping_condition="$5"
    shift 5

    p6_run_write_cmd aws sagemaker create-compilation-job --compilation-job-name $compilation_job_name --role-arn $role_arn --input-config $input_config --output-config $output_config --stopping-condition $stopping_condition "$@"
}