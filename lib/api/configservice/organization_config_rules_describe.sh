######################################################################
#<
#
# Function:
#      = p6_aws_configservice_organization_config_rules_describe()
#
#
#
#>
######################################################################
p6_aws_configservice_organization_config_rules_describe() {

    p6_run_read_cmd aws configservice describe-organization-config-rules "$@"
}