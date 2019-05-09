p6_aws_swf_domain_deprecate() {
    local name="$1"
    shift 1

    p6_log_or_run aws swf deprecate-domain --name $name "$@"
}
