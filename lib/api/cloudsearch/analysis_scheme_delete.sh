######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_analysis_scheme_delete(domain_name, analysis_scheme_name)
#
#  Args:
#	domain_name - 
#	analysis_scheme_name - 
#
#>
######################################################################
p6_aws_cloudsearch_analysis_scheme_delete() {
    local domain_name="$1"
    local analysis_scheme_name="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch delete-analysis-scheme --domain-name $domain_name --analysis-scheme-name $analysis_scheme_name "$@"
}