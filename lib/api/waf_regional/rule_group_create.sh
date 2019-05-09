p6_aws_waf_regional_rule_group_create() {
    local name="$1"
    local metric_name="$2"
    local change_token="$3"
    shift 3

    p6_log_or_run aws waf-regional create-rule-group --name $name --metric-name $metric_name --change-token $change_token "$@"
}
