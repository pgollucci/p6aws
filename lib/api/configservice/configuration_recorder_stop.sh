######################################################################
#<
#
# Function:
#      = p6_aws_configservice_configuration_recorder_stop(configuration_recorder_name)
#
# Arg(s):
#    configuration_recorder_name - 
#
#
#>
######################################################################
p6_aws_configservice_configuration_recorder_stop() {
    local configuration_recorder_name="$1"
    shift 1

    p6_run_write_cmd aws configservice stop-configuration-recorder --configuration-recorder-name $configuration_recorder_name "$@"
}