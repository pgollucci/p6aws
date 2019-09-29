######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_provisioned_product_plan_describe(plan_id)
#
# Arg(s):
#    plan_id - 
#
#
#>
######################################################################
p6_aws_servicecatalog_provisioned_product_plan_describe() {
    local plan_id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog describe-provisioned-product-plan --plan-id $plan_id "$@"
}