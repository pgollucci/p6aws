######################################################################
#<
#
# Function:
#	p6_aws_sdb_attributes_put(domain_name, item_name, attributes)
#
#  Args:
#	domain_name - 
#	item_name - 
#	attributes - 
#
#>
######################################################################
p6_aws_sdb_attributes_put() {
    local domain_name="$1"
    local item_name="$2"
    local attributes="$3"
    shift 3

    p6_run_write_cmd aws sdb put-attributes --domain-name $domain_name --item-name $item_name --attributes $attributes "$@"
}