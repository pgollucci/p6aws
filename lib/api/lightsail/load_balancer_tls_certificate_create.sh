######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_load_balancer_tls_certificate_create(load_balancer_name, certificate_name, certificate_domain_name)
#
# Arg(s):
#    load_balancer_name - 
#    certificate_name - 
#    certificate_domain_name - 
#
#
#>
######################################################################
p6_aws_lightsail_load_balancer_tls_certificate_create() {
    local load_balancer_name="$1"
    local certificate_name="$2"
    local certificate_domain_name="$3"
    shift 3

    p6_run_write_cmd aws lightsail create-load-balancer-tls-certificate --load-balancer-name $load_balancer_name --certificate-name $certificate_name --certificate-domain-name $certificate_domain_name "$@"
}