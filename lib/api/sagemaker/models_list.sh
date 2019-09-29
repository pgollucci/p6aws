######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_models_list()
#
#
#
#>
######################################################################
p6_aws_sagemaker_models_list() {

    p6_run_read_cmd aws sagemaker list-models "$@"
}