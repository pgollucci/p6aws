######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_tags_describe()
#
#>
######################################################################
p6_aws_autoscaling_tags_describe() {

    p6_run_read_cmd aws autoscaling describe-tags "$@"
}