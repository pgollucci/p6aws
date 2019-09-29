######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_application_snapshot_delete(application_name, snapshot_name, snapshot_creation_timestamp)
#
# Arg(s):
#    application_name - 
#    snapshot_name - 
#    snapshot_creation_timestamp - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_snapshot_delete() {
    local application_name="$1"
    local snapshot_name="$2"
    local snapshot_creation_timestamp="$3"
    shift 3

    p6_run_write_cmd aws kinesisanalyticsv2 delete-application-snapshot --application-name $application_name --snapshot-name $snapshot_name --snapshot-creation-timestamp $snapshot_creation_timestamp "$@"
}