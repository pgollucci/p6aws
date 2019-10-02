######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_tag_option_delete(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_servicecatalog_tag_option_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog delete-tag-option --id $id "$@"
}