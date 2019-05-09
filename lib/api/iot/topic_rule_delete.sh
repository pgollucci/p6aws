p6_aws_iot_topic_rule_delete() {
    local rule_name="$1"
    shift 1

    p6_log_or_run aws iot delete-topic-rule --rule-name $rule_name "$@"
}
