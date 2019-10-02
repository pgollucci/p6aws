######################################################################
#<
#
# Function:
#	p6_aws_cloudhsmv2_hsm_create(cluster_id, availability_zone)
#
#  Args:
#	cluster_id - 
#	availability_zone - 
#
#>
######################################################################
p6_aws_cloudhsmv2_hsm_create() {
    local cluster_id="$1"
    local availability_zone="$2"
    shift 2

    p6_run_write_cmd aws cloudhsmv2 create-hsm --cluster-id $cluster_id --availability-zone $availability_zone "$@"
}