######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_constraint_update(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_servicecatalog_constraint_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog update-constraint --id $id "$@"
}