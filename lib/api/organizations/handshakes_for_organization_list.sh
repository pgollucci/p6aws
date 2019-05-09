p6_aws_organizations_handshakes_for_organization_list() {

    p6_run_read_cmd aws organizations list-handshakes-for-organization "$@"
}
