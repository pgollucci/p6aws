######################################################################
#<
#
# Function:
#	p6_aws_configservice_remediation_configuration_delete(config_rule_name)
#
#  Args:
#	config_rule_name - 
#
#>
######################################################################
p6_aws_configservice_remediation_configuration_delete() {
    local config_rule_name="$1"
    shift 1

    p6_run_write_cmd aws configservice delete-remediation-configuration --config-rule-name $config_rule_name "$@"
}