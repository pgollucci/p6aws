p6_aws_iotthingsgraph_flow_template_create() {
    local definition="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph create-flow-template --definition $definition "$@"
}
