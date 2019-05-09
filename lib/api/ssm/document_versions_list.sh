p6_aws_ssm_document_versions_list() {
    local name="$1"
    shift 1

    p6_log_and_run aws ssm list-document-versions --name $name "$@"
}
