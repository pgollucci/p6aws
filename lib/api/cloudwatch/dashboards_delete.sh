p6_aws_cloudwatch_dashboards_delete() {
    local dashboard_names="$1"
    shift 1

    p6_run_write_cmd aws cloudwatch delete-dashboards --dashboard-names $dashboard_names "$@"
}
