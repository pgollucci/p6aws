######################################################################
#<
#
# Function:
#      = p6_aws_emr_hbase_backup_schedule(cluster_id, type, dir, interval, unit)
#
# Arg(s):
#    cluster_id - 
#    type - 
#    dir - 
#    interval - 
#    unit - 
#
#
#>
######################################################################
p6_aws_emr_hbase_backup_schedule() {
    local cluster_id="$1"
    local type="$2"
    local dir="$3"
    local interval="$4"
    local unit="$5"
    shift 5

    p6_run_write_cmd aws emr schedule-hbase-backup --cluster-id $cluster_id --type $type --dir $dir --interval $interval --unit $unit "$@"
}