######################################################################
#<
#
# Function:
#      = p6_aws_configservice_remediation_configurations_describe(config_rule_names)
#
# Arg(s):
#    config_rule_names - 
#
#
#>
######################################################################
p6_aws_configservice_remediation_configurations_describe() {
    local config_rule_names="$1"
    shift 1

    p6_run_read_cmd aws configservice describe-remediation-configurations --config-rule-names $config_rule_names "$@"
}