######################################################################
#<
#
# Function:
#      = p6_aws_sqs_queue_attributes_set(queue_url, attributes)
#
# Arg(s):
#    queue_url - 
#    attributes - 
#
#
#>
######################################################################
p6_aws_sqs_queue_attributes_set() {
    local queue_url="$1"
    local attributes="$2"
    shift 2

    p6_run_write_cmd aws sqs set-queue-attributes --queue-url $queue_url --attributes $attributes "$@"
}