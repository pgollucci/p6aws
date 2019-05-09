p6_aws_efs_file_system_create() {
    local creation_token="$1"
    shift 1

    p6_log_or_run aws efs create-file-system --creation-token $creation_token "$@"
}
