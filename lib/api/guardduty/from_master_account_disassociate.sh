######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_from_master_account_disassociate(detector_id)
#
# Arg(s):
#    detector_id - 
#
#
#>
######################################################################
p6_aws_guardduty_from_master_account_disassociate() {
    local detector_id="$1"
    shift 1

    p6_run_write_cmd aws guardduty disassociate-from-master-account --detector-id $detector_id "$@"
}