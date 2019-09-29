######################################################################
#<
#
# Function:
#      = p6_aws_inspector_to_event_subscribe(resource_arn, event, topic_arn)
#
# Arg(s):
#    resource_arn - 
#    event - 
#    topic_arn - 
#
#
#>
######################################################################
p6_aws_inspector_to_event_subscribe() {
    local resource_arn="$1"
    local event="$2"
    local topic_arn="$3"
    shift 3

    p6_run_write_cmd aws inspector subscribe-to-event --resource-arn $resource_arn --event $event --topic-arn $topic_arn "$@"
}