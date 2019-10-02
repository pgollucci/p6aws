######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_constraint_describe(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_servicecatalog_constraint_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog describe-constraint --id $id "$@"
}