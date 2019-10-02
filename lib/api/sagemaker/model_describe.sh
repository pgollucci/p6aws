######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_model_describe(model_name)
#
#  Args:
#	model_name - 
#
#>
######################################################################
p6_aws_sagemaker_model_describe() {
    local model_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-model --model-name $model_name "$@"
}