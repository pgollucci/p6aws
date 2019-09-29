######################################################################
#<
#
# Function:
#      = p6_aws_dms_replication_instance_create(replication_instance_identifier, replication_instance_class)
#
# Arg(s):
#    replication_instance_identifier - 
#    replication_instance_class - 
#
#
#>
######################################################################
p6_aws_dms_replication_instance_create() {
    local replication_instance_identifier="$1"
    local replication_instance_class="$2"
    shift 2

    p6_run_write_cmd aws dms create-replication-instance --replication-instance-identifier $replication_instance_identifier --replication-instance-class $replication_instance_class "$@"
}