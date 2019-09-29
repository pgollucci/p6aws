######################################################################
#<
#
# Function:
#      = p6_aws_iot_topic_rule_replace(rule_name, topic_rule_payload)
#
# Arg(s):
#    rule_name - 
#    topic_rule_payload - 
#
#
#>
######################################################################
p6_aws_iot_topic_rule_replace() {
    local rule_name="$1"
    local topic_rule_payload="$2"
    shift 2

    p6_run_write_cmd aws iot replace-topic-rule --rule-name $rule_name --topic-rule-payload $topic_rule_payload "$@"
}