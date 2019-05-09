p6_aws_waf_regional_web_acl_update() {
    local web_acl_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf-regional update-web-acl --web-acl-id $web_acl_id --change-token $change_token "$@"
}
