p6_aws_swf_domain_undeprecate() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws swf undeprecate-domain --name $name "$@"
}
