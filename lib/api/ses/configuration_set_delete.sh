######################################################################
#<
#
# Function:
#      = p6_aws_ses_configuration_set_delete(configuration_set_name)
#
# Arg(s):
#    configuration_set_name - 
#
#
#>
######################################################################
p6_aws_ses_configuration_set_delete() {
    local configuration_set_name="$1"
    shift 1

    p6_run_write_cmd aws ses delete-configuration-set --configuration-set-name $configuration_set_name "$@"
}