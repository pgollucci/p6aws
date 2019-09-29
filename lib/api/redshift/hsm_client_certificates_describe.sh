######################################################################
#<
#
# Function:
#      = p6_aws_redshift_hsm_client_certificates_describe()
#
#
#
#>
######################################################################
p6_aws_redshift_hsm_client_certificates_describe() {

    p6_run_read_cmd aws redshift describe-hsm-client-certificates "$@"
}