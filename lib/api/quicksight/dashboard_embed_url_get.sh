######################################################################
#<
#
# Function:
#	p6_aws_quicksight_dashboard_embed_url_get(aws_account_id, dashboard_id, identity_type)
#
#  Args:
#	aws_account_id - 
#	dashboard_id - 
#	identity_type - 
#
#>
######################################################################
p6_aws_quicksight_dashboard_embed_url_get() {
    local aws_account_id="$1"
    local dashboard_id="$2"
    local identity_type="$3"
    shift 3

    p6_run_read_cmd aws quicksight get-dashboard-embed-url --aws-account-id $aws_account_id --dashboard-id $dashboard_id --identity-type $identity_type "$@"
}