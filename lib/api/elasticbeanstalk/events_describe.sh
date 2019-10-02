######################################################################
#<
#
# Function:
#	p6_aws_elasticbeanstalk_events_describe()
#
#>
######################################################################
p6_aws_elasticbeanstalk_events_describe() {

    p6_run_read_cmd aws elasticbeanstalk describe-events "$@"
}