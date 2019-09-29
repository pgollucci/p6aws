######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_environment_update_abort()
#
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_environment_update_abort() {

    p6_run_write_cmd aws elasticbeanstalk abort-environment-update "$@"
}