######################################################################
#<
#
# Function:
#	p6_aws_waf_sampled_requests_get(web_acl_id, rule_id, time_window, max_items)
#
#  Args:
#	web_acl_id - 
#	rule_id - 
#	time_window - 
#	max_items - 
#
#>
######################################################################
p6_aws_waf_sampled_requests_get() {
    local web_acl_id="$1"
    local rule_id="$2"
    local time_window="$3"
    local max_items="$4"
    shift 4

    p6_run_read_cmd aws waf get-sampled-requests --web-acl-id $web_acl_id --rule-id $rule_id --time-window $time_window --max-items $max_items "$@"
}