######################################################################
#<
#
# Function:
#      = p6_aws_rds_tags_for_resource_list(resource_name)
#
# Arg(s):
#    resource_name - 
#
#
#>
######################################################################
p6_aws_rds_tags_for_resource_list() {
    local resource_name="$1"
    shift 1

    p6_run_read_cmd aws rds list-tags-for-resource --resource-name $resource_name "$@"
}