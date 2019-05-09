p6_aws_discovery_tags_create() {
    local configuration_ids="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws discovery create-tags --configuration-ids $configuration_ids --tags $tags "$@"
}
