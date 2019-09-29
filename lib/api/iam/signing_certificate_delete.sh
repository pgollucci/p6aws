######################################################################
#<
#
# Function:
#      = p6_aws_iam_signing_certificate_delete(certificate_id)
#
# Arg(s):
#    certificate_id - 
#
#
#>
######################################################################
p6_aws_iam_signing_certificate_delete() {
    local certificate_id="$1"
    shift 1

    p6_run_write_cmd aws iam delete-signing-certificate --certificate-id $certificate_id "$@"
}