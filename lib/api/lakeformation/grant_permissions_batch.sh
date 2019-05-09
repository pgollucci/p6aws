p6_aws_lakeformation_grant_permissions_batch() {
    local entries="$1"
    shift 1

    p6_run_write_cmd aws lakeformation batch-grant-permissions --entries $entries "$@"
}
