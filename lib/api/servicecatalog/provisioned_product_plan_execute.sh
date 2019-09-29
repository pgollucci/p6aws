######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_provisioned_product_plan_execute(plan_id)
#
# Arg(s):
#    plan_id - 
#
#
#>
######################################################################
p6_aws_servicecatalog_provisioned_product_plan_execute() {
    local plan_id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog execute-provisioned-product-plan --plan-id $plan_id "$@"
}