p6_aws_servicecatalog_portfolio_share_delete() {
    local portfolio_id="$1"
    shift 1

    p6_log_or_run aws servicecatalog delete-portfolio-share --portfolio-id $portfolio_id "$@"
}
