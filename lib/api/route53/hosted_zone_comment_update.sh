p6_aws_route53_hosted_zone_comment_update() {
    local id="$1"
    shift 1

    p6_log_or_run aws route53 update-hosted-zone-comment --id $id "$@"
}
