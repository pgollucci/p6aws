p6_aws_mturk_assignment_reject() {
    local assignment_id="$1"
    local requester_feedback="$2"
    shift 2

    p6_log_or_run aws mturk reject-assignment --assignment-id $assignment_id --requester-feedback $requester_feedback "$@"
}
