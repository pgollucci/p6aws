######################################################################
#<
#
# Function:
#      = p6_aws_cloudhsm_hsm_describe()
#
#
#
#>
######################################################################
p6_aws_cloudhsm_hsm_describe() {

    p6_run_read_cmd aws cloudhsm describe-hsm "$@"
}