######################################################################
#<
#
# Function:
#	p6_aws_sqs_queue_delete(queue_url)
#
#  Args:
#	queue_url - 
#
#>
######################################################################
p6_aws_sqs_queue_delete() {
    local queue_url="$1"
    shift 1

    p6_run_write_cmd aws sqs delete-queue --queue-url $queue_url "$@"
}