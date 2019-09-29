######################################################################
#<
#
# Function:
#      = p6_aws_sns_subscriptions_by_topic_list(topic_arn)
#
# Arg(s):
#    topic_arn - 
#
#
#>
######################################################################
p6_aws_sns_subscriptions_by_topic_list() {
    local topic_arn="$1"
    shift 1

    p6_run_read_cmd aws sns list-subscriptions-by-topic --topic-arn $topic_arn "$@"
}