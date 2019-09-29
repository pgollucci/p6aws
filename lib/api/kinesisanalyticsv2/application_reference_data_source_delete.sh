######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_application_reference_data_source_delete(application_name, current_application_version_id, reference_id)
#
# Arg(s):
#    application_name - 
#    current_application_version_id - 
#    reference_id - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_reference_data_source_delete() {
    local application_name="$1"
    local current_application_version_id="$2"
    local reference_id="$3"
    shift 3

    p6_run_write_cmd aws kinesisanalyticsv2 delete-application-reference-data-source --application-name $application_name --current-application-version-id $current_application_version_id --reference-id $reference_id "$@"
}