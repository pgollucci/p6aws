######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_expression_define(domain_name, expression, name)
#
#  Args:
#	domain_name - 
#	expression - 
#	name - 
#
#>
######################################################################
p6_aws_cloudsearch_expression_define() {
    local domain_name="$1"
    local expression="$2"
    local name="$3"
    shift 3

    p6_run_write_cmd aws cloudsearch define-expression --domain-name $domain_name --expression $expression --name $name "$@"
}