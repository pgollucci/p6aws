######################################################################
#<
#
# Function:
#	p6_aws_ses_configuration_set_create(configuration_set)
#
#  Args:
#	configuration_set - 
#
#>
######################################################################
p6_aws_ses_configuration_set_create() {
    local configuration_set="$1"
    shift 1

    p6_run_write_cmd aws ses create-configuration-set --configuration-set $configuration_set "$@"
}