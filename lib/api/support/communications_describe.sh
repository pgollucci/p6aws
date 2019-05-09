p6_aws_support_communications_describe() {
    local case_id="$1"
    shift 1

    p6_run_read_cmd aws support describe-communications --case-id $case_id "$@"
}
