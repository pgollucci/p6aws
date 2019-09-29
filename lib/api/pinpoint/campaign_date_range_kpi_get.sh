######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_campaign_date_range_kpi_get(application_id, campaign_id, kpi_name)
#
# Arg(s):
#    application_id - 
#    campaign_id - 
#    kpi_name - 
#
#
#>
######################################################################
p6_aws_pinpoint_campaign_date_range_kpi_get() {
    local application_id="$1"
    local campaign_id="$2"
    local kpi_name="$3"
    shift 3

    p6_run_read_cmd aws pinpoint get-campaign-date-range-kpi --application-id $application_id --campaign-id $campaign_id --kpi-name $kpi_name "$@"
}