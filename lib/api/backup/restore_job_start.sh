p6_aws_backup_restore_job_start() {
    local recovery_point_arn="$1"
    local metadata="$2"
    local iam_role_arn="$3"
    shift 3

    p6_run_write_cmd aws backup start-restore-job --recovery-point-arn $recovery_point_arn --metadata $metadata --iam-role-arn $iam_role_arn "$@"
}
