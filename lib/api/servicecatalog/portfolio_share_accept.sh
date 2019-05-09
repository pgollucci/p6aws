p6_aws_servicecatalog_portfolio_share_accept() {
    local portfolio_id="$1"
    shift 1

    p6_log_or_run aws servicecatalog accept-portfolio-share --portfolio-id $portfolio_id "$@"
}
