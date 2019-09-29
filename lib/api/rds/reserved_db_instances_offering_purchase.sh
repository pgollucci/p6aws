######################################################################
#<
#
# Function:
#      = p6_aws_rds_reserved_db_instances_offering_purchase(reserved_db_instances_offering_id)
#
# Arg(s):
#    reserved_db_instances_offering_id - 
#
#
#>
######################################################################
p6_aws_rds_reserved_db_instances_offering_purchase() {
    local reserved_db_instances_offering_id="$1"
    shift 1

    p6_run_write_cmd aws rds purchase-reserved-db-instances-offering --reserved-db-instances-offering-id $reserved_db_instances_offering_id "$@"
}