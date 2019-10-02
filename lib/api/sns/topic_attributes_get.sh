######################################################################
#<
#
# Function:
#	p6_aws_sns_topic_attributes_get(topic_arn)
#
#  Args:
#	topic_arn - 
#
#>
######################################################################
p6_aws_sns_topic_attributes_get() {
    local topic_arn="$1"
    shift 1

    p6_run_read_cmd aws sns get-topic-attributes --topic-arn $topic_arn "$@"
}