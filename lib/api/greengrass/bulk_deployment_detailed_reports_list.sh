p6_aws_greengrass_bulk_deployment_detailed_reports_list() {
    local bulk_deployment_id="$1"
    shift 1

    p6_log_and_run aws greengrass list-bulk-deployment-detailed-reports --bulk-deployment-id $bulk_deployment_id "$@"
}
