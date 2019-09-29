######################################################################
#<
#
# Function:
#      = p6_aws_emr_from_hbase_backup_restore(cluster_id, dir)
#
# Arg(s):
#    cluster_id - 
#    dir - 
#
#
#>
######################################################################
p6_aws_emr_from_hbase_backup_restore() {
    local cluster_id="$1"
    local dir="$2"
    shift 2

    p6_run_write_cmd aws emr restore-from-hbase-backup --cluster-id $cluster_id --dir $dir "$@"
}