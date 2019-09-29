######################################################################
#<
#
# Function:
#      = p6_aws_waf_regex_pattern_sets_list()
#
#
#
#>
######################################################################
p6_aws_waf_regex_pattern_sets_list() {

    p6_run_read_cmd aws waf list-regex-pattern-sets "$@"
}