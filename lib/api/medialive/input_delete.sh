p6_aws_medialive_input_delete() {
    local input_id="$1"
    shift 1

    p6_log_or_run aws medialive delete-input --input-id $input_id "$@"
}
