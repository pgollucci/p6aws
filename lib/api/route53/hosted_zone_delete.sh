p6_aws_route53_hosted_zone_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws route53 delete-hosted-zone --id $id "$@"
}
