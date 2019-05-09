p6_aws_medialive_input_describe() {
    local input_id="$1"
    shift 1

    p6_log_and_run aws medialive describe-input --input-id $input_id "$@"
}
