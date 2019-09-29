######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_application_reference_data_source_add(application_name, current_application_version_id, reference_data_source)
#
# Arg(s):
#    application_name - 
#    current_application_version_id - 
#    reference_data_source - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_reference_data_source_add() {
    local application_name="$1"
    local current_application_version_id="$2"
    local reference_data_source="$3"
    shift 3

    p6_run_write_cmd aws kinesisanalyticsv2 add-application-reference-data-source --application-name $application_name --current-application-version-id $current_application_version_id --reference-data-source $reference_data_source "$@"
}