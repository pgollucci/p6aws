######################################################################
#<
#
# Function:
#      = p6_aws_sdb_attributes_get(domain_name, item_name)
#
# Arg(s):
#    domain_name - 
#    item_name - 
#
#
#>
######################################################################
p6_aws_sdb_attributes_get() {
    local domain_name="$1"
    local item_name="$2"
    shift 2

    p6_run_read_cmd aws sdb get-attributes --domain-name $domain_name --item-name $item_name "$@"
}