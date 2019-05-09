p6_aws_ssm_document_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws ssm delete-document --name $name "$@"
}
