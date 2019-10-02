######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_index_field_delete(domain_name, index_field_name)
#
#  Args:
#	domain_name - 
#	index_field_name - 
#
#>
######################################################################
p6_aws_cloudsearch_index_field_delete() {
    local domain_name="$1"
    local index_field_name="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch delete-index-field --domain-name $domain_name --index-field-name $index_field_name "$@"
}