######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_constraint_create(portfolio_id, product_id, parameters, type)
#
# Arg(s):
#    portfolio_id - 
#    product_id - 
#    parameters - 
#    type - 
#
#
#>
######################################################################
p6_aws_servicecatalog_constraint_create() {
    local portfolio_id="$1"
    local product_id="$2"
    local parameters="$3"
    local type="$4"
    shift 4

    p6_run_write_cmd aws servicecatalog create-constraint --portfolio-id $portfolio_id --product-id $product_id --parameters $parameters --type $type "$@"
}