######################################################################
#<
#
# Function:
#      = p6_aws_organizations_roots_list()
#
#
#
#>
######################################################################
p6_aws_organizations_roots_list() {

    p6_run_read_cmd aws organizations list-roots "$@"
}