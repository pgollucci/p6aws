######################################################################
#<
#
# Function:
#      = p6_aws_cloudhsm_hapgs_list()
#
#
#
#>
######################################################################
p6_aws_cloudhsm_hapgs_list() {

    p6_run_read_cmd aws cloudhsm list-hapgs "$@"
}