######################################################################
#<
#
# Function:
#	p6_aws_elasticbeanstalk_app_server_restart()
#
#>
######################################################################
p6_aws_elasticbeanstalk_app_server_restart() {

    p6_run_write_cmd aws elasticbeanstalk restart-app-server "$@"
}