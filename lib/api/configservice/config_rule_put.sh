######################################################################
#<
#
# Function:
#	p6_aws_configservice_config_rule_put(config_rule)
#
#  Args:
#	config_rule - 
#
#>
######################################################################
p6_aws_configservice_config_rule_put() {
    local config_rule="$1"
    shift 1

    p6_run_write_cmd aws configservice put-config-rule --config-rule $config_rule "$@"
}