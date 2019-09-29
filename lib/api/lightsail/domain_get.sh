######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_domain_get(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_lightsail_domain_get() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-domain --domain-name $domain_name "$@"
}