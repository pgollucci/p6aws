######################################################################
#<
#
# Function:
#      = p6_aws_waf_byte_match_set_get(byte_match_set_id)
#
# Arg(s):
#    byte_match_set_id - 
#
#
#>
######################################################################
p6_aws_waf_byte_match_set_get() {
    local byte_match_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-byte-match-set --byte-match-set-id $byte_match_set_id "$@"
}