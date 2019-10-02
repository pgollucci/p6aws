######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_subscribed_workteams_list()
#
#>
######################################################################
p6_aws_sagemaker_subscribed_workteams_list() {

    p6_run_read_cmd aws sagemaker list-subscribed-workteams "$@"
}