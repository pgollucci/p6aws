######################################################################
#<
#
# Function:
#	p6_aws_cloudhsm_luna_client_delete(client_arn)
#
#  Args:
#	client_arn - 
#
#>
######################################################################
p6_aws_cloudhsm_luna_client_delete() {
    local client_arn="$1"
    shift 1

    p6_run_write_cmd aws cloudhsm delete-luna-client --client-arn $client_arn "$@"
}