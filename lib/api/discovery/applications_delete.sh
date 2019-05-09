p6_aws_discovery_applications_delete() {
    local configuration_ids="$1"
    shift 1

    p6_run_write_cmd aws discovery delete-applications --configuration-ids $configuration_ids "$@"
}
