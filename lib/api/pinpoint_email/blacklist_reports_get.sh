######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_email_blacklist_reports_get(blacklist_item_names)
#
#  Args:
#	blacklist_item_names - 
#
#>
######################################################################
p6_aws_pinpoint_email_blacklist_reports_get() {
    local blacklist_item_names="$1"
    shift 1

    p6_run_read_cmd aws pinpoint-email get-blacklist-reports --blacklist-item-names $blacklist_item_names "$@"
}