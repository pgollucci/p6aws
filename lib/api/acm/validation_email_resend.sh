######################################################################
#<
#
# Function:
#      = p6_aws_acm_validation_email_resend(certificate_arn, domain, validation_domain)
#
# Arg(s):
#    certificate_arn - 
#    domain - 
#    validation_domain - 
#
#
#>
######################################################################
p6_aws_acm_validation_email_resend() {
    local certificate_arn="$1"
    local domain="$2"
    local validation_domain="$3"
    shift 3

    p6_run_write_cmd aws acm resend-validation-email --certificate-arn $certificate_arn --domain $domain --validation-domain $validation_domain "$@"
}