######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_rule_groups_list()
#
#
#
#>
######################################################################
p6_aws_waf_regional_rule_groups_list() {

    p6_run_read_cmd aws waf-regional list-rule-groups "$@"
}