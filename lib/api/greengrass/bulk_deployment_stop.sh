p6_aws_greengrass_bulk_deployment_stop() {
    local bulk_deployment_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass stop-bulk-deployment --bulk-deployment-id $bulk_deployment_id "$@"
}
