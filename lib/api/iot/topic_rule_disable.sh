######################################################################
#<
#
# Function:
#      = p6_aws_iot_topic_rule_disable(rule_name)
#
# Arg(s):
#    rule_name - 
#
#
#>
######################################################################
p6_aws_iot_topic_rule_disable() {
    local rule_name="$1"
    shift 1

    p6_run_write_cmd aws iot disable-topic-rule --rule-name $rule_name "$@"
}