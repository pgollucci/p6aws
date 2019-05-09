p6_aws_emr_applications_install() {
    local cluster_id="$1"
    local applications="$2"
    shift 2

    p6_log_or_run aws emr install-applications --cluster-id $cluster_id --applications $applications "$@"
}
