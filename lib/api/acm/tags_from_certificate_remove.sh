p6_aws_acm_tags_from_certificate_remove() {
    local certificate_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws acm remove-tags-from-certificate --certificate-arn $certificate_arn --tags $tags "$@"
}
