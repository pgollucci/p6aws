######################################################################
#<
#
# Function:
#      = p6_aws_configservice_remediation_configurations_put(remediation_configurations)
#
# Arg(s):
#    remediation_configurations - 
#
#
#>
######################################################################
p6_aws_configservice_remediation_configurations_put() {
    local remediation_configurations="$1"
    shift 1

    p6_run_write_cmd aws configservice put-remediation-configurations --remediation-configurations $remediation_configurations "$@"
}