######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_domain_name_update(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_apigateway_domain_name_update() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws apigateway update-domain-name --domain-name $domain_name "$@"
}