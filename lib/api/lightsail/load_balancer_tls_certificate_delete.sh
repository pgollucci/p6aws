######################################################################
#<
#
# Function:
#	p6_aws_lightsail_load_balancer_tls_certificate_delete(load_balancer_name, certificate_name)
#
#  Args:
#	load_balancer_name - 
#	certificate_name - 
#
#>
######################################################################
p6_aws_lightsail_load_balancer_tls_certificate_delete() {
    local load_balancer_name="$1"
    local certificate_name="$2"
    shift 2

    p6_run_write_cmd aws lightsail delete-load-balancer-tls-certificate --load-balancer-name $load_balancer_name --certificate-name $certificate_name "$@"
}