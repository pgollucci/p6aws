######################################################################
#<
#
# Function:
#      = p6_aws_sdb_put_attributes_batch(domain_name, items)
#
# Arg(s):
#    domain_name - 
#    items - 
#
#
#>
######################################################################
p6_aws_sdb_put_attributes_batch() {
    local domain_name="$1"
    local items="$2"
    shift 2

    p6_run_write_cmd aws sdb batch-put-attributes --domain-name $domain_name --items $items "$@"
}