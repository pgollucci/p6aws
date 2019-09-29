######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_workteams_list()
#
#
#
#>
######################################################################
p6_aws_sagemaker_workteams_list() {

    p6_run_read_cmd aws sagemaker list-workteams "$@"
}