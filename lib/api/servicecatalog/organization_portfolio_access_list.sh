p6_aws_servicecatalog_organization_portfolio_access_list() {
    local portfolio_id="$1"
    local organization_node_type="$2"
    shift 2

    p6_run_read_cmd aws servicecatalog list-organization-portfolio-access --portfolio-id $portfolio_id --organization-node-type $organization_node_type "$@"
}
