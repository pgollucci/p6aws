######################################################################
#<
#
# Function:
#      = p6_aws_iot_topic_rule_delete(rule_name)
#
# Arg(s):
#    rule_name - 
#
#
#>
######################################################################
p6_aws_iot_topic_rule_delete() {
    local rule_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-topic-rule --rule-name $rule_name "$@"
}