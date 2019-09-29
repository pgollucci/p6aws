######################################################################
#<
#
# Function:
#      = p6_aws_cloudsearch_service_access_policies_describe(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_cloudsearch_service_access_policies_describe() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws cloudsearch describe-service-access-policies --domain-name $domain_name "$@"
}