######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_suggester_define(domain_name, suggester)
#
#  Args:
#	domain_name - 
#	suggester - 
#
#>
######################################################################
p6_aws_cloudsearch_suggester_define() {
    local domain_name="$1"
    local suggester="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch define-suggester --domain-name $domain_name --suggester $suggester "$@"
}