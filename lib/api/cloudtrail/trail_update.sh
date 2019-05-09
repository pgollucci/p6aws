p6_aws_cloudtrail_trail_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws cloudtrail update-trail --name $name "$@"
}
