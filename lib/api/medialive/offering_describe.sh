p6_aws_medialive_offering_describe() {
    local offering_id="$1"
    shift 1

    p6_run_read_cmd aws medialive describe-offering --offering-id $offering_id "$@"
}
