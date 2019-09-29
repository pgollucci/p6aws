######################################################################
#<
#
# Function:
#      = p6_aws_sqs_queue_untag(queue_url, tag_keys)
#
# Arg(s):
#    queue_url - 
#    tag_keys - 
#
#
#>
######################################################################
p6_aws_sqs_queue_untag() {
    local queue_url="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws sqs untag-queue --queue-url $queue_url --tag-keys $tag_keys "$@"
}