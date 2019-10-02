######################################################################
#<
#
# Function:
#	p6_aws_ram_resource_share_associations_get(association_type)
#
#  Args:
#	association_type - 
#
#>
######################################################################
p6_aws_ram_resource_share_associations_get() {
    local association_type="$1"
    shift 1

    p6_run_read_cmd aws ram get-resource-share-associations --association-type $association_type "$@"
}