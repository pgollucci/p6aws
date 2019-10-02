######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_rate_based_rules_list()
#
#>
######################################################################
p6_aws_waf_regional_rate_based_rules_list() {

    p6_run_read_cmd aws waf-regional list-rate-based-rules "$@"
}