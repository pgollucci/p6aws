######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_snapshot_copy(source_snapshot_name, target_snapshot_name, source_region)
#
# Arg(s):
#    source_snapshot_name - 
#    target_snapshot_name - 
#    source_region - 
#
#
#>
######################################################################
p6_aws_lightsail_snapshot_copy() {
    local source_snapshot_name="$1"
    local target_snapshot_name="$2"
    local source_region="$3"
    shift 3

    p6_run_write_cmd aws lightsail copy-snapshot --source-snapshot-name $source_snapshot_name --target-snapshot-name $target_snapshot_name --source-region $source_region "$@"
}