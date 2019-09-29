######################################################################
#<
#
# Function:
#      = p6_aws_cloudsearch_suggesters_describe(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_cloudsearch_suggesters_describe() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws cloudsearch describe-suggesters --domain-name $domain_name "$@"
}