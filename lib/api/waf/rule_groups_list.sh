######################################################################
#<
#
# Function:
#      = p6_aws_waf_rule_groups_list()
#
#
#
#>
######################################################################
p6_aws_waf_rule_groups_list() {

    p6_run_read_cmd aws waf list-rule-groups "$@"
}