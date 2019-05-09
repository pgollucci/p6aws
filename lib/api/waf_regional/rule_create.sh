p6_aws_waf_regional_rule_create() {
    local name="$1"
    local metric_name="$2"
    local change_token="$3"
    shift 3

    p6_run_write_cmd aws waf-regional create-rule --name $name --metric-name $metric_name --change-token $change_token "$@"
}
