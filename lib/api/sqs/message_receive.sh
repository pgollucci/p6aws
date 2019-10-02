######################################################################
#<
#
# Function:
#	p6_aws_sqs_message_receive(queue_url)
#
#  Args:
#	queue_url - 
#
#>
######################################################################
p6_aws_sqs_message_receive() {
    local queue_url="$1"
    shift 1

    p6_run_write_cmd aws sqs receive-message --queue-url $queue_url "$@"
}