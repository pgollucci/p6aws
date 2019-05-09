p6_aws_iotthingsgraph_entities_get() {
    local ids="$1"
    shift 1

    p6_run_read_cmd aws iotthingsgraph get-entities --ids $ids "$@"
}
