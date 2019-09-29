######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_portfolio_share_reject(portfolio_id)
#
# Arg(s):
#    portfolio_id - 
#
#
#>
######################################################################
p6_aws_servicecatalog_portfolio_share_reject() {
    local portfolio_id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog reject-portfolio-share --portfolio-id $portfolio_id "$@"
}