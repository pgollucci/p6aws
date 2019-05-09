p6_aws_ssm_document_permission_describe() {
    local name="$1"
    local permission_type="$2"
    shift 2

    p6_log_and_run aws ssm describe-document-permission --name $name --permission-type $permission_type "$@"
}
