p6_aws_guardduty_invitation_accept() {
    local detector_id="$1"
    local master_id="$2"
    local invitation_id="$3"
    shift 3

    p6_run_write_cmd aws guardduty accept-invitation --detector-id $detector_id --master-id $master_id --invitation-id $invitation_id "$@"
}
