######################################################################
#<
#
# Function:
#	p6_aws_configservice_config_rules_evaluation_start()
#
#>
######################################################################
p6_aws_configservice_config_rules_evaluation_start() {

    p6_run_write_cmd aws configservice start-config-rules-evaluation "$@"
}