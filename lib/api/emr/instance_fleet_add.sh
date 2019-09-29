######################################################################
#<
#
# Function:
#      = p6_aws_emr_instance_fleet_add(cluster_id, instance_fleet)
#
# Arg(s):
#    cluster_id - 
#    instance_fleet - 
#
#
#>
######################################################################
p6_aws_emr_instance_fleet_add() {
    local cluster_id="$1"
    local instance_fleet="$2"
    shift 2

    p6_run_write_cmd aws emr add-instance-fleet --cluster-id $cluster_id --instance-fleet $instance_fleet "$@"
}