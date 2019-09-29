######################################################################
#<
#
# Function:
#      = p6_aws_cloudhsmv2_hsm_delete(cluster_id)
#
# Arg(s):
#    cluster_id - 
#
#
#>
######################################################################
p6_aws_cloudhsmv2_hsm_delete() {
    local cluster_id="$1"
    shift 1

    p6_run_write_cmd aws cloudhsmv2 delete-hsm --cluster-id $cluster_id "$@"
}