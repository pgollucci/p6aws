######################################################################
#<
#
# Function:
#      = p6_aws_neptune_db_subnet_group_modify(db_subnet_group_name, subnet_ids)
#
# Arg(s):
#    db_subnet_group_name - 
#    subnet_ids - 
#
#
#>
######################################################################
p6_aws_neptune_db_subnet_group_modify() {
    local db_subnet_group_name="$1"
    local subnet_ids="$2"
    shift 2

    p6_run_write_cmd aws neptune modify-db-subnet-group --db-subnet-group-name $db_subnet_group_name --subnet-ids $subnet_ids "$@"
}