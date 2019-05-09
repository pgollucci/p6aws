p6_aws_ssm_document_create() {
    local content="$1"
    local name="$2"
    shift 2

    p6_log_or_run aws ssm create-document --content $content --name $name "$@"
}
