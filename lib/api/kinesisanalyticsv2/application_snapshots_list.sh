######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_application_snapshots_list(application_name)
#
# Arg(s):
#    application_name - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_snapshots_list() {
    local application_name="$1"
    shift 1

    p6_run_read_cmd aws kinesisanalyticsv2 list-application-snapshots --application-name $application_name "$@"
}