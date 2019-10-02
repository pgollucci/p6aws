######################################################################
#<
#
# Function:
#	p6_aws_sqs_message_visibility_batch_change(queue_url, entries)
#
#  Args:
#	queue_url - 
#	entries - 
#
#>
######################################################################
p6_aws_sqs_message_visibility_batch_change() {
    local queue_url="$1"
    local entries="$2"
    shift 2

    p6_run_write_cmd aws sqs change-message-visibility-batch --queue-url $queue_url --entries $entries "$@"
}