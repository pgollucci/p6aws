######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_budget_from_resource_disassociate(budget_name, resource_id)
#
#  Args:
#	budget_name - 
#	resource_id - 
#
#>
######################################################################
p6_aws_servicecatalog_budget_from_resource_disassociate() {
    local budget_name="$1"
    local resource_id="$2"
    shift 2

    p6_run_read_cmd aws servicecatalog disassociate-budget-from-resource --budget-name $budget_name --resource-id $resource_id "$@"
}