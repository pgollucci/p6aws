p6_aws_discovery_tags_delete() {
    local configuration_ids="$1"
    shift 1

    p6_run_write_cmd aws discovery delete-tags --configuration-ids $configuration_ids "$@"
}
