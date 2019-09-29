######################################################################
#<
#
# Function:
#      = p6_aws_cloudsearch_documents_index(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_cloudsearch_documents_index() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws cloudsearch index-documents --domain-name $domain_name "$@"
}