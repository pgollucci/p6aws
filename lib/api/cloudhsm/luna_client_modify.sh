######################################################################
#<
#
# Function:
#	p6_aws_cloudhsm_luna_client_modify(client_arn, certificate)
#
#  Args:
#	client_arn - 
#	certificate - 
#
#>
######################################################################
p6_aws_cloudhsm_luna_client_modify() {
    local client_arn="$1"
    local certificate="$2"
    shift 2

    p6_run_write_cmd aws cloudhsm modify-luna-client --client-arn $client_arn --certificate $certificate "$@"
}