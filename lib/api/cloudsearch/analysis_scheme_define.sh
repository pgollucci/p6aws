p6_aws_cloudsearch_analysis_scheme_define() {
    local domain_name="$1"
    local analysis_scheme="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch define-analysis-scheme --domain-name $domain_name --analysis-scheme $analysis_scheme "$@"
}
