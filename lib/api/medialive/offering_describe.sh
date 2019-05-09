p6_aws_medialive_offering_describe() {
    local offering_id="$1"
    shift 1

    p6_log_and_run aws medialive describe-offering --offering-id $offering_id "$@"
}
