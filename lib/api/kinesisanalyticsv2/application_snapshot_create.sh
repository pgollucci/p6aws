######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_application_snapshot_create(application_name, snapshot_name)
#
# Arg(s):
#    application_name - 
#    snapshot_name - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_snapshot_create() {
    local application_name="$1"
    local snapshot_name="$2"
    shift 2

    p6_run_write_cmd aws kinesisanalyticsv2 create-application-snapshot --application-name $application_name --snapshot-name $snapshot_name "$@"
}