######################################################################
#<
#
# Function:
#      = p6_aws_iam_server_certificate_update(server_certificate_name)
#
# Arg(s):
#    server_certificate_name - 
#
#
#>
######################################################################
p6_aws_iam_server_certificate_update() {
    local server_certificate_name="$1"
    shift 1

    p6_run_write_cmd aws iam update-server-certificate --server-certificate-name $server_certificate_name "$@"
}