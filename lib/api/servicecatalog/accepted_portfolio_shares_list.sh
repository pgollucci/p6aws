######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_accepted_portfolio_shares_list()
#
#
#
#>
######################################################################
p6_aws_servicecatalog_accepted_portfolio_shares_list() {

    p6_run_read_cmd aws servicecatalog list-accepted-portfolio-shares "$@"
}