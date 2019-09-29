######################################################################
#<
#
# Function:
#      = p6_aws_discovery_application_update(configuration_id)
#
# Arg(s):
#    configuration_id - 
#
#
#>
######################################################################
p6_aws_discovery_application_update() {
    local configuration_id="$1"
    shift 1

    p6_run_write_cmd aws discovery update-application --configuration-id $configuration_id "$@"
}