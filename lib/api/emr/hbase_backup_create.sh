######################################################################
#<
#
# Function:
#	p6_aws_emr_hbase_backup_create(cluster_id, dir)
#
#  Args:
#	cluster_id - 
#	dir - 
#
#>
######################################################################
p6_aws_emr_hbase_backup_create() {
    local cluster_id="$1"
    local dir="$2"
    shift 2

    p6_run_write_cmd aws emr create-hbase-backup --cluster-id $cluster_id --dir $dir "$@"
}