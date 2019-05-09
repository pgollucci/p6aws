p6_aws_medialive_input_security_group_describe() {
    local input_security_group_id="$1"
    shift 1

    p6_log_and_run aws medialive describe-input-security-group --input-security-group-id $input_security_group_id "$@"
}
