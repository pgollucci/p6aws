######################################################################
#<
#
# Function:
#	p6_aws_iam_server_certificate_get(server_certificate_name)
#
#  Args:
#	server_certificate_name - 
#
#>
######################################################################
p6_aws_iam_server_certificate_get() {
    local server_certificate_name="$1"
    shift 1

    p6_run_read_cmd aws iam get-server-certificate --server-certificate-name $server_certificate_name "$@"
}