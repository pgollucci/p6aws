p6_aws_iotthingsgraph_flow_template_deprecate() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph deprecate-flow-template --id $id "$@"
}
