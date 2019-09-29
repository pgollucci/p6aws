######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_ip_set_get(ip_set_id)
#
# Arg(s):
#    ip_set_id - 
#
#
#>
######################################################################
p6_aws_waf_regional_ip_set_get() {
    local ip_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-ip-set --ip-set-id $ip_set_id "$@"
}