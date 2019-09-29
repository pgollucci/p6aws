######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_snapshot_schedule_delete(volume_arn)
#
# Arg(s):
#    volume_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_snapshot_schedule_delete() {
    local volume_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway delete-snapshot-schedule --volume-arn $volume_arn "$@"
}