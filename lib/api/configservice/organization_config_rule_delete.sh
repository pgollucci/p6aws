######################################################################
#<
#
# Function:
#      = p6_aws_configservice_organization_config_rule_delete(organization_config_rule_name)
#
# Arg(s):
#    organization_config_rule_name - 
#
#
#>
######################################################################
p6_aws_configservice_organization_config_rule_delete() {
    local organization_config_rule_name="$1"
    shift 1

    p6_run_write_cmd aws configservice delete-organization-config-rule --organization-config-rule-name $organization_config_rule_name "$@"
}