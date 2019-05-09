p6_aws_pinpoint_application_date_range_kpi_get() {
    local application_id="$1"
    local kpi_name="$2"
    shift 2

    p6_run_read_cmd aws pinpoint get-application-date-range-kpi --application-id $application_id --kpi-name $kpi_name "$@"
}
