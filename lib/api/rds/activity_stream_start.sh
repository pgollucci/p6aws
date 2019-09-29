######################################################################
#<
#
# Function:
#      = p6_aws_rds_activity_stream_start(resource_arn, mode, kms_key_id)
#
# Arg(s):
#    resource_arn - 
#    mode - 
#    kms_key_id - 
#
#
#>
######################################################################
p6_aws_rds_activity_stream_start() {
    local resource_arn="$1"
    local mode="$2"
    local kms_key_id="$3"
    shift 3

    p6_run_write_cmd aws rds start-activity-stream --resource-arn $resource_arn --mode $mode --kms-key-id $kms_key_id "$@"
}