p6_aws_ssm_document_create() {
    local content="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws ssm create-document --content $content --name $name "$@"
}
