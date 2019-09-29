######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_model_package_describe(model_package_name)
#
# Arg(s):
#    model_package_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_model_package_describe() {
    local model_package_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-model-package --model-package-name $model_package_name "$@"
}