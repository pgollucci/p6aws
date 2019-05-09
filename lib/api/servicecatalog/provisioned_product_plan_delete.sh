p6_aws_servicecatalog_provisioned_product_plan_delete() {
    local plan_id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog delete-provisioned-product-plan --plan-id $plan_id "$@"
}
