######################################################################
#<
#
# Function:
#	p6_aws_workdocs_labels_delete(resource_id)
#
#  Args:
#	resource_id - 
#
#>
######################################################################
p6_aws_workdocs_labels_delete() {
    local resource_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs delete-labels --resource-id $resource_id "$@"
}