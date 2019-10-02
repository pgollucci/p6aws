######################################################################
#<
#
# Function:
#	p6_aws_sns_permission_remove(topic_arn, label)
#
#  Args:
#	topic_arn - 
#	label - 
#
#>
######################################################################
p6_aws_sns_permission_remove() {
    local topic_arn="$1"
    local label="$2"
    shift 2

    p6_run_write_cmd aws sns remove-permission --topic-arn $topic_arn --label $label "$@"
}