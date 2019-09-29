######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_domain_create(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_lightsail_domain_create() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail create-domain --domain-name $domain_name "$@"
}