######################################################################
#<
#
# Function:
#      = p6_aws_medialive_input_security_group_create()
#
#
#
#>
######################################################################
p6_aws_medialive_input_security_group_create() {

    p6_run_write_cmd aws medialive create-input-security-group "$@"
}