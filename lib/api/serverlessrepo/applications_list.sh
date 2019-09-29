######################################################################
#<
#
# Function:
#      = p6_aws_serverlessrepo_applications_list()
#
#
#
#>
######################################################################
p6_aws_serverlessrepo_applications_list() {

    p6_run_read_cmd aws serverlessrepo list-applications "$@"
}