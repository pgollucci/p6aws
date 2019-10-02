######################################################################
#<
#
# Function:
#	p6_aws_workspaces_account_modify()
#
#>
######################################################################
p6_aws_workspaces_account_modify() {

    p6_run_write_cmd aws workspaces modify-account "$@"
}