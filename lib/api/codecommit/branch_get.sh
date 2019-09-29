######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_branch_get()
#
#
#
#>
######################################################################
p6_aws_codecommit_branch_get() {

    p6_run_read_cmd aws codecommit get-branch "$@"
}