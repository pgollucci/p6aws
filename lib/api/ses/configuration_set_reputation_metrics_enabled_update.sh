######################################################################
#<
#
# Function:
#	p6_aws_ses_configuration_set_reputation_metrics_enabled_update(configuration_set_name, enabled)
#
#  Args:
#	configuration_set_name - 
#	enabled - 
#
#>
######################################################################
p6_aws_ses_configuration_set_reputation_metrics_enabled_update() {
    local configuration_set_name="$1"
    local enabled="$2"
    shift 2

    p6_run_write_cmd aws ses update-configuration-set-reputation-metrics-enabled --configuration-set-name $configuration_set_name --enabled $enabled "$@"
}