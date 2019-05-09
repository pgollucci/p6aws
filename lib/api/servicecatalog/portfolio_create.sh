p6_aws_servicecatalog_portfolio_create() {
    local display_name="$1"
    local provider_name="$2"
    shift 2

    p6_run_write_cmd aws servicecatalog create-portfolio --display-name $display_name --provider-name $provider_name "$@"
}
