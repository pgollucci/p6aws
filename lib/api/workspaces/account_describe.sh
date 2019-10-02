######################################################################
#<
#
# Function:
#	p6_aws_workspaces_account_describe()
#
#>
######################################################################
p6_aws_workspaces_account_describe() {

    p6_run_read_cmd aws workspaces describe-account "$@"
}