p6_aws_greengrass_bulk_deployment_status_get() {
    local bulk_deployment_id="$1"
    shift 1

    p6_log_and_run aws greengrass get-bulk-deployment-status --bulk-deployment-id $bulk_deployment_id "$@"
}
