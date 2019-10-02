######################################################################
#<
#
# Function:
#	p6_aws_elasticbeanstalk_instances_health_describe()
#
#>
######################################################################
p6_aws_elasticbeanstalk_instances_health_describe() {

    p6_run_read_cmd aws elasticbeanstalk describe-instances-health "$@"
}