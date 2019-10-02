######################################################################
#<
#
# Function:
#	p6_aws_amplify_webhook_delete(webhook_id)
#
#  Args:
#	webhook_id - 
#
#>
######################################################################
p6_aws_amplify_webhook_delete() {
    local webhook_id="$1"
    shift 1

    p6_run_write_cmd aws amplify delete-webhook --webhook-id $webhook_id "$@"
}