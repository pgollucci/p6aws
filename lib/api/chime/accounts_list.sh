######################################################################
#<
#
# Function:
#	p6_aws_chime_accounts_list()
#
#>
######################################################################
p6_aws_chime_accounts_list() {

    p6_run_read_cmd aws chime list-accounts "$@"
}