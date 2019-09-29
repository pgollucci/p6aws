######################################################################
#<
#
# Function:
#      = p6_aws_emr_default_roles_create()
#
#
#
#>
######################################################################
p6_aws_emr_default_roles_create() {

    p6_run_write_cmd aws emr create-default-roles "$@"
}