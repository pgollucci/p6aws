######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_suggesters_build(domain_name)
#
#  Args:
#	domain_name - 
#
#>
######################################################################
p6_aws_cloudsearch_suggesters_build() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws cloudsearch build-suggesters --domain-name $domain_name "$@"
}