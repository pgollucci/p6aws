######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_invitation_accept(detector_id, master_id, invitation_id)
#
# Arg(s):
#    detector_id - 
#    master_id - 
#    invitation_id - 
#
#
#>
######################################################################
p6_aws_guardduty_invitation_accept() {
    local detector_id="$1"
    local master_id="$2"
    local invitation_id="$3"
    shift 3

    p6_run_write_cmd aws guardduty accept-invitation --detector-id $detector_id --master-id $master_id --invitation-id $invitation_id "$@"
}