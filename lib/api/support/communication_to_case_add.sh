p6_aws_support_communication_to_case_add() {
    local communication_body="$1"
    shift 1

    p6_log_or_run aws support add-communication-to-case --communication-body $communication_body "$@"
}
