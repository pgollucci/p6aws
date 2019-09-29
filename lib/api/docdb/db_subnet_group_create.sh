######################################################################
#<
#
# Function:
#      = p6_aws_docdb_db_subnet_group_create(db_subnet_group_name, db_subnet_group_description, subnet_ids)
#
# Arg(s):
#    db_subnet_group_name - 
#    db_subnet_group_description - 
#    subnet_ids - 
#
#
#>
######################################################################
p6_aws_docdb_db_subnet_group_create() {
    local db_subnet_group_name="$1"
    local db_subnet_group_description="$2"
    local subnet_ids="$3"
    shift 3

    p6_run_write_cmd aws docdb create-db-subnet-group --db-subnet-group-name $db_subnet_group_name --db-subnet-group-description $db_subnet_group_description --subnet-ids $subnet_ids "$@"
}