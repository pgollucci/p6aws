######################################################################
#<
#
# Function:
#      = p6_aws_emr_applications_install(cluster_id, applications)
#
# Arg(s):
#    cluster_id - 
#    applications - 
#
#
#>
######################################################################
p6_aws_emr_applications_install() {
    local cluster_id="$1"
    local applications="$2"
    shift 2

    p6_run_write_cmd aws emr install-applications --cluster-id $cluster_id --applications $applications "$@"
}