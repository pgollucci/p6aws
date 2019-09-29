p6_aws_cloudtrail_global_service_events() {
        local name="$1"
        shift 1

    cond_log_and_run aws cloudtrail update-trail --name $name --include-global-service-events "$@"
}

p6_aws_cloudtrail_multi_region_trail() {
        local name="$1"
        shift 1

    cond_log_and_run aws cloudtrail update-trail --name $name --is-multi-region-trail "$@"
}

p6_aws_cloudtrail_log_file_validation() {
        local name="$1"
        shift 1

    cond_log_and_run aws cloudtrail update-trail --name $name --enable-log-file-validation "$@"
}

p6_aws_cloudtrail_organization_trail() {
        local name="$1"
        shift 1

    cond_log_and_run aws cloudtrail update-trail --name $name --is-organization-trail "$@"
}

