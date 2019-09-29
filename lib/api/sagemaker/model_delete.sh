######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_model_delete(model_name)
#
# Arg(s):
#    model_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_model_delete() {
    local model_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker delete-model --model-name $model_name "$@"
}