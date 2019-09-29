######################################################################
#<
#
# Function:
#      = p6_aws_sqs_permission_add(queue_url, label, aws_account_ids, actions)
#
# Arg(s):
#    queue_url - 
#    label - 
#    aws_account_ids - 
#    actions - 
#
#
#>
######################################################################
p6_aws_sqs_permission_add() {
    local queue_url="$1"
    local label="$2"
    local aws_account_ids="$3"
    local actions="$4"
    shift 4

    p6_run_write_cmd aws sqs add-permission --queue-url $queue_url --label $label --aws-account-ids $aws_account_ids --actions $actions "$@"
}