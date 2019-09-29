######################################################################
#<
#
# Function:
#      = p6_aws_iot_topic_rule_get(rule_name)
#
# Arg(s):
#    rule_name - 
#
#
#>
######################################################################
p6_aws_iot_topic_rule_get() {
    local rule_name="$1"
    shift 1

    p6_run_read_cmd aws iot get-topic-rule --rule-name $rule_name "$@"
}