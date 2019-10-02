######################################################################
#<
#
# Function:
#	p6_aws_configservice_compliance_by_config_rule_describe()
#
#>
######################################################################
p6_aws_configservice_compliance_by_config_rule_describe() {

    p6_run_read_cmd aws configservice describe-compliance-by-config-rule "$@"
}