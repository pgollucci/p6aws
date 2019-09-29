######################################################################
#<
#
# Function:
#      = p6_aws_ssm_resource_data_sync_create(sync_name, s3_destination)
#
# Arg(s):
#    sync_name - 
#    s3_destination - 
#
#
#>
######################################################################
p6_aws_ssm_resource_data_sync_create() {
    local sync_name="$1"
    local s3_destination="$2"
    shift 2

    p6_run_write_cmd aws ssm create-resource-data-sync --sync-name $sync_name --s3-destination $s3_destination "$@"
}