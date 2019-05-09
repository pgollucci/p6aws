p6_aws_medialive_input_update() {
    local input_id="$1"
    shift 1

    p6_run_write_cmd aws medialive update-input --input-id $input_id "$@"
}
