p6_aws_mturk_qualification_request_accept() {
    local qualification_request_id="$1"
    shift 1

    p6_log_or_run aws mturk accept-qualification-request --qualification-request-id $qualification_request_id "$@"
}
