######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_model_create(model_name, execution_role_arn)
#
#  Args:
#	model_name - 
#	execution_role_arn - 
#
#>
######################################################################
p6_aws_sagemaker_model_create() {
    local model_name="$1"
    local execution_role_arn="$2"
    shift 2

    p6_run_write_cmd aws sagemaker create-model --model-name $model_name --execution-role-arn $execution_role_arn "$@"
}