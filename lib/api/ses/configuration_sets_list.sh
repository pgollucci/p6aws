######################################################################
#<
#
# Function:
#      = p6_aws_ses_configuration_sets_list()
#
#
#
#>
######################################################################
p6_aws_ses_configuration_sets_list() {

    p6_run_read_cmd aws ses list-configuration-sets "$@"
}