######################################################################
#<
#
# Function:
#	p6_aws_sqs_permission_remove(queue_url, label)
#
#  Args:
#	queue_url - 
#	label - 
#
#>
######################################################################
p6_aws_sqs_permission_remove() {
    local queue_url="$1"
    local label="$2"
    shift 2

    p6_run_write_cmd aws sqs remove-permission --queue-url $queue_url --label $label "$@"
}