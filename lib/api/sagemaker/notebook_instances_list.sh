######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_notebook_instances_list()
#
#
#
#>
######################################################################
p6_aws_sagemaker_notebook_instances_list() {

    p6_run_read_cmd aws sagemaker list-notebook-instances "$@"
}