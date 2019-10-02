######################################################################
#<
#
# Function:
#	p6_aws_sqs_message_batch_delete(queue_url, entries)
#
#  Args:
#	queue_url - 
#	entries - 
#
#>
######################################################################
p6_aws_sqs_message_batch_delete() {
    local queue_url="$1"
    local entries="$2"
    shift 2

    p6_run_write_cmd aws sqs delete-message-batch --queue-url $queue_url --entries $entries "$@"
}