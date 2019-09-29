######################################################################
#<
#
# Function:
#      = p6_aws_configservice_remediation_execution_status_describe(config_rule_name)
#
# Arg(s):
#    config_rule_name - 
#
#
#>
######################################################################
p6_aws_configservice_remediation_execution_status_describe() {
    local config_rule_name="$1"
    shift 1

    p6_run_read_cmd aws configservice describe-remediation-execution-status --config-rule-name $config_rule_name "$@"
}