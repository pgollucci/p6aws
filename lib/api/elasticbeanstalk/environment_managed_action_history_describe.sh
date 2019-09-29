######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_environment_managed_action_history_describe()
#
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_environment_managed_action_history_describe() {

    p6_run_read_cmd aws elasticbeanstalk describe-environment-managed-action-history "$@"
}