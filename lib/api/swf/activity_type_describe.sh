p6_aws_swf_activity_type_describe() {
    local domain="$1"
    local activity_type="$2"
    shift 2

    p6_log_and_run aws swf describe-activity-type --domain $domain --activity-type $activity_type "$@"
}
