######################################################################
#<
#
# Function:
#      = p6_aws_waf_regex_pattern_set_get(regex_pattern_set_id)
#
# Arg(s):
#    regex_pattern_set_id - 
#
#
#>
######################################################################
p6_aws_waf_regex_pattern_set_get() {
    local regex_pattern_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-regex-pattern-set --regex-pattern-set-id $regex_pattern_set_id "$@"
}