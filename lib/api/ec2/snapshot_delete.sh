p6_aws_ec2_snapshot_delete() {
    local snapshot_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-snapshot --snapshot-id $snapshot_id "$@"
}
