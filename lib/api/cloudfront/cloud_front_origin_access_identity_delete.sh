p6_aws_cloudfront_cloud_front_origin_access_identity_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws cloudfront delete-cloud-front-origin-access-identity --id $id "$@"
}
