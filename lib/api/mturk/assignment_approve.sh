p6_aws_mturk_assignment_approve() {
    local assignment_id="$1"
    shift 1

    p6_run_write_cmd aws mturk approve-assignment --assignment-id $assignment_id "$@"
}
