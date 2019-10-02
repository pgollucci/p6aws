######################################################################
#<
#
# Function:
#	p6_aws_dlm_default_role_create()
#
#>
######################################################################
p6_aws_dlm_default_role_create() {

    p6_run_write_cmd aws dlm create-default-role "$@"
}