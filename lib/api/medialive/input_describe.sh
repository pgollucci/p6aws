p6_aws_medialive_input_describe() {
    local input_id="$1"
    shift 1

    p6_run_read_cmd aws medialive describe-input --input-id $input_id "$@"
}
