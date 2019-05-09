p6_aws_guardduty_invitation_accept() {
    local detector_id="$1"
    local invitation_id="$2"
    local master_id="$3"
    shift 3

    p6_log_or_run aws guardduty accept-invitation --detector-id $detector_id --invitation-id $invitation_id --master-id $master_id "$@"
}
