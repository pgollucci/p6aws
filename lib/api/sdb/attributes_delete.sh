######################################################################
#<
#
# Function:
#      = p6_aws_sdb_attributes_delete(domain_name, item_name)
#
# Arg(s):
#    domain_name - 
#    item_name - 
#
#
#>
######################################################################
p6_aws_sdb_attributes_delete() {
    local domain_name="$1"
    local item_name="$2"
    shift 2

    p6_run_write_cmd aws sdb delete-attributes --domain-name $domain_name --item-name $item_name "$@"
}