p6_aws_swf_activity_type_undeprecate() {
    local domain="$1"
    local activity_type="$2"
    shift 2

    p6_run_write_cmd aws swf undeprecate-activity-type --domain $domain --activity-type $activity_type "$@"
}
