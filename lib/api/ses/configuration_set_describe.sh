######################################################################
#<
#
# Function:
#      = p6_aws_ses_configuration_set_describe(configuration_set_name)
#
# Arg(s):
#    configuration_set_name - 
#
#
#>
######################################################################
p6_aws_ses_configuration_set_describe() {
    local configuration_set_name="$1"
    shift 1

    p6_run_read_cmd aws ses describe-configuration-set --configuration-set-name $configuration_set_name "$@"
}