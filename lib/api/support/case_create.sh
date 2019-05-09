p6_aws_support_case_create() {
    local subject="$1"
    local communication_body="$2"
    shift 2

    p6_log_or_run aws support create-case --subject $subject --communication-body $communication_body "$@"
}
