######################################################################
#<
#
# Function:
#      = p6_aws_acm_certificate_get(certificate_arn)
#
# Arg(s):
#    certificate_arn - 
#
#
#>
######################################################################
p6_aws_acm_certificate_get() {
    local certificate_arn="$1"
    shift 1

    p6_run_read_cmd aws acm get-certificate --certificate-arn $certificate_arn "$@"
}