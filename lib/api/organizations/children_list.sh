######################################################################
#<
#
# Function:
#      = p6_aws_organizations_children_list(parent_id, child_type)
#
# Arg(s):
#    parent_id - 
#    child_type - 
#
#
#>
######################################################################
p6_aws_organizations_children_list() {
    local parent_id="$1"
    local child_type="$2"
    shift 2

    p6_run_read_cmd aws organizations list-children --parent-id $parent_id --child-type $child_type "$@"
}