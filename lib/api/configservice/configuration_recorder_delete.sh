######################################################################
#<
#
# Function:
#	p6_aws_configservice_configuration_recorder_delete(configuration_recorder_name)
#
#  Args:
#	configuration_recorder_name - 
#
#>
######################################################################
p6_aws_configservice_configuration_recorder_delete() {
    local configuration_recorder_name="$1"
    shift 1

    p6_run_write_cmd aws configservice delete-configuration-recorder --configuration-recorder-name $configuration_recorder_name "$@"
}