######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_email_configuration_set_create(configuration_set_name)
#
#  Args:
#	configuration_set_name - 
#
#>
######################################################################
p6_aws_pinpoint_email_configuration_set_create() {
    local configuration_set_name="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email create-configuration-set --configuration-set-name $configuration_set_name "$@"
}