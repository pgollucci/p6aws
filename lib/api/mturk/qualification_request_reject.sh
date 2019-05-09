p6_aws_mturk_qualification_request_reject() {
    local qualification_request_id="$1"
    shift 1

    p6_run_write_cmd aws mturk reject-qualification-request --qualification-request-id $qualification_request_id "$@"
}
