######################################################################
#<
#
# Function:
#	p6_aws_logs_log_group_tag(log_group_name, tags)
#
#  Args:
#	log_group_name - 
#	tags - 
#
#>
######################################################################
p6_aws_logs_log_group_tag() {
    local log_group_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws logs tag-log-group --log-group-name $log_group_name --tags $tags "$@"
}