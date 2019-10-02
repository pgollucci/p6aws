######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_expressions_describe(domain_name)
#
#  Args:
#	domain_name - 
#
#>
######################################################################
p6_aws_cloudsearch_expressions_describe() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws cloudsearch describe-expressions --domain-name $domain_name "$@"
}