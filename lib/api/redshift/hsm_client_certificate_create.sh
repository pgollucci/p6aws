######################################################################
#<
#
# Function:
#      = p6_aws_redshift_hsm_client_certificate_create(hsm_client_certificate_identifier)
#
# Arg(s):
#    hsm_client_certificate_identifier - 
#
#
#>
######################################################################
p6_aws_redshift_hsm_client_certificate_create() {
    local hsm_client_certificate_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift create-hsm-client-certificate --hsm-client-certificate-identifier $hsm_client_certificate_identifier "$@"
}