######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_budget_with_resource_associate(budget_name, resource_id)
#
# Arg(s):
#    budget_name - 
#    resource_id - 
#
#
#>
######################################################################
p6_aws_servicecatalog_budget_with_resource_associate() {
    local budget_name="$1"
    local resource_id="$2"
    shift 2

    p6_run_read_cmd aws servicecatalog associate-budget-with-resource --budget-name $budget_name --resource-id $resource_id "$@"
}