######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_configuration_sets_list()
#
#
#
#>
######################################################################
p6_aws_pinpoint_email_configuration_sets_list() {

    p6_run_read_cmd aws pinpoint-email list-configuration-sets "$@"
}