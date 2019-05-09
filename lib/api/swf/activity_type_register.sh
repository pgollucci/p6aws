p6_aws_swf_activity_type_register() {
    local domain="$1"
    local name="$2"
    local activity_version="$3"
    shift 3

    p6_log_or_run aws swf register-activity-type --domain $domain --name $name --activity-version $activity_version "$@"
}
