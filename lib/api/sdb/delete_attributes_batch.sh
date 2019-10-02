######################################################################
#<
#
# Function:
#	p6_aws_sdb_delete_attributes_batch(domain_name, items)
#
#  Args:
#	domain_name - 
#	items - 
#
#>
######################################################################
p6_aws_sdb_delete_attributes_batch() {
    local domain_name="$1"
    local items="$2"
    shift 2

    p6_run_write_cmd aws sdb batch-delete-attributes --domain-name $domain_name --items $items "$@"
}