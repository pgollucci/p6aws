p6_aws_ssm_command_send() {
    local document_name="$1"
    shift 1

    p6_log_or_run aws ssm send-command --document-name $document_name "$@"
}
