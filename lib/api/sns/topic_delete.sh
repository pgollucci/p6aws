######################################################################
#<
#
# Function:
#	p6_aws_sns_topic_delete(topic_arn)
#
#  Args:
#	topic_arn - 
#
#>
######################################################################
p6_aws_sns_topic_delete() {
    local topic_arn="$1"
    shift 1

    p6_run_write_cmd aws sns delete-topic --topic-arn $topic_arn "$@"
}