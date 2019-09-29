######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_environment_update()
#
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_environment_update() {

    p6_run_write_cmd aws elasticbeanstalk update-environment "$@"
}