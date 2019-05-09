p6_aws_cloudwatch_dashboard_put() {
    local dashboard_name="$1"
    local dashboard_body="$2"
    shift 2

    p6_run_write_cmd aws cloudwatch put-dashboard --dashboard-name $dashboard_name --dashboard-body $dashboard_body "$@"
}
