######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_expression_delete(domain_name, expression_name)
#
#  Args:
#	domain_name - 
#	expression_name - 
#
#>
######################################################################
p6_aws_cloudsearch_expression_delete() {
    local domain_name="$1"
    local expression_name="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch delete-expression --domain-name $domain_name --expression-name $expression_name "$@"
}