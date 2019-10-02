######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_constraint_delete(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_servicecatalog_constraint_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog delete-constraint --id $id "$@"
}