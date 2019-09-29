######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_ip_set_get(detector_id, ip_set_id)
#
# Arg(s):
#    detector_id - 
#    ip_set_id - 
#
#
#>
######################################################################
p6_aws_guardduty_ip_set_get() {
    local detector_id="$1"
    local ip_set_id="$2"
    shift 2

    p6_run_read_cmd aws guardduty get-ip-set --detector-id $detector_id --ip-set-id $ip_set_id "$@"
}