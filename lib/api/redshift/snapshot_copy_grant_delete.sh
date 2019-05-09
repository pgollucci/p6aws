p6_aws_redshift_snapshot_copy_grant_delete() {
    local snapshot_copy_grant_name="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-snapshot-copy-grant --snapshot-copy-grant-name $snapshot_copy_grant_name "$@"
}
