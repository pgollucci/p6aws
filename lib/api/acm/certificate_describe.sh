######################################################################
#<
#
# Function:
#      = p6_aws_acm_certificate_describe(certificate_arn)
#
# Arg(s):
#    certificate_arn - 
#
#
#>
######################################################################
p6_aws_acm_certificate_describe() {
    local certificate_arn="$1"
    shift 1

    p6_run_read_cmd aws acm describe-certificate --certificate-arn $certificate_arn "$@"
}