p6_aws_amplify_domain_association_delete() {
    local app_id="$1"
    local domain_name="$2"
    shift 2

    p6_run_write_cmd aws amplify delete-domain-association --app-id $app_id --domain-name $domain_name "$@"
}
