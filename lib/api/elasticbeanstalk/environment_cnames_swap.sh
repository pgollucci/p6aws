######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_environment_cnames_swap()
#
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_environment_cnames_swap() {

    p6_run_write_cmd aws elasticbeanstalk swap-environment-cnames "$@"
}