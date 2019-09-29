######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_portfolio_share_accept(portfolio_id)
#
# Arg(s):
#    portfolio_id - 
#
#
#>
######################################################################
p6_aws_servicecatalog_portfolio_share_accept() {
    local portfolio_id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog accept-portfolio-share --portfolio-id $portfolio_id "$@"
}