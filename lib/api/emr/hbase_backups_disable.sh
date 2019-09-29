######################################################################
#<
#
# Function:
#      = p6_aws_emr_hbase_backups_disable(cluster_id)
#
# Arg(s):
#    cluster_id - 
#
#
#>
######################################################################
p6_aws_emr_hbase_backups_disable() {
    local cluster_id="$1"
    shift 1

    p6_run_write_cmd aws emr disable-hbase-backups --cluster-id $cluster_id "$@"
}