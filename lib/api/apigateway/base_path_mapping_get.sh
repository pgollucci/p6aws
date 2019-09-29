######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_base_path_mapping_get(domain_name, base_path)
#
# Arg(s):
#    domain_name - 
#    base_path - 
#
#
#>
######################################################################
p6_aws_apigateway_base_path_mapping_get() {
    local domain_name="$1"
    local base_path="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-base-path-mapping --domain-name $domain_name --base-path $base_path "$@"
}