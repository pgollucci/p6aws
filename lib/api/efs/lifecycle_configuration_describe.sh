p6_aws_efs_lifecycle_configuration_describe() {
    local file_system_id="$1"
    shift 1

    p6_run_read_cmd aws efs describe-lifecycle-configuration --file-system-id $file_system_id "$@"
}
