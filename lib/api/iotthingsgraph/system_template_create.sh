p6_aws_iotthingsgraph_system_template_create() {
    local definition="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph create-system-template --definition $definition "$@"
}
