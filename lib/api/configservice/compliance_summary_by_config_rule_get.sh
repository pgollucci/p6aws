######################################################################
#<
#
# Function:
#	p6_aws_configservice_compliance_summary_by_config_rule_get()
#
#>
######################################################################
p6_aws_configservice_compliance_summary_by_config_rule_get() {

    p6_run_read_cmd aws configservice get-compliance-summary-by-config-rule "$@"
}