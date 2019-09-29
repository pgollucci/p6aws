######################################################################
#<
#
# Function:
#      = p6_aws_sqs_queue_url_get(queue_name)
#
# Arg(s):
#    queue_name - 
#
#
#>
######################################################################
p6_aws_sqs_queue_url_get() {
    local queue_name="$1"
    shift 1

    p6_run_read_cmd aws sqs get-queue-url --queue-name $queue_name "$@"
}