######################################################################
#<
#
# Function:
#      = p6_aws_ses_identities_list()
#
#
#
#>
######################################################################
p6_aws_ses_identities_list() {

    p6_run_read_cmd aws ses list-identities "$@"
}