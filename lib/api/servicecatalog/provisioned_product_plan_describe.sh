p6_aws_servicecatalog_provisioned_product_plan_describe() {
    local plan_id="$1"
    shift 1

    p6_log_and_run aws servicecatalog describe-provisioned-product-plan --plan-id $plan_id "$@"
}
