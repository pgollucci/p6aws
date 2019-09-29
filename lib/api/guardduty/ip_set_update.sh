######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_ip_set_update(detector_id, ip_set_id)
#
# Arg(s):
#    detector_id - 
#    ip_set_id - 
#
#
#>
######################################################################
p6_aws_guardduty_ip_set_update() {
    local detector_id="$1"
    local ip_set_id="$2"
    shift 2

    p6_run_write_cmd aws guardduty update-ip-set --detector-id $detector_id --ip-set-id $ip_set_id "$@"
}