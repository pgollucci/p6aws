######################################################################
#<
#
# Function:
#	p6_aws_organizations_create_account_status_list()
#
#>
######################################################################
p6_aws_organizations_create_account_status_list() {

    p6_run_read_cmd aws organizations list-create-account-status "$@"
}