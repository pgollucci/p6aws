######################################################################
#<
#
# Function:
#      = p6_aws_dms_replication_subnet_group_create(replication_subnet_group_identifier, replication_subnet_group_description, subnet_ids)
#
# Arg(s):
#    replication_subnet_group_identifier - 
#    replication_subnet_group_description - 
#    subnet_ids - 
#
#
#>
######################################################################
p6_aws_dms_replication_subnet_group_create() {
    local replication_subnet_group_identifier="$1"
    local replication_subnet_group_description="$2"
    local subnet_ids="$3"
    shift 3

    p6_run_write_cmd aws dms create-replication-subnet-group --replication-subnet-group-identifier $replication_subnet_group_identifier --replication-subnet-group-description $replication_subnet_group_description --subnet-ids $subnet_ids "$@"
}