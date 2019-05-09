p6_aws_servicecatalog_portfolio_access_list() {
    local portfolio_id="$1"
    shift 1

    p6_log_and_run aws servicecatalog list-portfolio-access --portfolio-id $portfolio_id "$@"
}
