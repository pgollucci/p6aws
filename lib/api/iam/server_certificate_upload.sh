######################################################################
#<
#
# Function:
#	p6_aws_iam_server_certificate_upload(server_certificate_name, certificate_body, private_key)
#
#  Args:
#	server_certificate_name - 
#	certificate_body - 
#	private_key - 
#
#>
######################################################################
p6_aws_iam_server_certificate_upload() {
    local server_certificate_name="$1"
    local certificate_body="$2"
    local private_key="$3"
    shift 3

    p6_run_write_cmd aws iam upload-server-certificate --server-certificate-name $server_certificate_name --certificate-body $certificate_body --private-key $private_key "$@"
}