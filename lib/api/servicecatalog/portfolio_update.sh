p6_aws_servicecatalog_portfolio_update() {
    local id="$1"
    shift 1

    p6_log_or_run aws servicecatalog update-portfolio --id $id "$@"
}
