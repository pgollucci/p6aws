######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_application_versions_describe()
#
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_application_versions_describe() {

    p6_run_read_cmd aws elasticbeanstalk describe-application-versions "$@"
}