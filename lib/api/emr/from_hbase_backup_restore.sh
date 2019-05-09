p6_aws_emr_from_hbase_backup_restore() {
    local cluster_id="$1"
    local dir="$2"
    shift 2

    p6_log_or_run aws emr restore-from-hbase-backup --cluster-id $cluster_id --dir $dir "$@"
}
