######################################################################
#<
#
# Function:
#      = p6_aws_sqs_message_delete(queue_url, receipt_handle)
#
# Arg(s):
#    queue_url - 
#    receipt_handle - 
#
#
#>
######################################################################
p6_aws_sqs_message_delete() {
    local queue_url="$1"
    local receipt_handle="$2"
    shift 2

    p6_run_write_cmd aws sqs delete-message --queue-url $queue_url --receipt-handle $receipt_handle "$@"
}