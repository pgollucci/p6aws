######################################################################
#<
#
# Function:
#      = p6_aws_configservice_config_rule_evaluation_status_describe()
#
#
#
#>
######################################################################
p6_aws_configservice_config_rule_evaluation_status_describe() {

    p6_run_read_cmd aws configservice describe-config-rule-evaluation-status "$@"
}