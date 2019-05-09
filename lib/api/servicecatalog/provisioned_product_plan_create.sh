p6_aws_servicecatalog_provisioned_product_plan_create() {
    local plan_name="$1"
    local plan_type="$2"
    local product_id="$3"
    local provisioned_product_name="$4"
    local provisioning_artifact_id="$5"
    shift 5

    p6_log_or_run aws servicecatalog create-provisioned-product-plan --plan-name $plan_name --plan-type $plan_type --product-id $product_id --provisioned-product-name $provisioned_product_name --provisioning-artifact-id $provisioning_artifact_id "$@"
}
