######################################################################
#<
#
# Function:
#	p6_aws_amplify_webhook_get(webhook_id)
#
#  Args:
#	webhook_id - 
#
#>
######################################################################
p6_aws_amplify_webhook_get() {
    local webhook_id="$1"
    shift 1

    p6_run_read_cmd aws amplify get-webhook --webhook-id $webhook_id "$@"
}