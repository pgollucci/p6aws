######################################################################
#<
#
# Function:
#	p6_aws_configservice_config_rule_delete(config_rule_name)
#
#  Args:
#	config_rule_name - 
#
#>
######################################################################
p6_aws_configservice_config_rule_delete() {
    local config_rule_name="$1"
    shift 1

    p6_run_write_cmd aws configservice delete-config-rule --config-rule-name $config_rule_name "$@"
}