######################################################################
#<
#
# Function:
#	p6_aws_cloudhsm_luna_client_describe()
#
#>
######################################################################
p6_aws_cloudhsm_luna_client_describe() {

    p6_run_read_cmd aws cloudhsm describe-luna-client "$@"
}