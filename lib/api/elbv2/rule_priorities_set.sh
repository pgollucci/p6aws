######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_rule_priorities_set(rule_priorities)
#
# Arg(s):
#    rule_priorities - 
#
#
#>
######################################################################
p6_aws_elbv2_rule_priorities_set() {
    local rule_priorities="$1"
    shift 1

    p6_run_write_cmd aws elbv2 set-rule-priorities --rule-priorities $rule_priorities "$@"
}