######################################################################
#<
#
# Function:
#      = p6_aws_iot_topic_rule_enable(rule_name)
#
# Arg(s):
#    rule_name - 
#
#
#>
######################################################################
p6_aws_iot_topic_rule_enable() {
    local rule_name="$1"
    shift 1

    p6_run_write_cmd aws iot enable-topic-rule --rule-name $rule_name "$@"
}